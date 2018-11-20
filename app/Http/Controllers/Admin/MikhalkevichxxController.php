<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Mikhalkevichxx;
use App\Http\Requests\CreateMikhalkevichxxRequest;
use App\Http\Requests\UpdateMikhalkevichxxRequest;
use Illuminate\Http\Request;



class MikhalkevichxxController extends Controller {

	/**
	 * Display a listing of mikhalkevichxx
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $mikhalkevichxx = Mikhalkevichxx::all();

		return view('admin.mikhalkevichxx.index', compact('mikhalkevichxx'));
	}

	/**
	 * Show the form for creating a new mikhalkevichxx
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.mikhalkevichxx.create');
	}

	/**
	 * Store a newly created mikhalkevichxx in storage.
	 *
     * @param CreateMikhalkevichxxRequest|Request $request
	 */
	public function store(CreateMikhalkevichxxRequest $request)
	{
	    
		Mikhalkevichxx::create($request->all());

		return redirect()->route(config('quickadmin.route').'.mikhalkevichxx.index');
	}

	/**
	 * Show the form for editing the specified mikhalkevichxx.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$mikhalkevichxx = Mikhalkevichxx::find($id);
	    
	    
		return view('admin.mikhalkevichxx.edit', compact('mikhalkevichxx'));
	}

	/**
	 * Update the specified mikhalkevichxx in storage.
     * @param UpdateMikhalkevichxxRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateMikhalkevichxxRequest $request)
	{
		$mikhalkevichxx = Mikhalkevichxx::findOrFail($id);

        

		$mikhalkevichxx->update($request->all());

		return redirect()->route(config('quickadmin.route').'.mikhalkevichxx.index');
	}

	/**
	 * Remove the specified mikhalkevichxx from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Mikhalkevichxx::destroy($id);

		return redirect()->route(config('quickadmin.route').'.mikhalkevichxx.index');
	}

    /**
     * Mass delete function from index page
     * @param Request $request
     *
     * @return mixed
     */
    public function massDelete(Request $request)
    {
        if ($request->get('toDelete') != 'mass') {
            $toDelete = json_decode($request->get('toDelete'));
            Mikhalkevichxx::destroy($toDelete);
        } else {
            Mikhalkevichxx::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.mikhalkevichxx.index');
    }

}
