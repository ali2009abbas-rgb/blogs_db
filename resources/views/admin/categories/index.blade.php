@extends('layouts.app')
@section('title', 'الفئات')
@section('content')
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h1>الفئات</h1>
    <a class="btn btn-primary" href="{{ route('admin.categories.create') }}">إضافة فئة</a>
  </div>
  <table class="table">
    <thead><tr><th>الاسم</th><th>تحكم</th></tr></thead>
    <tbody>
    @foreach($categories as $category)
      <tr>
        <td>{{ $category->name }}</td>
        <td>
          <a class="btn btn-sm btn-warning" href="{{ route('admin.categories.edit', $category) }}">تعديل</a>
          <form action="{{ route('admin.categories.destroy', $category) }}" method="POST" class="d-inline">
            @csrf @method('DELETE')
            <button class="btn btn-sm btn-danger">حذف</button>
          </form>
        </td>
      </tr>
    @endforeach
    </tbody>
  </table>
  {{ $categories->links() }}
@endsection
