<h2 class="my-4"><a href="{{asset('/')}}">Zigoro Shop</a></h2>
<form class="form-inline my-2 my-lg-0 mr-lg-2" action="/search">
    <div class="input-group">
        <input class="form-control" type="text" name="s" value="{{$search_string}}">
        <span class="input-group-append">
                <button class="btn btn-default" type="submit">
                  search
                </button>
              </span>
    </div>
</form>
<br/>
<div class="list-group">
    @foreach($v_catalogs as $one)
        <a href="{{asset('/catalog/'.$one->id)}}" class="list-group-item">{{$one->name}}</a>
    @endforeach
</div>
