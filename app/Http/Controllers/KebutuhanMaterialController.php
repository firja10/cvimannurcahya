<?php

namespace App\Http\Controllers;

use App\Models\DataMaterial;
use App\Models\KebutuhanMaterial;
use Illuminate\Http\Request;
use App\Models\KomponenTurbin;
use Illuminate\Support\Facades\DB;

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

        $kebutuhan_material['tanggal_masuk'] = date('Y-m-d');


        $kebutuhan_material['tanggal_update'] = date('Y-m-d');

        $sesuai_kebutuhan = DataMaterial::where('nama', $request->nama)->first();

        // $kebutuhan_material['jenis'] = $request->jenis;

        // $kebutuhan_material['satuan'] = $request->satuan;

        // $kebutuhan_material['jumlah'] = $request->jumlah;

        $kebutuhan_material['kode'] = $sesuai_kebutuhan->kode;

        $kebutuhan_material['jenis'] = $sesuai_kebutuhan->jenis;

        $kebutuhan_material['satuan'] = 'Meter';

        $kebutuhan_material['jumlah'] = $request->jumlah;

        $kebutuhan_material['suplier'] = $sesuai_kebutuhan->suplier;

        $harga_total = '';

        if($sesuai_kebutuhan->harga_beli == NULL)
        {
            $harga_total = 0;
        }

        else {
            $harga_total = ($sesuai_kebutuhan->harga_beli)*($request->jumlah);
        }

        

        $kebutuhan_material['harga_beli'] = $harga_total;
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
    public function edit($id)
    {
        //

        $kebutuhan_material = KebutuhanMaterial::findOrFail($id);

        return view('PPIC.kebutuhan_material_edit',compact('kebutuhan_material'));


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KebutuhanMaterial  $kebutuhanMaterial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        KebutuhanMaterial::where('id',$id)->update([

            'komponen'=>$request->komponen,
            'kode'=>$request->kode,
            'nama'=>$request->nama,
            'jenis'=>$request->jenis,
            'satuan'=>'Meter',
            'jumlah'=>$request->jumlah,
            'harga_beli'=>$request->harga_beli,
            'tanggal_update'=>date('Y-m-d')
    
        ]);
    
        return redirect('/kebutuhan_material')->with('sukses_update_kebutuhan_material', 'Kebutuhan Material Sukses Diupdate');
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
