@extends('layouts.app')
@section('title', 'إضافة فئة')
@section('content')
  <h1>إضافة فئة</h1>
  <form action="{{ route('admin.categories.store') }}" method="POST">
    @csrf
    <div class="mb-3">
      <label>الاسم</label>
      <input type="text" name="name" class="form-control" value="{{ old('name') }}">
      @error('name') <small class="text-danger">{{ $message }}</small> @enderror
    </div>
    <button class="btn btn-primary">حفظ</button>
  </form>
@endsection
