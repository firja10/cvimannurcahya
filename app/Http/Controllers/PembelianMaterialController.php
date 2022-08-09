<?php

namespace App\Http\Controllers;

use App\Models\PembelianMaterial;
use Illuminate\Http\Request;

class PembelianMaterialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //


        $pembelian_material = PembelianMaterial::all();

        return view('gudang.pembelian_material', compact('pembelian_material'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('gudang.pembelian_material');
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

        $pembelian_material = new PembelianMaterial();
        $pembelian_material['kode'] = $request->kode;
        $pembelian_material['nama'] = $request->nama;
        $pembelian_material['jenis'] = $request->jenis;
        $pembelian_material['satuan'] = $request->satuan;
        $pembelian_material['jumlah'] = $request->jumlah;
        $pembelian_material['suplier'] = $request->suplier;
        $pembelian_material->save();

        return redirect('/pembelian_material')->with('pembelianmaterial','Data Pembelian Material Telah Ditambahkan');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PembelianMaterial  $pembelianMaterial
     * @return \Illuminate\Http\Response
     */
    public function show(PembelianMaterial $pembelianMaterial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\PembelianMaterial  $pembelianMaterial
     * @return \Illuminate\Http\Response
     */
    public function edit(PembelianMaterial $pembelianMaterial)
    {
        //





    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PembelianMaterial  $pembelianMaterial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PembelianMaterial $pembelianMaterial)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PembelianMaterial  $pembelianMaterial
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    
        $pembelian_material = PembelianMaterial::findOrFail($id);

        $pembelian_material->delete();

        return redirect('/pembelian_material')->with('hapuspembelianmaterial','Terdapat Data Pembelian Material yang dihapus');



    }

}
