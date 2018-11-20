<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Products;
class BasketController extends Controller
{
    public function getIndex(){
        $name = (isset(Auth::user()->name)) ? Auth::user()->name : '';
        $email = (isset(Auth::user()->email)) ? Auth::user()->email : '';
        $tov = $this->cook_arr();
        $val = $this->cook_value();
        return view('basket')->with('tov', $tov)->with('val',$val)->with('name', $name)->with('email', $email);
    }
    public function getDelete($id = null)
    {
        $tov = $this->cook_count();
        unset($tov[$id]);
        //dd($tov);
        //$str = $this->cook_add($tov[$id]);
        $this->cook_add($tov);
        return redirect('basket');
    }
    public function cook_arr()
    {
        $cook = (isset($_COOKIE['basket'])) ? $_COOKIE['basket'] : 0;
        $big_arr = explode(',', $cook);
        $tov = array();
        foreach ($big_arr as $value_arr) {
            $arr = explode(':', $value_arr);
            if ($arr[0] != null) {
                $tov[$arr[0]] = Products::find($arr[0]);
            }
        }
        return $tov;
    }
    public function cook_value()
    {
        $cook = (isset($_COOKIE['basket'])) ? $_COOKIE['basket'] : 0;
        if($cook !=0){
            $big_arr = explode(',', $cook);
            $val = array();
            foreach ($big_arr as $value_arr) {
                $arr = explode(':', $value_arr);
                if ($arr[0] != null) {
                    $val[$arr[0]] = $arr[1];
                }
            }
            return $val;
        }

    }
    public function cook_add($tov = [])
    {
        $str = '';
        $summa = '';

        foreach ($tov as $key => $value) {
            $tovv = Products::find($key);
            $str .= $key . ':' . $value . ':' . $tovv->price . ',';
        }
        setcookie('basket', $str, time() + 3600, '/');
    }
    public function cook_count()
    {
        $cook = (isset($_COOKIE['basket'])) ? $_COOKIE['basket'] : 0;
        $big_arr = explode(',', $cook);
        $tov = array();
        foreach ($big_arr as $key => $value) {
            $arr = explode(':', $value);
            if ($arr[0] != null) {
                $tov[$arr[0]] = $arr[1];
            }
        }
        return $tov;
    }
}
