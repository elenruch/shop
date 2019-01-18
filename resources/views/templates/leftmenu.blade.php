<h2 class="my-4"><a href="{{asset(App\Http\Middleware\LocaleMiddleware::getLocale() . '/')}}">RShop</a></h2>
<form class="form-inline my-2 my-lg-0 mr-lg-2 print-none" action="{{ \App\Http\Middleware\LocaleMiddleware::getForURL() }}/search">
    <div class="input-group">
        <input class="form-control" type="text" name="s" value="{{$search_string}}">
        <span class="input-group-append">
                <button class="btn btn-default" type="submit">
                  {{ __('messages.search') }}
                </button>
              </span>
    </div>
</form>
<br/>
<div class="list-group print-none">
    @foreach($v_catalogs as $one)
        <a href="{{asset(App\Http\Middleware\LocaleMiddleware::getLocale() . '/catalog/'.$one->id)}}" class="list-group-item">
            {{ $one->{'name_' . (App\Http\Middleware\LocaleMiddleware::getLocale() === null ? 'ru' : App\Http\Middleware\LocaleMiddleware::getLocale())} }}
        </a>
    @endforeach
</div>
<div class="adw">
    <img src="/img/adw1.png">
</div>