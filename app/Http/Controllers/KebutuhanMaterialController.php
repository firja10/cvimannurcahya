<?php

namespace App\Http\Controllers;

use App\Models\KebutuhanMaterial;
use Illuminate\Http\Request;

class KebutuhanMaterialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    
    
        $kebutuhan_material = KebutuhanMaterial::all();
        return view('PPIC.kebutuhan_material',compact('kebutuhan_material'));


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        $kebutuhan_material = new KebutuhanMaterial();

        $kebutuhan_material['komponen'] = $request->komponen;

        $kebutuhan_material['nama'] = $request->nama;

        $kebutuhan_material['jenis'] = $request->jenis;

        $kebutuhan_material['satuan'] = $request->satuan;

        $kebutuhan_material['jumlah'] = $request->jumlah;

        $kebutuhan_material->save();

        return redirect('/kebutuhan_material')->with('tambahkebutuhanmaterial', 'Sukses Menambahkan Kebutuhan Material');




    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\KebutuhanMaterial  $kebutuhanMaterial
     * @return \Illuminate\Http\Response
     */
    public function show(KebutuhanMaterial $kebutuhanMaterial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KebutuhanMaterial  $kebutuhanMaterial
     * @return \Illuminate\Http\Response
     */
    public function edit(KebutuhanMaterial $kebutuhanMaterial)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KebutuhanMaterial  $kebutuhanMaterial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, KebutuhanMaterial $kebutuhanMaterial)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KebutuhanMaterial  $kebutuhanMaterial
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

        $kebutuhan_material = KebutuhanMaterial::findOrFail($id);

        $kebutuhan_material->delete();

        return redirect('/kebutuhan_material')->with('hapuskebutuhanmaterial', 'Kebutuhan Material Berhasil Dihapus');


    }
}
