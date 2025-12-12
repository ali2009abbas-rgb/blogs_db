@extends('layouts.app')
@section('title', 'تعديل مدونة')
@section('content')
  <h1>تعديل: {{ $blog->title }}</h1>
  <form action="{{ route('admin.blogs.update', $blog) }}" method="POST" enctype="multipart/form-data">
    @csrf @method('PUT')
    <div class="mb-3">
      <label>العنوان</label>
      <input type="text" name="title" class="form-control" value="{{ old('title', $blog->title) }}">
      @error('title') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <div class="mb-3">
      <label>المحتوى</label>
      <textarea name="content" class="form-control" rows="6">{{ old('content', $blog->content) }}</textarea>
      @error('content') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <div class="mb-3">
      <label>الصورة الحالية</label><br>
      <img src="{{ asset('storage/' . $blog->image_path) }}" width="120">
    </div>
    <div class="mb-3">
      <label>تغيير الصورة (اختياري)</label>
      <input type="file" name="image" class="form-control">
      @error('image') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <div class="mb-3">
      <label>الفئات</label>
      <div class="d-flex flex-wrap gap-2">
        @foreach($categories as $cat)
          <label class="me-3">
            <input type="checkbox" name="categories[]" value="{{ $cat->id }}" @checked(in_array($cat->id, $selected))> {{ $cat->name }}
          </label>
        @endforeach
      </div>
    </div>
    <button class="btn btn-primary">تحديث</button>
  </form>
@endsection
