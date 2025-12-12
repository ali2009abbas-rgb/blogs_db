<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Blog extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['title', 'content', 'image_path'];

    public function categories()
    {
        return $this->belongsToMany(Category::class, 'blog_category');
    }

    public function favoredByUsers()
    {
        return $this->belongsToMany(User::class, 'blog_user_favorite')->withTimestamps();
    }
}
