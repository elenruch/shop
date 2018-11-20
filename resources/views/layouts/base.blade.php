<!DOCTYPE html>
<html lang="en">
<head>
    @include('templates.head')
    <link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/shop-homepage.css')}}" rel="stylesheet">
    @section('styles')
    @show
</head>
<body>
<div id="page-wrapper">
@include('templates.topmenu')
<div class="container">
    <div class="row">
        <div class="col-lg-3">
            @include('templates.leftmenu')
        </div>
        <div class="col-lg-9">
            @yield('content')
        </div>
    </div>
</div>
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Mikhalkevich@ya.ru 2018</p>
    </div>
</footer>
<script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('js/jquery.cookie.js')}}"></script>
<script src="{{asset('js/cart.js')}}"></script>
@section('scripts')
<script src="{{asset('js/main.js')}}"></script>
@show
</div>
</body>
</html>