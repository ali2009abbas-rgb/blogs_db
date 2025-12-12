<?php

use App\Http\Controllers\Admin\BlogController as AdminBlog;
use App\Http\Controllers\Admin\CategoryController as AdminCategory;
use App\Http\Controllers\Frontend\BlogController as FrontBlog;
use App\Http\Controllers\Frontend\FavoriteController as Favorite;
use Illuminate\Support\Facades\Route;

// Frontend routes
Route::get('/', [FrontBlog::class, 'index'])->name('home');
Route::get('/blogs/{blog}', [FrontBlog::class, 'show'])->name('blogs.show');
Route::get('/categories/{category}', [FrontBlog::class, 'byCategory'])->name('categories.filter');

// Favorites (requires auth)
Route::middleware(['auth'])->group(function () {
    Route::post('/favorites/{blog}', [Favorite::class, 'toggle'])->name('favorites.toggle');
    Route::get('/favorites', [Favorite::class, 'index'])->name('favorites.index');
});

// Admin panel (requires auth + admin)
Route::middleware(['auth', 'admin'])->prefix('admin')->name('admin.')->group(function () {
    // Blogs CRUD
    Route::get('/blogs', [AdminBlog::class, 'index'])->name('blogs.index');
    Route::get('/blogs/create', [AdminBlog::class, 'create'])->name('blogs.create');
    Route::post('/blogs', [AdminBlog::class, 'store'])->name('blogs.store');
    Route::get('/blogs/{blog}/edit', [AdminBlog::class, 'edit'])->name('blogs.edit');
    Route::put('/blogs/{blog}', [AdminBlog::class, 'update'])->name('blogs.update');
    Route::delete('/blogs/{blog}', [AdminBlog::class, 'destroy'])->name('blogs.destroy');

    // Trash management
    Route::get('/blogs/trash', [AdminBlog::class, 'trash'])->name('blogs.trash');
    Route::post('/blogs/{id}/restore', [AdminBlog::class, 'restore'])->name('blogs.restore');
    Route::delete('/blogs/{id}/force', [AdminBlog::class, 'forceDelete'])->name('blogs.force');

    // Categories CRUD
    Route::resource('categories', AdminCategory::class)->except(['show']);
});

// Optional: include Breeze routes if not auto-loaded
if (file_exists(__DIR__.'/auth.php')) {
    require __DIR__.'/auth.php';
}

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');
