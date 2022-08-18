@extends('template')

@section('title')
<?php $kateg = $_GET['nama_kategori'] ;

echo "Data Material ". $kateg;

?>

    
@endsection


@section('judul')

<?php

echo "Data Material ". $kateg;

?>
    
@endsection

@section('content')





@section('style')



@if($kateg = "Cast Steel")

<style>
    #CS{
        background-color:white;
    }

    #CS .nav-link p {
        color:firebrick;
    }

    #CS .nav-link i {
        color:firebrick;
    }
</style>


@elseif($kateg = "Carbon Steel")

<style>
    #CBS{
        background-color:white;
    }

    #CBS .nav-link p {
        color:firebrick;
    }

    #CBS .nav-link i {
        color:firebrick;
    }
</style>


@elseif($kateg = "Stainless Steel")

<style>
    #SS{
        background-color:white;
    }

    #SS .nav-link p {
        color:firebrick;
    }

    #SS .nav-link i {
        color:firebrick;
    }
</style>
    
@endif



{{-- <style>
    #CBS{
        background-color:white;
    }

    #CBS .nav-link {
        color:firebrick;
    }
</style> --}}
    
@endsection













  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">


          <div class="card">
            <div class="card-header justify-content-center d-flex">
              {{-- <h3 class="card-title">DataTable with default features</h3> --}}
              <button class = "btn btn-dark" onclick="history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#CarbonSteelModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="data_material_tabel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Kode Material</th>
                  <th>Nama Material</th>
                  <th>Kategori</th>
                  <th>Jenis</th>
                    <th>Stock</th>
                    <th>Harga Beli</th>
                    <th>Aksi</th>

                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($data_material as $item_material)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_material->kode}}</td>
                    <td>{{$item_material->nama}}</td>
                    <td>{{$item_material->kategori}}</td>
                    <td>{{$item_material->jenis}}</td>
                    <td>{{$item_material->stock}}</td>
                    <td>{{$item_material->harga_beli}}</td>
             
                    <td>

                        <a href="" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('CarbonSteelDelete', $item_material->id)}}" method = "POST" >
                            @csrf
                            @method('DELETE')
                            <button class = "btn  btn-danger">Hapus</button>
                        </form>

                        
                        <a href="" class="btn btn-primary mt-2 mb-2">Tambah SS</a>
                        <br>
                        <a href="" class="btn btn-dark">Tambah ROP</a>

                    </td>
                </tr>


                @endforeach


               
               </tbody>
                <tfoot>
                <tr>
                    <th>No. </th>
                  <th>Kode Material</th>
                  <th>Nama Material</th>
                  <th>Kategori</th>
                  <th>Jenis</th>
                    <th>Stock</th>
                    <th>Harga Beli</th>
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