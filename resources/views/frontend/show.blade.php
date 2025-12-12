@extends('layouts.app')
@section('title', $blog->title)
@section('content')
  <article>
    <h1>{{ $blog->title }}</h1>
    <img src="{{ asset('storage/' . $blog->image_path) }}" alt="" class="mb-3" width="400">
    <div class="mb-2">
      @foreach($blog->categories as $cat)
        <span class="badge bg-info">{{ $cat->name }}</span>
      @endforeach
    </div>
    <p>{{ $blog->content }}</p>

    @auth
      <form action="{{ route('favorites.toggle', $blog) }}" method="POST">
        @csrf
        <button class="btn {{ $isFav ? 'btn-danger' : 'btn-success' }}">
          {{ $isFav ? 'إزالة من المفضلة' : 'إضافة إلى المفضلة' }}
        </button>
      </form>
    @else
      <p>سجّل الدخول لإضافة هذه المدونة إلى مفضلتك.</p>
    @endauth
  </article>
@endsection
