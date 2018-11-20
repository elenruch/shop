<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Mikhalkevichxx extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'mikhalkevichxx';
    
    protected $fillable = ['price_max'];
    

    public static function boot()
    {
        parent::boot();

        Mikhalkevichxx::observe(new UserActionsObserver);
    }
    
    
    
    
}