@extends('template')

@section('title')

Data Persetujuan Pembelian Material
    
@endsection


@section('judul')

Data Persetujuan Pembelian Material

@endsection


@section('style')

<style>

    #persetujuan_pembelian_material {
        background-color:white;
    }

    #persetujuan_pembelian_material .nav-link {
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
            <div class="card-header justify-content-center d-flex">
              {{-- <h3 class="card-title">DataTable with default features</h3> --}}
              <button class = "btn btn-dark" onclick="history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#PembelianMaterialModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
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

                      @if ($item_pembelian_material->status_verif == 0)
                      <form action="{{route('UpdateSetujuPembelianMaterial', $item_pembelian_material->id)}}" method = "POST">
                        @csrf
                        @method('PATCH')
                        <button class = "btn btn-warning" type = "submit">Belum Approve Manager</button>
                      </form>
                      
                      @elseif($item_pembelian_material->status_verif == 1)

                      <button class = "btn btn-success" disabled>Sudah Approve Manager</button>   
                      @endif

                            <br>
      
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