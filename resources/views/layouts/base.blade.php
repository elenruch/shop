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
                @if (isset($breadcrumbs) && count($breadcrumbs) > 1)
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            @foreach ($breadcrumbs as $crumb)
                                <li class="breadcrumb-item"><a href="{{$crumb['url']}}">{{$crumb['label']}}</a></li>
                            @endforeach
                        </ol>
                    </nav>
                @endif
                @yield('content')
            </div>
        </div>
    </div>
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; elenruch@gmail.com 2018</p>
        </div>
    </footer>
    <div class="chat card shadow<?php if (!isset($_COOKIE['chat-name'])): ?> with-name<?php endif ?>" id="chat">
        <div class="chat-title card-header text-white bg-primary">Онлайн чат</div>
        <div class="chat-messages card-body">
            <ul></ul>
        </div>
        <div class="chat-own card-footer">
            <form action="/chat/send" id="chat-form">
                <input class="form-control mb-3" type="<?php if (!isset($_COOKIE['chat-name'])): ?>text<?php else: ?>hidden<?php endif ?>" name="name" placeholder="Имя" required="required"<?php if (isset($_COOKIE['chat-name'])): ?> value="<?= $_COOKIE['chat-name'] ?>"<?php endif ?>>
                <div class="form-row">
                    <div class="col-sm-9">
                        <textarea class="form-control" name="message" rows="2" placeholder="Сообщение" required="required"></textarea>
                    </div>
                    <div class="col-sm-3">
                        <input class="btn btn-primary btn-sm btn-block" type="submit" value="&raquo;">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('js/jquery.cookie.js')}}"></script>
    <script src="{{asset('js/cart.js')}}"></script>
    @section('scripts')
        <script src="{{asset('js/main.js')}}"></script>
        <script src="{{asset('js/modal.js')}}"></script>
    @show
</div>
</body>
</html>