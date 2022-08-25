@extends('template')

@section('title')

Data Kebutuhan Material
    
@endsection

@section('judul')

Data Kebutuhan Material
    
@endsection


@section('style')

<style>
    #kebutuhan_material{
        background-color: white;
    }

    #kebutuhan_material .nav-link {
        color:firebrick;
    }
</style>


@endsection




@section('content')





<?php 

$ppic = Auth::user()->is_ppic;

$gudang = Auth::user()->is_bagiangudang;

$manager = Auth::user()->is_manager;

$repairing = Auth::user()->is_bagianrepairing;

$pemilik = Auth::user()->is_pemilik;



?>








  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">


          <div class="card">
       
              @if ($ppic == 1)

            <div class="card-header justify-content-center d-flex">
                {{-- <h3 class="card-title">DataTable with default features</h3> --}}
              <button class = "btn btn-dark" onclick="history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#KebutuhanMaterialModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>


              @else


              <div class="card-header">
                {{-- <h3 class="card-title">DataTable with default features</h3> --}}
              <button class = "btn btn-dark" onclick="history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
              {{-- <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#KebutuhanMaterialModal" > <i class = "fas fa-plus"></i> Tambah Data</button> --}}
            </div>



                  
              @endif
           
            

            <!-- /.card-header -->
            <div class="card-body">
              <table id="kebutuhan_material_tabel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  {{-- <th>No. </th> --}}
                  <th>Komponen Turbin</th>
                  <th>Nama Material</th>
                  <th>Jenis</th>
                  <th>Satuan</th>
                  <th>Jumlah</th>
                  <th>Tanggal Masuk</th>
                  <th>Keterangan</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($kebutuhan_material->reverse() as $item_material)
                
                <tr>
                    {{-- <td></td> --}}
                    <td>{{$item_material->komponen}}</td>
                    <td>{{$item_material->nama}}</td>
                    <td>{{$item_material->jenis}}</td>
                    <td>{{$item_material->satuan}}</td>
                    <td>{{$item_material->jumlah}}</td>
                    <td>{{$item_material->tanggal_masuk}}</td>
                    
                    <td>
                   
                     <?php   $keterangan = DB::table('data_materials')->where('nama', $item_material->nama)->first(); ?> 


                    @if (!empty($keterangan->ROP) || !empty($keterangan->AU) || !empty($keterangan->SS) || !empty($keterangan->stock))

                   <?php
                        
                      

                        $Reorder = $keterangan->ROP;

                        $Average = $keterangan->AU;

                        $Safety = $keterangan->SS;

                        $stok = $keterangan->stock;

                        ?>

                   
                        
               
                      @if ($Reorder >= $keterangan->stock)
                      <a href="#" class = "btn btn-warning  mb-2">Warning ! Bahan Baku Tidak Mencukupi</a>
                      @elseif($Reorder<$keterangan->stock && ($Reorder != NULL || $Safety != NULL  || $Average !=NULL))
                      <a href="#" class = "btn btn-dark  mb-2">Bahan Baku Tersedia</a>   
                      @elseif($Reorder == NULL || $Safety == NULL || $Average == NULL) 
                      <a href="#" class = "btn btn-danger  mb-2">Segera Isi, Safety Stock / Reorder Point / Average User Masih Kosong</a>   
                      @endif

                    @else
                        
                    @endif
  

                    </td>



                    <td>


                      <center>



                        <a href="{{route('kebutuhan_material.edit', $item_material->id)}}" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('kebutuhan_material.destroy', $item_material->id)}}" method = "POST" >
                            @csrf
                            @method('DELETE')
                            <button class = "btn  btn-danger">Hapus</button>
                        </form>
                        <br>


                   <?php 
                  //  $notmanager = Auth::user()->is_manager != 1;
                  //  $manager = Auth::user()->is_manager == 1;
                  //  $ppic = Auth::user()->is_ppic == 1;
                  //  $gudang = Auth::user()->is_gudang == 1;
                  //  $repairing == Auth::user()->is_repairing ==1 ;

                   
                   ?>






{{-- @if ($gudang)

<button>Bagian gudang</button>
    
@elseif($repairing)

<button>Bagian Repairing</button>

@else

<button>Bagian Lain</button>
    
@endif --}}



                   

                    @if ($item_material->status_verif == 0 || $item_material->status_verif == NULL )
                        <button type = "button" class="btn btn-warning mb-2">Belum diapprove Manager</button>

                    @elseif($gudang == 1 && $item_material->status_verif == 1 && ($item_material->status_repairing == NULL || $item_material->status_repairing == 0))
                        <button type = "button" class="btn btn-primary disabled mb-2">Sudah diapprove Manager</button>   


                      @if ($item_material->status_beli == NULL || $item_material->status_beli == 0)
                  
                        <form action="{{route('LakukanPembelian', $item_material->id)}}" method="POST">
                          @csrf

                          <input type="hidden" name="kode" value = {{$item_material->kode}}>
                          <input type="hidden" name="nama" value = {{$item_material->nama}}>
                          <input type="hidden" name="jenis" value = {{$item_material->jenis}}>
                          <input type="hidden" name="jumlah" value = {{$item_material->jumlah}}>



                          @if (!empty($keterangan->ROP) || !empty($keterangan->AU) || !empty($keterangan->SS) || !empty($keterangan->stock))

                          <?php
                               
                             
       
                               $Reorder = $keterangan->ROP;
       
                               $Average = $keterangan->AU;
       
                               $Safety = $keterangan->SS;
       
                               $stok = $keterangan->stock;
       
                               ?>


                          @if ($Reorder>=$stok)
                          <button class="btn btn-dark" type = "submit">Laksanakan Pembelian</button>                
                          @elseif($Reorder<$stok && ($Reorder != NULL || $Safety != NULL  || $Average !=NULL))
                          <button class="btn btn-dark disabled" type = "submit">Laksanakan Pembelian</button>     
                          @elseif($Reorder == NULL || $Safety == NULL || $Average == NULL)
                          <button class="btn btn-danger disabled">Segera isi bahan baku</button> 

                          @endif
              
                        @else

                        @endif

                        </form>
                        
                      @elseif($item_material->status_beli == 1)

                        <button class="btn btn-success disabled" type = "submit">Pembelian sedang dilakukan</button> 
                      
                      
                      @elseif($item_material->status_beli == 2)
                      
                      <form action="{{route('MasukanRepairing', $item_material->id)}}" method = "POST">

                        @csrf
                        @method('PATCH')

                        <input type="hidden" name="komponen" value="{{$item_material->komponen}}">
                        <input type="hidden" name="nama" value="{{$item_material->nama}}">
                        <input type="hidden" name="jenis" value="{{$item_material->jenis}}">
                        <input type="hidden" name="satuan" value="{{$item_material->satuan}}">
                        <input type="hidden" name="jumlah" value="{{$item_material->jumlah}}">

                        {{-- <button type = "submit" class = "btn btn-dark">Ajukan ke Repairing</button> --}}



                        @if (!empty($keterangan->ROP) || !empty($keterangan->AU) || !empty($keterangan->SS) || !empty($keterangan->stock))

                        <?php
                             
                           
     
                             $Reorder = $keterangan->ROP;
     
                             $Average = $keterangan->AU;
     
                             $Safety = $keterangan->SS;
     
                             $stok = $keterangan->stock;
     
                             ?>




                        @if ($Reorder>=$stok)
                        <button class="btn btn-dark disabled" type = "submit">Ajukan Repairing</button>                
                        @elseif($Reorder<$stok && ($Reorder != NULL || $Safety != NULL  || $Average !=NULL))
                        <button class="btn btn-dark" type = "submit">Ajukan Repairing</button>     
                        @elseif($Reorder == NULL || $Safety == NULL || $Average == NULL)
                        <button class="btn btn-danger disabled">Segera isi bahan baku</button> 

                        @endif


                      @else


                      @endif


                      </form>
                        
                      @endif
                  

                                  <br>
                        {{-- <button class = "btn btn-warning"> Menunggu Kesesuaian Komponen dari Repairing</button> --}}

                        @elseif($repairing == 1 && $item_material->status_verif == 1 && ($item_material->status_repairing == NULL || $item_material->status_repairing == 0))
                        <button type = "button" class="btn btn-primary disabled mb-2">Sudah diapprove Manager</button>   

                        <button type = "button" class = "btn btn-dark">Menunggu Pengajuan Repairing</button>

                                  {{-- <form action="{{route('UpdateKomponenSesuai', $item_material->id)}}" method="POST">
                                    @csrf
                                    @method('PATCH')
          
                                
                                    <button class="btn btn-dark mt-2 mb-2" type = "submit">Lapor Komponen Sesuai</button>
                                  </form>
          
          
                                
                                  <form action="{{route('UpdateKomponenTidakSesuai', $item_material->id)}}" method="POST">
                                    @csrf
                                    @method('PATCH')
                                    <button class="btn btn-warning" type = "submit">Lapor Komponen Tidak Sesuai, Minta Koreksi</button>
                                  </form> --}}

         
                                         
                        @elseif($item_material->status_repairing == 1 && $item_material->status_verif == 1)

                                @if ($gudang == 1)

                                  <button class = "btn btn-success">Sedang Menunggu Penyesuaian Komponen</button>
                                    
                                @elseif($repairing == 1)

                                <button class = "btn btn-success">Sedang Menunggu Penyesuaian Komponen</button>

                                {{-- <form action="{{route('UpdateKomponenSesuai', $item_material->id)}}" method="POST">
                                  @csrf
                                  @method('PATCH')
        
                              
                                  <button class="btn btn-dark mt-2 mb-2" type = "submit">Lapor Komponen Sesuai</button>
                                </form>

                                <form action="{{route('UpdateKomponenTidakSesuai', $item_material->id)}}" method="POST">
                                  @csrf
                                  @method('PATCH')
                                  <button class="btn btn-warning" type = "submit">Lapor Komponen Tidak Sesuai, Minta Koreksi</button>
                                </form>  --}}


                                    
                                @endif


                        @elseif($item_material->status_repairing == 2 && $item_material->status_verif == 1)



                                @if ($gudang == 1)


                                <button class = "btn btn-warning">Komponen Sesuai</button>
                                    
                                @elseif($repairing == 1)
                                                          
                                <button class = "btn btn-warning">Komponen Sesuai</button>
                                {{-- <a href = "{{url('/data_repairing')}}" class = "btn btn-dark">Pergi Ke Halaman Repairing bahwa Repairing Telah Dilakukan</a> --}}

                                @endif


                             {{-- <button class="btn btn-danger mt-2 disabled">Mboten, gak ada</button> --}}

                        @elseif($item_material->status_repairing == 3)


                        @if ($gudang == 1)


                        <button class = "btn btn-danger">Komponen Tidak Sesuai</button>
                            
                        @elseif($repairing == 1)
                                                  
                        <button class = "btn btn-danger">Komponen Tidak Sesuai</button>
                        {{-- <a href = "{{url('/data_repairing')}}" class = "btn btn-dark">Pergi Ke Halaman Repairing bahwa Repairing Telah Dilakukan</a> --}}

                        @endif
                        

                        @elseif($item_material->status_repairing == 4)
                    

                        <button class = "btn btn-success">Repairing Selesai Dilakukan</button>

                        @endif






                        <br>

                    
                      </center>

                    </td>
                </tr>


                @endforeach


               
               </tbody>
                <tfoot>
                <tr>
                    {{-- <th>No. </th> --}}
                    <th>Komponen Turbin</th>
                    <th>Nama Material</th>
                    <th>Jenis</th>
                    <th>Satuan</th>
                    <th>Jumlah</th>
                    <th>Tanggal Masuk</th>
                    <th>Keterangan</th>
                    <th>Aksi</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>

















@endsection






