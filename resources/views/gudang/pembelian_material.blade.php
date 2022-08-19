@extends('template')

@section('title')

Data Pembelian Material
    
@endsection


@section('judul')

Data Pembelian Material

@endsection


@section('style')

<style>

    #pembelian_material {
        background-color:white;
    }

    #pembelian_material .nav-link {
        color:firebrick;
    }

</style>
    
@endsection




@section('content')












  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">


          <div class="card">
            <div class="card-header">
              {{-- <h3 class="card-title">DataTable with default features</h3> --}}
              <button class = "btn btn-dark" onclick="history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
              {{-- <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#PembelianMaterialModal" > <i class = "fas fa-plus"></i> Tambah Data</button> --}}
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="pembelian_material_tabel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Kode Material</th>
                  <th>Nama Material</th>
                  <th>Jenis</th>
                    <th>Satuan</th>
                    <th>Jumlah</th>
                    <th>Harga Beli</th>
                    <th>Suplier</th>
                    <th>Aksi</th>

                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($pembelian_material as $item_pembelian_material)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_pembelian_material->kode}}</td>
                    <td>{{$item_pembelian_material->nama}}</td>
                    <td>{{$item_pembelian_material->jenis}}</td>
                    <td>{{$item_pembelian_material->satuan}}</td>
                    <td>{{$item_pembelian_material->jumlah}}</td>
                    <td>{{$item_pembelian_material->harga_beli}}</td>
                    <td>{{$item_pembelian_material->suplier}}</td>
             
                    <td>
                      <br>
                        <a href="{{route('pembelian_material.edit', $item_pembelian_material->id)}}" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('pembelian_material.destroy', $item_pembelian_material->id)}}" method = "POST" >
                            @csrf
                            @method('DELETE')
                            <button class = "btn  btn-danger">Hapus</button>
                        </form>

                        <br>

                        @if ($item_pembelian_material->status_verif == 0 || $item_pembelian_material->status_verif == NULL)
                        <button type = "button" class="btn btn-warning">Belum diapprove</button>
                        @elseif($item_pembelian_material->status_verif == 1)
                        <button type = "button" class="btn btn-primary">Sudah diapprove</button>   
                        @endif

                    </td>
                </tr>


                @endforeach


               
               </tbody>
                <tfoot>
                <tr>
                    <th>No. </th>
                  <th>Kode Material</th>
                  <th>Nama Material</th>
                  <th>Jenis</th>
                    <th>Satuan</th>
                    <th>Jumlah</th>
                    <th>Harga Beli</th>
                    <th>Suplier</th>
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