<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use App\Models\DataMaterial;
use App\Models\KebutuhanMaterial;

class LandingController extends Controller
{
    //



    public function CastSteel()
    {
        # code...

       $cast_steel = DB::table('data_materials')->where('kategori','Cast Steel')->get();

        return view('gudang.cast_steel',compact('cast_steel'));

    }



    public function CastSteelStore(Request $request)
    {
        # code...

       $cast_steel = new DataMaterial();

       $cast_steel['kode'] = $request->kode;
       $cast_steel['nama'] = $request->nama;

       $cast_steel['kategori'] = "Cast Steel";

       $cast_steel['jenis'] = $request->jenis;
       $cast_steel['stock'] = $request->stock;

       $cast_steel['harga_beli'] = $request->harga_beli;

       $cast_steel->save();

       return redirect('/data_material/cast_steel')->with('storecaststeel', 'Data Cast Steel Berhasil Ditambahkan');

    }





    public function CastSteelDelete($id)
    {
        # code...


        $cast_steel = DataMaterial::findOrFail($id);

        $cast_steel->delete();

        return redirect('/data_material/cast_steel')->with('hapusdatacaststeel','Data Telah Dihapus');


    }




    public function CarbonSteel()
    {
        # code...

        $carbon_steel = DB::table('data_materials')->where('kategori','Carbon Steel')->get();


         return view('gudang.carbon_steel',compact('carbon_steel'));

    }










    public function CarbonSteelStore(Request $request)
    {
        # code...

       $carbon_steel = new DataMaterial();

       $carbon_steel['kode'] = $request->kode;
       $carbon_steel['nama'] = $request->nama;

       $carbon_steel['kategori'] = "Carbon Steel";

       $carbon_steel['jenis'] = $request->jenis;
       $carbon_steel['stock'] = $request->stock;

       $carbon_steel['harga_beli'] = $request->harga_beli;

       $carbon_steel->save();

       return redirect('/data_material/carbon_steel')->with('storecarbonsteel', 'Data Carbon Steel Berhasil Ditambahkan');

    }














    public function CarbonSteelDelete($id)
    {
        # code...


        $carbon_steel = DataMaterial::findOrFail($id);

        $carbon_steel->delete();

        return redirect('/data_material/carbon_steel')->with('hapusdatacarbonsteel','Data Telah Dihapus');


    }






public function StainlessSteel()
{
    # code...


    $stainless_steel = DB::table('data_materials')->where('kategori','Stainless Steel')->get();


    return view('gudang.stainless_steel',compact('stainless_steel'));




}










public function StainlessSteelStore(Request $request)
{
    # code...

   $stainless_steel = new DataMaterial();

   $stainless_steel['kode'] = $request->kode;
   $stainless_steel['nama'] = $request->nama;

   $stainless_steel['kategori'] = "Stainless Steel";

   $stainless_steel['jenis'] = $request->jenis;
   $stainless_steel['stock'] = $request->stock;

   $stainless_steel['harga_beli'] = $request->harga_beli;

   $stainless_steel->save();

   return redirect('/data_material/stainless_steel')->with('storestainlesssteel', 'Data Stainless Steel Berhasil Ditambahkan');

}









public function StainlessSteelDelete($id)
{
    # code...


    $stainless_steel = DataMaterial::findOrFail($id);

    $stainless_steel->delete();

    return redirect('/data_material/stainless_steel')->with('hapusdatastainlesssteel','Data Telah Dihapus');


}








// Baru 16 Agustus 2022



public function HeatResitingSteel()
{
    # code...


    $heat_resiting_steel = DB::table('data_materials')->where('kategori','Heat Resiting Steel')->get();


    return view('gudang.heat_resiting_steel',compact('heat_resiting_steel'));




}






public function HeatResitingSteelStore(Request $request)
{
    # code...

   $heat_resiting_steel = new DataMaterial();

   $heat_resiting_steel['kode'] = $request->kode;
   $heat_resiting_steel['nama'] = $request->nama;

   $heat_resiting_steel['kategori'] = "Heat Resiting Steel";

   $heat_resiting_steel['jenis'] = $request->jenis;
   $heat_resiting_steel['stock'] = $request->stock;

   $heat_resiting_steel['harga_beli'] = $request->harga_beli;

   $heat_resiting_steel->save();

   return redirect('/data_material/heat_resiting_steel')->with('store_heat_resiting_steel', 'Data Heat Resiting Steel Berhasil Ditambahkan');

}







public function ForgedSteel()
{
    # code...


    $forged_steel = DB::table('data_materials')->where('kategori','Forged Steel')->get();


    return view('gudang.forged_steel',compact('forged_steel'));




}









public function ForgedSteelStore(Request $request)
{
    # code...

   $forged_steel = new DataMaterial();

   $forged_steel['kode'] = $request->kode;
   $forged_steel['nama'] = $request->nama;

   $forged_steel['kategori'] = "Heat Resiting Steel";

   $forged_steel['jenis'] = $request->jenis;
   $forged_steel['stock'] = $request->stock;

   $forged_steel['harga_beli'] = $request->harga_beli;

   $forged_steel->save();

   return redirect('/data_material/forged_steel')->with('store_forged_steel', 'Data Heat Forged Steel Berhasil Ditambahkan');

}













public function AlAlloyMetal()
{
    # code...


    $forged_steel = DB::table('data_materials')->where('kategori','Al-Alloy-Metal')->get();


    return view('gudang.al_alloy_metal',compact('al_alloy_metal'));




}






public function AlAlloyMetalStore(Request $request)
{
    # code...

   $al_alloy_metal = new DataMaterial();

   $al_alloy_metal['kode'] = $request->kode;
   $al_alloy_metal['nama'] = $request->nama;

   $al_alloy_metal['kategori'] = "Al-Alloy-Metal";

   $al_alloy_metal['jenis'] = $request->jenis;
   $al_alloy_metal['stock'] = $request->stock;

   $al_alloy_metal['harga_beli'] = $request->harga_beli;

   $al_alloy_metal->save();

   return redirect('/data_material/forged_steel')->with('store_forged_steel', 'Data Heat Forged Steel Berhasil Ditambahkan');

}










public function WhiteMetal()
{
    # code...


    $white_metal = DB::table('data_materials')->where('kategori','White Metal')->get();


    return view('gudang.white_metal',compact('white_metal'));




}







public function WhiteMetalStore(Request $request)
{
    # code...

    $white_metal = new DataMaterial();

    $white_metal['kode'] = $request->kode;
    $white_metal['nama'] = $request->nama;

    $white_metal['kategori'] = "Al-Alloy-Metal";

    $white_metal['jenis'] = $request->jenis;
    $white_metal['stock'] = $request->stock;

    $white_metal['harga_beli'] = $request->harga_beli;

    $white_metal->save();

   return redirect('/data_material/white_metal')->with('store_white_metal', 'Data White Metal Berhasil Ditambahkan');

}















// Persetujuan Manager

public function SetujuKebutuhanMaterial()
{
    # code...

    $kebutuhan_material = DB::table('kebutuhan_materials')->where('status_verif',1)->get();

    return view('manager.kebutuhan_material',compact('kebutuhan_material'));


}

public function UpdateSetujuKebutuhanMaterial()
{
    # code...




}


public function SetujuPembelianMaterial()
{
    # code...

    $pembelian_material = DB::table('pembelian_materials')->where('status_verif',1)->get();

    return view('manager.pembelian_material',compact('pembelian_material'));




}

public function UpdateSetujuPembelianMaterial()
{
    # code...



}


public function SetujuRepairing()
{
    # code...
    $repairing = DB::table('repairings')->where('status_verif',1)->get();

    return view('manager.repairing',compact('repairing'));


}


public function UpdateSetujuRepairing()
{
    # code...



}








}
