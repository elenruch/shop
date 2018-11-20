<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Order;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
       Order::created(function($obj){
            //$obj->name;
            $email = 'zhdanowwwa@gmail.com';
            $thema='Уважаемый'.$obj->name.',Вам сообщение с сайта site.ru';
            $body='<h1>Ваш заказ принят</h1>';
            $headers='MIME-Version: 1.0\r\n';
            $headers='From: admin@tut.by\r\n';
            $headers='Content-Type: text/plain;charset=utf-8\r\n';
            $headers="X-Mailer: PHP/" .phpversion();
            @mail($email,$thema,$body,$headers);
       });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
