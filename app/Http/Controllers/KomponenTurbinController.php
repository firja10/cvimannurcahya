<?php

namespace App\Http\Controllers;

use App\Models\KomponenTurbin;
use Illuminate\Http\Request;

class KomponenTurbinController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $komponen_turbin = KomponenTurbin::all();

        return view('data_komponen_turbin', compact('komponen_turbin'));



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

        $komponen_turbin = new KomponenTurbin();

        $komponen_turbin['kode_komponen'] = $request->kode_komponen;
        $komponen_turbin['nama_komponen'] = $request->nama_komponen;

        $komponen_turbin->save();
        return redirect('/komponen_turbin')->with('komponenturbin','Data Komponen Turbin Telah Ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\KomponenTurbin  $komponenTurbin
     * @return \Illuminate\Http\Response
     */
    public function show(KomponenTurbin $komponenTurbin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KomponenTurbin  $komponenTurbin
     * @return \Illuminate\Http\Response
     */
    public function edit(KomponenTurbin $komponenTurbin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KomponenTurbin  $komponenTurbin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, KomponenTurbin $komponenTurbin)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KomponenTurbin  $komponenTurbin
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

        $komponen_turbin = KomponenTurbin::findOrFail($id);
        $komponen_turbin->delete();

        return redirect('/komponen_turbin')->with('hapuskomponen', 'Sukses Hapus Data Komponen Turbin');

    }
}
