<?php

namespace App\Providers;

use View;
use Illuminate\Support\ServiceProvider;
use App\Providers\ViewComposers\SizeComposer;


class SiteServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('*', 'App\Providers\ViewComposers\SizeComposer');
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //echo "ok";
    }
}
