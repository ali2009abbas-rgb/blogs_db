@extends('layouts.app')
@section('title', 'المحذوفات')
@section('content')
  <h1>المحذوفات (Soft Delete)</h1>
  <table class="table">
    <thead><tr><th>العنوان</th><th>تحكم</th></tr></thead>
    <tbody>
    @foreach($blogs as $blog)
      <tr>
        <td>{{ $blog->title }}</td>
        <td>
          <form action="{{ route('admin.blogs.restore', $blog->id) }}" method="POST" class="d-inline">
            @csrf <button class="btn btn-sm btn-success">استعادة</button>
          </form>
          <form action="{{ route('admin.blogs.force', $blog->id) }}" method="POST" class="d-inline">
            @csrf @method('DELETE')
            <button class="btn btn-sm btn-danger">حذف نهائي</button>
          </form>
        </td>
      </tr>
    @endforeach
    </tbody>
  </table>
  {{ $blogs->links() }}
@endsection
