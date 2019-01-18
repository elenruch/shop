<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => App\Http\Middleware\LocaleMiddleware::getLocale()], function () {
    Route::get('/', 'BaseController@getIndex');
    Route::get('/catalog', 'ProductController@getCatalog');
    Route::get('/catalog/{id}', 'ProductController@getCatalog');
    Route::get('/catalog/{category_id}/{id}', 'ProductController@getProductPage');
    Route::get('/search', 'ProductController@search');
    Route::get('/ajax/{id}', 'AjaxController@getProduct');

    Route::get('/chat/get', 'AjaxController@chatGet');
    Route::post('/chat/send', 'AjaxController@chatSend');

    Auth::routes();

    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/basket', 'BasketController@getIndex');
    Route::post('basket/order', 'OrderController@postIndex');
    Route::get('/basket/delete/{id}', 'BasketController@getDelete');
    Route::get('{id}', 'BaseController@getStatic');
});

Route::get('setlocale/{lang}', function ($lang) {
    $referer = Redirect::back()->getTargetUrl();
    $parse_url = parse_url($referer, PHP_URL_PATH);

    $segments = explode('/', $parse_url);

    if (in_array($segments[1], App\Http\Middleware\LocaleMiddleware::$languages)) {
        unset($segments[1]);
    }

    if ($lang != App\Http\Middleware\LocaleMiddleware::$mainLanguage) {
        array_splice($segments, 1, 0, $lang);
    }

    $url = Request::root() . implode("/", $segments);

    if (parse_url($referer, PHP_URL_QUERY)) {
        $url = $url . '?' . parse_url($referer, PHP_URL_QUERY);
    }

    return redirect($url); //Перенаправляем назад на ту же страницу
})->name('setlocale');