@extends('layouts.app')
@section('title', 'إدارة المدونات')
@section('content')
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h1>المدونات</h1>
    <div>
      <a class="btn btn-primary" href="{{ route('admin.blogs.create') }}">إضافة جديدة</a>
      <a class="btn btn-secondary" href="{{ route('admin.blogs.trash') }}">المحذوفات</a>
    </div>
  </div>
  <table class="table">
    <thead><tr><th>العنوان</th><th>الفئات</th><th>الصورة</th><th>تحكم</th></tr></thead>
    <tbody>
    @foreach($blogs as $blog)
      <tr>
        <td>{{ $blog->title }}</td>
        <td>
          @foreach($blog->categories as $cat)
            <span class="badge bg-info">{{ $cat->name }}</span>
          @endforeach
        </td>
        <td><img src="{{ asset('storage/' . $blog->image_path) }}" alt="" width="80"></td>
        <td>
          <a class="btn btn-sm btn-warning" href="{{ route('admin.blogs.edit', $blog) }}">تعديل</a>
          <form action="{{ route('admin.blogs.destroy', $blog) }}" method="POST" class="d-inline">
            @csrf @method('DELETE')
            <button class="btn btn-sm btn-danger">حذف ناعم</button>
          </form>
        </td>
      </tr>
    @endforeach
    </tbody>
  </table>
  {{ $blogs->links() }}
@endsection
