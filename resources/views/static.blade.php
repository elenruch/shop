@extends('layouts.base')
@section('content')
    <div class="row base_row">
        <h2>{{$obj->name}}</h2>
        <div class="container">
            {!! $obj->body !!}
        </div>
    </div>
@endsection()