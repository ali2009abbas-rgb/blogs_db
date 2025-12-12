<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Category;

class BlogController extends Controller
{
    public function index()
    {
        $blogs = Blog::with('categories')->latest()->paginate(9);
        $categories = Category::all();
        return view('frontend.index', compact('blogs','categories'));
    }

    public function show(Blog $blog)
    {
        $blog->load('categories');
        $isFav = auth()->check()
            ? auth()->user()->favoriteBlogs()->where('blog_id', $blog->id)->exists()
            : false;

        return view('frontend.show', compact('blog','isFav'));
    }

    public function byCategory(Category $category)
    {
        $blogs = $category->blogs()->with('categories')->latest()->paginate(9);
        $categories = Category::all();
        return view('frontend.index', compact('blogs','categories'));
    }
}
