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

$ppic = Auth::user()->is_ppic == 1;

$gudang = Auth::user()->is_gudang == 1;

$manager = Auth::user()->is_manager == 1;

$repairing = Auth::user()->is_repairing == 1;

$pemilik = Auth::user()->is_pemilik == 1;



?>






  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">


          <div class="card">
            <div class="card-header justify-content-center d-flex">
              {{-- <h3 class="card-title">DataTable with default features</h3> --}}
              <button class = "btn btn-dark"> <i class = "fas fa-arrow-left"></i> Previous</button>
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#KebutuhanMaterialModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="kebutuhan_material_tabel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Komponen Turbin</th>
                  <th>Nama Material</th>
                  <th>Jenis</th>
                  <th>Satuan</th>
                  <th>Jumlah</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($kebutuhan_material as $item_material)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_material->komponen}}</td>
                    <td>{{$item_material->nama}}</td>
                    <td>{{$item_material->jenis}}</td>
                    <td>{{$item_material->satuan}}</td>
                    <td>{{$item_material->jumlah}}</td>
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



                   

                        @if ($item_material->status_verif == 0 || $item_material->status_verif == NULL )
                        <button type = "button" class="btn btn-warning mb-2">Belum diapprove Manager</button>

                        @elseif($item_material->status_verif == 1)
                        <button type = "button" class="btn btn-primary disabled mb-2">Sudah diapprove Manager</button>   


                            @if ($gudang || $pemilik)
                                
                          

                                  <form action="{{route('pembelian_material.store', $item_material->id)}}" method="POST">
                                    @csrf

                                    <input type="hidden" name="kode" value = {{$item_material->kode}}>
                                    <input type="hidden" name="nama" value = {{$item_material->nama}}>
                                    <input type="hidden" name="jenis" value = {{$item_material->jenis}}>
                                    <input type="hidden" name="jumlah" value = {{$item_material->jumlah}}>

                                    <button class="btn btn-dark" type = "submit">Laksanakan Pembelian</button>
                                  </form>

                            @elseif($repairing || $pemilik)

                                  <form action="{{route('UpdateKomponenSesuai', $item_material->id)}}" method="POST">
                                    @csrf
                                    @method('PATCH')
          
                                
                                    <button class="btn btn-dark mt-2 mb-2" type = "submit">Lapor Komponen Sesuai</button>
                                  </form>
          
          
                                
                                  <form action="{{route('UpdateKomponenTidakSesuai', $item_material->id)}}" method="POST">
                                    @csrf
                                    @method('PATCH')
                                    <button class="btn btn-warning" type = "submit">Lapor Komponen Tidak Sesuai, Minta Koreksi</button>
                                  </form>
         



                            @endif
                 

                        @elseif($item_material->status_verif == 3)

                        
                


                              @if ($gudang || $pemilik)

                              <form action="{{route('pembelian_material.store', $item_material->id)}}" method="POST">
                                @csrf
      
                                <input type="hidden" name="kode" value = {{$item_material->kode}}>
                                <input type="hidden" name="nama" value = {{$item_material->nama}}>
                                <input type="hidden" name="jenis" value = {{$item_material->jenis}}>
                                <input type="hidden" name="jumlah" value = {{$item_material->jumlah}}>
      
                                <button class="btn btn-dark" type = "submit">Laksanakan Pembelian</button>
                              </form>
                              <br>
                              <button type = "button" class="btn btn-success disabled mb-2">Bahan Sesuai</button>  

                                  
                              @elseif($repairing || $pemilik)

                              <button class="btn btn-success mt-2 disabled">Komponen Sesuai</button>


                              <form action="{{route('MasukanRepairing', $item_material->id)}}" method="POST">
                                @csrf
                                @method('PATCH')
                                
                                <input type="hidden" name="komponen" value="{{$item_material->komponen}}">
                                <input type="hidden" name="nama" value="{{$item_material->nama}}">
                                <input type="hidden" name="jenis" value="{{$item_material->jenis}}">
                                <input type="hidden" name="satuan" value="{{$item_material->satuan}}">
                                <input type="hidden" name="jumlah" value="{{$item_material->jumlah}}">
                                <button class = "btn btn-primary mt-2">Lakukan Repairing</button> 
                              </form>
                                  
                              @endif
                        
                        

                        @elseif($item_material->status_verif == 2)


                            @if ($gudang || $pemilik)

                            <form action="{{route('pembelian_material.store', $item_material->id)}}" method="POST">
                              @csrf
    
                              <input type="hidden" name="kode" value = {{$item_material->kode}}>
                              <input type="hidden" name="nama" value = {{$item_material->nama}}>
                              <input type="hidden" name="jenis" value = {{$item_material->jenis}}>
                              <input type="hidden" name="jumlah" value = {{$item_material->jumlah}}>
                              <input type="hidden" name="harga_beli" value = {{$item_material->harga_beli}}>
                              <input type="hidden" name="suplier" value = {{$item_material->suplier}}>
    
    
                              <button class="btn btn-dark disabled" type = "submit">Laksanakan Pembelian</button>
                            </form>
                            <br>
                            <button type = "button" class="btn btn-warning disabled mb-2">Bahan Tidak Sesuai</button>   
                                
                            @elseif($repairing || $pemilik)

                            <form action="{{route('PerbaikanKomponen', $item_material->id)}}" method="POST">
                              @csrf
                              @method('PATCH')
    
                              <button class="btn btn-danger mt-2" type = "submit">Komponen Tidak Sesuai</button>
                            </form>
    
                                
                            @endif
                        
                    

                        @endif






                        <br>

                        @if ($pemilik || $repairing)

                   

                  

                        @elseif($item_material->status_verif == 4)

                        <button class="btn btn-success mt-2 disabled">Komponen Sesuai</button>

                        <button class="btn btn-warning mt-2 disabled">Repairing Sedang Dilakukan</button>

                 




                        @endif
                        
                                   

                        @elseif ($gudang)


                            
                        @endif
                     

                      </center>

                    </td>
                </tr>


                @endforeach


               
               </tbody>
                <tfoot>
                <tr>
                    <th>No. </th>
                    <th>Komponen Turbin</th>
                    <th>Nama Material</th>
                    <th>Jenis</th>
                    <th>Satuan</th>
                    <th>Jumlah</th>
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






