<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use App\Models\DataMaterial;

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














}
