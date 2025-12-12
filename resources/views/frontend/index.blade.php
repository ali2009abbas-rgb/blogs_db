@extends('layouts.app')
@section('title', 'المدونة')
@section('content')
  <h1>كل المدونات</h1>

  <div class="mb-3">
    <strong>فلترة حسب الفئة:</strong>
    @foreach($categories as $cat)
      <a class="badge bg-secondary me-2" href="{{ route('categories.filter', $cat) }}">{{ $cat->name }}</a>
    @endforeach
    <a class="badge bg-info" href="{{ route('home') }}">الكل</a>
  </div>

  <div class="row">
    @foreach($blogs as $blog)
      <div class="col-md-4 mb-3">
        <div class="card">
          <img src="{{ asset('storage/' . $blog->image_path) }}" class="card-img-top" alt="">
          <div class="card-body">
            <h5 class="card-title">{{ $blog->title }}</h5>
            <p class="card-text">{{ Str::limit($blog->content, 100) }}</p>
            @foreach($blog->categories as $cat)
              <span class="badge bg-info">{{ $cat->name }}</span>
            @endforeach
            <div class="mt-2">
              <a class="btn btn-sm btn-primary" href="{{ route('blogs.show', $blog) }}">قراءة المزيد</a>
            </div>
          </div>
        </div>
      </div>
    @endforeach
  </div>

  {{ $blogs->links() }}
@endsection
