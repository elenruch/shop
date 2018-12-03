@extends('layouts.base')
@section('scripts')
    @parent
    <script src="{{asset('js/modal.js')}}"></script>
@endsection
@section('content')
    <form class="form-inline my-2 my-lg-0 mr-lg-2" action="/search">
        <div class="input-group">
            <input class="form-control" type="text" name="s" value="{{$search}}">
            <span class="input-group-append">
                <button class="btn btn-default" type="button">
                  search
                </button>
              </span>
        </div>
    </form>
    <br/>
    <div class="row base_row">
        @if (empty($products))
            @if (mb_strlen($search) < 3)
                <p>Минимальная длина поискового запроса - 3 сивола</p>
            @else
                <p>Ничего не найдено</p>
            @endif
        @else
            @foreach($products as $one)
                <div class="col-lg-4 col-md-6 mb-4">
                    @include('templates.product')
                </div>
            @endforeach
        @endif
    </div>
@endsection()