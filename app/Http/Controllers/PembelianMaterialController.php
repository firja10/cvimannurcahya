<?php

namespace App\Http\Controllers;

use App\Models\PembelianMaterial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\KebutuhanMaterial;
use App\Models\Notifikasi;
use Illuminate\Support\Facades\Auth;


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
        $pembelian_material['tanggal_masuk'] = date('Y-m-d');
        $pembelian_material['tanggal_update'] = date('Y-m-d');

      
        

        $butuh_beli_reference = DB::table('kebutuhan_materials')->where('nama', $request->nama)->get();

        // $butuh_beli_reference = KebutuhanMaterial::find ;

        $harga_beli = '';

        $suplier = '';

        foreach ($butuh_beli_reference as $data_butuh) {
            # code...

            $harga_beli = $data_butuh->harga_beli;

            $suplier = $data_butuh->suplier;


        }


        $pembelian_material['harga_beli'] = $harga_beli;

        $pembelian_material['suplier'] = $suplier;
        

        $pembelian_material->save();




        
        // KIRIM NOTIFIKASI 

        $notifikasi = new Notifikasi();

        $notifikasi['nama_notifikasi'] = 'Tambah Pembelian Material ' . $request->nama;
        $notifikasi['deskripsi'] = 'Telah dilaksanakan Penambahan Pembelian Material '. $request->nama .' oleh Bagian Gudang ' . Auth::user()->name . '';
        $notifikasi['pengirim'] = Auth::user()->name;
        $notifikasi['tanggal_kirim'] = date('Y-m-d');
        $notifikasi['jenis_notifikasi'] = 'Tambah Pembelian Material';        
        $notifikasi['status_notif'] = 0;      
        $notifikasi['pembelian_material_id'] = $pembelian_material->id;

        $notifikasi['link_notif'] = "persetujuan/pembelian_material";


        $notifikasi['deskripsi_link'] = "Berikut merupakan Link untuk melihat Pembelian material : ";


        $notifikasi->save();






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
            'tanggal_update'=>date('Y-m-d')
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
