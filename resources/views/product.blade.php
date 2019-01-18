@extends('layouts.base')
@section('content')
    <div class="row base_row">
        <div class="col-md-12">
            <h1>
                {{ $product->{'name_' . (App\Http\Middleware\LocaleMiddleware::getLocale() === null ? 'ru' : App\Http\Middleware\LocaleMiddleware::getLocale())} }}
                <span class="print-version"><i class="fa fa-print"></i></span>
            </h1>
            <img src="{{asset('uploads/thumb/'.$product->picture)}}" alt="">

            <div class="body">
                {!! $product->{'body_' . (App\Http\Middleware\LocaleMiddleware::getLocale() === null ? 'ru' : App\Http\Middleware\LocaleMiddleware::getLocale())} !!}
            </div>

            <a href="#html" id="good-{{$product->id}}-{{$product->price}}" class="btn btn-sm btn-primary btn-cart addCart">
                <span class="glyphicon glyphicon-list"></span> {{ __('messages.add_to_cart') }} </a>
        </div>
    </div>

    <div class="adw">
        <img src="/img/adw2.png">
    </div>
@endsection()