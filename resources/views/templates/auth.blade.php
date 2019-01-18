@guest
    <li class="nav-item"><a class="nav-link" href="{{ route('login') }}">{{ __('messages.login') }}</a></li>
    <li class="nav-item"><a class="nav-link" href="{{ route('register') }}">{{ __('messages.register') }}</a></li>
@else
    <li class="nav-item dropdown">
        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" v-pre>
            {{ Auth::user()->name }} <span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
            <li>
                <a href="{{ route('logout') }}"
                   onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    {{ __('messages.logout') }}
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
            </li>
        </ul>
    </li>
@endguest