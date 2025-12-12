@extends('layouts.app')
@section('title', 'إضافة مدونة')
@section('content')
  <h1>إضافة مدونة</h1>
  <form action="{{ route('admin.blogs.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
      <label>العنوان</label>
      <input type="text" name="title" class="form-control" value="{{ old('title') }}">
      @error('title') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <div class="mb-3">
      <label>المحتوى</label>
      <textarea name="content" class="form-control" rows="6">{{ old('content') }}</textarea>
      @error('content') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <div class="mb-3">
      <label>الصورة</label>
      <input type="file" name="image" class="form-control">
      @error('image') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <div class="mb-3">
      <label>الفئات</label>
      <div class="d-flex flex-wrap gap-2">
        @foreach($categories as $cat)
          <label class="me-3">
            <input type="checkbox" name="categories[]" value="{{ $cat->id }}"> {{ $cat->name }}
          </label>
        @endforeach
      </div>
      @error('categories.*') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <button class="btn btn-primary">حفظ</button>
  </form>
@endsection
