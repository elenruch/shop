<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


class Chat extends Model
{
    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $table = 'chat';

    protected $fillable = [
        'name',
        'message',
        'dt',
    ];


    public static function boot()
    {
        parent::boot();

        Products::observe(new UserActionsObserver);
    }
}