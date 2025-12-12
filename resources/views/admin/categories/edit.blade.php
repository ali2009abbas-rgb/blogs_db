@extends('layouts.app')
@section('title', 'تعديل فئة')
@section('content')
  <h1>تعديل فئة</h1>
  <form action="{{ route('admin.categories.update', $category) }}" method="POST">
    @csrf @method('PUT')
    <div class="mb-3">
      <label>الاسم</label>
      <input type="text" name="name" class="form-control" value="{{ old('name', $category->name) }}">
      @error('name') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <button class="btn btn-primary">تحديث</button>
  </form>
@endsection
