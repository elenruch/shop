@extends('layouts.base')
@section('content')
    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <img class="d-block img-fluid" src="{{asset('img/slide1.jpg')}}" width="900px" height="350px" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="{{asset('img/slide1.jpg')}}" width="900px" height="350px" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="{{asset('img/slide1.jpg')}}" width="900px" height="350px" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="adw">
        <img src="/img/adw2.png">
    </div>

    <div class="row">
        @foreach($lasts as $one)
            <div class="col-lg-4 col-md-6 mb-4">
                @include('templates.product')
            </div>
        @endforeach
    </div>
@endsection()