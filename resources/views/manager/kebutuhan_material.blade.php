@extends('template')

@section('title')

Data Persetujuan Kebutuhan Material
    
@endsection

@section('judul')

Data Persetujuan Kebutuhan Material
    
@endsection


@section('style')

<style>
    #persetujuan_kebutuhan_material{
        background-color: white;
    }

    #persetujuan_kebutuhan_material .nav-link {
        color:firebrick;
    }
</style>


@endsection
2



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
              {{-- <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#KebutuhanMaterialModal" > <i class = "fas fa-plus"></i> Tambah Data</button> --}}
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


                      @if ($item_material->status_verif == 0 || $item_material->status_verif == NULL)
                      <form action="{{route('UpdateSetujuKebutuhanMaterial', $item_material->id)}}" method = "POST">
                        @csrf
                        @method('PATCH')
                        <button class = "btn btn-warning" type = "submit">Belum Approve Manager</button>
                      </form>
                      
                      @elseif($item_material->status_verif == 1)

                      <button class = "btn btn-success" disabled>Sudah Approve Manager</button>  
                      
                      @elseif($item_material->status_verif == 2)

                      <button class = "btn btn- mb-2" disabled>Sudah Approve Manager</button>  
                      <br>
                      <button class = "btn btn-warning mt-2" disabled>Komponen Tidak Sesuai</button>  

                      @elseif($item_material->status_verif == 3)

                      <button class = "btn btn-success mb-2" disabled>Sudah Approve Manager</button>  
                      <br>
                      <button class = "btn btn-primary mb-2" disabled>Komponen Sesuai</button>  

                      @endif

                       
                            <br>

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





