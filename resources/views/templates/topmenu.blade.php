<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <div id="basket">
            <table id="bascets">
                <tbody>
                <tr style="display: none;" class="hPb">
                    <td>Выбрано:</td>
                    <td><span id="totalGoods">0</span> {{ __('messages.products') }}</td>
                    <td>Сумма: &asymp;</td>
                    <td><span id="totalPrice">0</span> {{ __('messages.currency') }}</td>
                </tr>
                <tr style="display: table-row;" class="hPe">
                    <td colspan="2">{{ __('messages.cart_empty') }}</td>
                </tr>
                <tr>
                    <td><a style="display: none;" id="clearBasket" href="#">{{ __('messages.cart_clear') }}</a></td>
                    <td><a style="display: none;" id="checkOut" href="{{asset('basket')}}">{{ __('messages.cart_checkout') }}</a></td>
                </tr>
                </tbody>
            </table>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto" id="picture">
                <li class="nav-item">
                    <a class="nav-link"
                       href="{{asset(App\Http\Middleware\LocaleMiddleware::getLocale() . '/home')}}">{{ __('messages.home') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="{{asset(App\Http\Middleware\LocaleMiddleware::getLocale() . '/about')}}">{{ __('messages.about') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="{{asset(App\Http\Middleware\LocaleMiddleware::getLocale() . '/services')}}">{{ __('messages.services') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="{{asset(App\Http\Middleware\LocaleMiddleware::getLocale() . '/contacts')}}">{{ __('messages.contacts') }}</a>
                </li>
                @include('templates.auth')
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="langDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        {{ App\Http\Middleware\LocaleMiddleware::getLocale() === null ? 'RU' : mb_strtoupper(App\Http\Middleware\LocaleMiddleware::getLocale()) }}
                    </a>
                    <div class="dropdown-menu" aria-labelledby="langDropdown">
                        <a class="dropdown-item" href="{{ route('setlocale', ['lang' => 'ru']) }}">Русский</a>
                        <a class="dropdown-item" href="{{ route('setlocale', ['lang' => 'en']) }}">English</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>