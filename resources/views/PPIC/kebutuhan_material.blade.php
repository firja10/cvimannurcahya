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



                        <a href="" class = "btn btn-success">Edit</a>
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

                        @elseif($item_material->status_verif == 3)
                        <button type = "button" class="btn btn-success disabled mb-2">Bahan Sesuai</button>   

                        @elseif($item_material->status_verif == 2)
                        <button type = "button" class="btn btn-warning disabled mb-2">Bahan Tidak Sesuai</button>   

                        @endif



                        <br>

                        @if ($pemilik || $repairing)

                        @if ($item_material->status_verif == 1)



                        <form action="{{route('UpdateKomponenSesuai', $item_material->id)}}" method="POST">
                          @csrf
                          @method('PATCH')
                          <button class="btn btn-dark mt-2 mb-2" type = "submit">Lapor Komponen Sesuai</button>
                        </form>


                       
                        <form action="{{route('UpdateKomponenTidakSesuai', $item_material->id)}}" method="POST">
                          @csrf
                          @method('PATCH')
                          <button class="btn btn-warning" type = "submit">Lapor Komponen Tidak Sesuai</button>
                        </form>
     


                        @elseif($item_material->status_verif == 2)
                            

                        <button class="btn btn-danger mt-2">Komponen Tidak Sesuai</button>

                        @elseif($item_material->status_verif == 3)

                        <button class="btn btn-success mt-2 disabled">Komponen Sesuai</button>

                        @endif
                        
                                   

                        @else


                            
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






