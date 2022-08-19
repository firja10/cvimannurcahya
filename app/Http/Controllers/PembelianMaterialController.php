<?php

namespace App\Http\Controllers;

use App\Models\PembelianMaterial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\KebutuhanMaterial;

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
        $pembelian_material['satuan'] = 'Meter';
        $pembelian_material['jumlah'] = $request->jumlah;
     



        $butuh_beli_reference = DB::table('kebutuhan_materials')->where('nama', $request->nama)->first();


        $pembelian_material['harga_beli'] = $butuh_beli_reference->harga_beli;

        $pembelian_material['suplier'] = $butuh_beli_reference->suplier;
        

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
    public function edit($id)
    {
        //

        $pembelian_material = PembelianMaterial::findOrFail($id);

        return view('gudang.pembelian_material_edit', compact('pembelian_material'));



    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PembelianMaterial  $pembelianMaterial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        PembelianMaterial::where('id',$id)->update([
            'kode'=>$request->kode,
            'nama'=>$request->nama,
            'jenis'=>$request->jenis,
            'satuan'=>'Meter',
            'jumlah'=>$request->jumlah,
            'harga_beli'=>$request->harga_beli,
            // 'suplier'=>$request->suplier,



        ]);


        return redirect('/pembelian_material')->with('sukses_update_pembelian_material', 'Sukses Update pembelian Material');


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
