@extends('admin.layouts.index')


@section('content')
<h1 class="h3 mb-2 text-gray-800">Sửa nhân viên</h1>
@if(Session::has('invalid'))
    <div class="alert alert-danger alert-dismissible">
            <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
            {{Session::get('invalid')}}
    </div>
@endif
@if(Session::has('success'))
    <div class="alert alert-success alert-dismissible">
            <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
            {{Session::get('success')}}
    </div>
@endif
<div class="row">
    <div class="col-lg-12">
        <form action="{{ route('staff.edit', ['id' => $staff->id_qtv]) }}" method="POST" enctype="multipart/form-data">

            @csrf
            <div class="form-group">
                <label for="name">Tên nhân viên: <span class="text-danger">*</span></label>
                <input type="text" class="form-control" placeholder="Nhập tên nhân viên" id="name" name="name" value="{{ $staff->hoten }}" required>
            </div>
            <div class="form-group">
                <label for="email">Email: <span class="text-danger">*</span></label>
                <input type="email" class="form-control" placeholder="Nhập email" id="email" name="email" value="{{ $staff->email }}" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu: <span class="text-danger">*</span></label>
                <input type="password" class="form-control" placeholder="Nếu muốn sửa thì nhập mật khẩu mới, ngược lại nhập mật khẩu cũ" id="password" name="password" value="{{ $staff->matkhau }}" required>
            </div>
            <button type="submit" class="btn btn-primary">Sửa</button>
          </form>
    </div>
</div>
@endsection