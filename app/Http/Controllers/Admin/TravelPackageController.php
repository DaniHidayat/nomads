<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;
use App\TravelPackage;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;

use Illuminate\Support\Str;



class TravelPackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items  = TravelPackage::all();

        return view('pages.admin.travel-package.index', [
            'items' => $items
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.admin.travel-package.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TravelPackageRequest $request)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->title); //membuat untuk field slug

        TravelPackage::create($data); //di input ke db
        $request->session()->flash('success', 'Data Paket Travel Tersimpan!');
        return redirect()->route('travel-package.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = TravelPackage::findOrFail($id);

        return view('pages.admin.travel-package.edit', [
            'item' => $item
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(TravelPackageRequest $request, $id)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->title); //membuat untuk field slug

        $item = TravelPackage::findOrFail($id); //ambil data sesuai ID
        $item->update($data); //update data
        $request->session()->flash('update', 'Data Paket Travel Di Ubah!');
        return redirect()->route('travel-package.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $item = TravelPackage::findOrFail($id);
        $item->delete();
        $request->session()->flash('delete', 'Data Paket Travel Di Di Hapus!');
        return redirect()->route('travel-package.index');
    }
}
