@extends('layouts.base')
@section('content')
    <div class="row base_row">
        @foreach($products as $one)
            <div class="col-lg-4 col-md-6 mb-4">
                @include('templates.product')
            </div>
        @endforeach
        <p align="center">{!! $products->links() !!}</p>
    </div>
@endsection()