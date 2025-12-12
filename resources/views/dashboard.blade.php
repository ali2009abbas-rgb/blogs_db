@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
<div class="container">
    <h1 class="mb-4">لوحة التحكم</h1>

    <div class="row">
        <div class="col-md-6 mb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">إدارة المدونات</h5>
                    <p class="card-text">إضافة، تعديل، حذف واسترجاع المدونات.</p>
                    <a href="{{ route('admin.blogs.index') }}" class="btn btn-primary">اذهب للمدونات</a>
                </div>
            </div>
        </div>

        <div class="col-md-6 mb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">إدارة الفئات</h5>
                    <p class="card-text">إضافة، تعديل وحذف الفئات.</p>
                    <a href="{{ route('admin.categories.index') }}" class="btn btn-secondary">اذهب للفئات</a>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-4">
        <a href="{{ route('home') }}" class="btn btn-outline-info">العودة للواجهة الرئيسية</a>
    </div>
</div>
@endsection

