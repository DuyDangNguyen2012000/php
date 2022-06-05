@extends('admin.layouts.index')


@section('content')
<h1 class="h3 mb-2 text-gray-800">Thêm nhân viên</h1>
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
        <form action="{{ route('staff.add') }}" method="POST" enctype="multipart/form-data" id="myform">

            @csrf
            <div class="form-group">
                <label for="name">Tên nhân viên: <span class="text-danger">*</span></label>
                <input type="text" class="form-control" placeholder="Nhập tên nhân viên" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email: <span class="text-danger">*</span></label>
                <input type="email" class="form-control" placeholder="Nhập email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu: <span class="text-danger">*</span></label>
                <input type="password" class="form-control" placeholder="Nhập mật khẩu" id="password" name="password" required>
            </div>
            <button type="button" class="btn btn-primary" onclick="myFunction()">Thêm</button>
          </form>
    </div>
</div>
<script>
function myFunction() {
  let text;
  if (confirm("Bạn có chắc chắn!") == true) {
    document.getElementById('myform').submit();
  } else {
  }
}
</script>
@endsection
