@extends('layouts.base')
@section('content')
    <div class="row base_row">
        <h1>{{$product->name}}</h1><br />
        <img src="{{asset('uploads/thumb/'.$product->picture)}}" alt="">

        <div class="body">{!! $product->body !!}</div>

        <a href="#html" id="good-{{$product->id}}-{{$product->price}}" class="btn btn-sm btn-primary btn-cart addCart"> <span class="glyphicon glyphicon-list"></span> Add to cart </a>
    </div>
@endsection()