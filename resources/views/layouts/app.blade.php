<!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8">
  <title>@yield('title', 'Blog')</title>
  <meta name="csrf-token" content="{{ csrf_token() }}">
  @vite(['resources/css/app.css','resources/js/app.js'])
</head>
<body class="container py-4">
  <nav class="mb-3">
    <a href="{{ route('home') }}">الرئيسية</a> |
    @auth
      <a href="{{ route('favorites.index') }}">مفضلتي</a> |
      @if(auth()->user()->is_admin)
        <a href="{{ route('admin.blogs.index') }}">لوحة الأدمن</a> |
        <a href="{{ route('admin.categories.index') }}">الفئات</a> |
      @endif
      <form action="{{ route('logout') }}" method="POST" style="display:inline">
        @csrf <button>خروج</button>
      </form>
    @else
      <a href="{{ route('login') }}">دخول</a> | <a href="{{ route('register') }}">تسجيل</a>
    @endauth
  </nav>

  @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
  @endif
  @yield('content')
</body>
</html>
