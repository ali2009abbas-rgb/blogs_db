<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Blog;

class FavoriteController extends Controller
{
    public function index()
    {
        $blogs = auth()->user()->favoriteBlogs()->with('categories')->latest()->paginate(9);
        return view('frontend.favorites', compact('blogs'));
    }

    public function toggle(Blog $blog)
    {
        $user = auth()->user();
        $exists = $user->favoriteBlogs()->where('blog_id', $blog->id)->exists();

        if ($exists) {
            $user->favoriteBlogs()->detach($blog->id);
            return back()->with('success', 'Removed from favorites');
        }

        $user->favoriteBlogs()->attach($blog->id);
        return back()->with('success', 'Added to favorites');
    }
}
