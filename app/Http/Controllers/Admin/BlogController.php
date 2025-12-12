<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreBlogRequest;
use App\Http\Requests\UpdateBlogRequest;
use App\Models\Blog;
use App\Models\Category;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{
    public function index()
    {
        $blogs = Blog::with('categories')->latest()->paginate(10);
        return view('admin.blogs.index', compact('blogs'));
    }

    public function create()
    {
        $categories = Category::all();
        return view('admin.blogs.create', compact('categories'));
    }

    public function store(StoreBlogRequest $request)
    {
        $validated = $request->validated();

        $path = $request->file('image')->store('blogs', 'public');

        $blog = Blog::create([
            'title' => $validated['title'],
            'content' => $validated['content'],
            'image_path' => $path,
        ]);

        $blog->categories()->sync($validated['categories'] ?? []);

        return redirect()->route('admin.blogs.index')->with('success', 'Blog created');
    }

    public function edit(Blog $blog)
    {
        $categories = Category::all();
        $selected = $blog->categories()->pluck('id')->toArray();
        return view('admin.blogs.edit', compact('blog','categories','selected'));
    }

    public function update(UpdateBlogRequest $request, Blog $blog)
    {
        $validated = $request->validated();

        if ($request->hasFile('image')) {
            if ($blog->image_path && Storage::disk('public')->exists($blog->image_path)) {
                Storage::disk('public')->delete($blog->image_path);
            }
            $blog->image_path = $request->file('image')->store('blogs', 'public');
        }

        $blog->update([
            'title' => $validated['title'],
            'content' => $validated['content'],
            'image_path' => $blog->image_path,
        ]);

        $blog->categories()->sync($validated['categories'] ?? []);

        return redirect()->route('admin.blogs.index')->with('success', 'Blog updated');
    }

    public function destroy(Blog $blog)
    {
        $blog->delete();
        return back()->with('success', 'Blog soft-deleted');
    }

    public function trash()
    {
        $blogs = Blog::onlyTrashed()->paginate(10);
        return view('admin.blogs.trash', compact('blogs'));
    }

    public function restore($id)
    {
        $blog = Blog::onlyTrashed()->findOrFail($id);
        $blog->restore();
        return back()->with('success', 'Blog restored');
    }

    public function forceDelete($id)
    {
        $blog = Blog::onlyTrashed()->findOrFail($id);
        if ($blog->image_path && Storage::disk('public')->exists($blog->image_path)) {
            Storage::disk('public')->delete($blog->image_path);
        }
        $blog->forceDelete();
        return back()->with('success', 'Blog permanently deleted');
    }
}
