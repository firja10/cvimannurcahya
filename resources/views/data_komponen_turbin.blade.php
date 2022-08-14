@extends('template')

@section('title')

Data Komponen Turbin
    
@endsection


@section('judul')

Data Komponen Turbin
    
@endsection



@section('style')

<style>
    #komponen_turbin {
        background-color: white;
    }

    #komponen_turbin .nav-link {
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
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#DataTurbinModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="komponen_turbin_tabel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Nama Komponen</th>
                  <th>Kode Komponen</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($komponen_turbin as $item_turbin)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_turbin->nama_komponen}}</td>
                    <td>{{$item_turbin->kode_komponen}}</td>
                    <td>

                        <a href="{{route('komponen_turbin.edit', $item_turbin->id)}}" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('komponen_turbin.destroy', $item_turbin->id)}}" method = "POST" >
                            @csrf
                            @method('DELETE')
                            <button class = "btn  btn-danger">Hapus</button>
                        </form>

                    </td>
                </tr>


                @endforeach


               
               </tbody>
                <tfoot>
                <tr>
                    <th>No. </th>
                    <th>Nama Komponen</th>
                    <th>Kode Komponen</th>
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