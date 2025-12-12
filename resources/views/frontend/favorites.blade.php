@extends('layouts.app')
@section('title', 'مفضلتي')
@section('content')
  <h1>مفضلتي</h1>
  <div class="row">
    @forelse($blogs as $blog)
      <div class="col-md-4 mb-3">
        <div class="card">
          <img src="{{ asset('storage/' . $blog->image_path) }}" class="card-img-top" alt="">
          <div class="card-body">
            <h5 class="card-title">{{ $blog->title }}</h5>
            <a class="btn btn-sm btn-primary" href="{{ route('blogs.show', $blog) }}">عرض</a>
          </div>
        </div>
      </div>
    @empty
      <p>لا توجد عناصر في المفضلة بعد.</p>
    @endforelse
  </div>
  {{ $blogs->links() }}
@endsection
