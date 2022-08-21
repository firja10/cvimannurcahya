@extends('template')

@section('title')

Data Repairing
    
@endsection

@section('judul')

Data Repairing
    
@endsection


@section('style')

<style>
    #data_repairing{
        background-color: white;
    }

    #data_repairing .nav-link {
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
              <button class = "btn btn-dark" onclick = "history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#RepairingModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Komponen Turbin</th>
                  <th>Nama Material</th>
                  <th>Jenis</th>
                  <th>Satuan</th>
                  <th>Jumlah</th>
                  <th>Keterangan</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($repairing as $item_repairing)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_repairing->komponen}}</td>
                    <td>{{$item_repairing->nama}}</td>
                    <td>{{$item_repairing->jenis}}</td>
                    <td>{{$item_repairing->satuan}}</td>
                    <td>{{$item_repairing->jumlah}}</td>
                    <td>{{$item_repairing->keterangan}}</td>
                    <td>

                        <a href="" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('data_repairing.destroy', $item_repairing->id)}}" method = "POST" >
                            @csrf
                            @method('DELETE')
                            <button class = "btn  btn-danger">Hapus</button>
                        </form>

                        <br>

                        @if ($item_repairing->status_verif == 0 || $item_repairing->status_verif == NULL)
                        <button type = "button" class="btn btn-warning">Belum diapprove</button>
                        @elseif($item_repairing->status_verif == 1)
                        <button type = "button" class="btn btn-primary mb-2">Sudah diapprove</button>  <br>
                        <button class ="btn btn-warning mt-2">Menunggu Kesesuaian Komponen</button>
                        
                        @elseif($item_repairing->status_verif == 2)
                        <button type = "button" class="btn btn-primary mb-2">Sudah diapprove</button> <br>

                        <form action="{{route('updateRepairingDilakukan', $item_repairing->id)}}" method = "POST">
                          @csrf
                          @method('PATCH')
                          
                          <button type="submit" class = "btn btn-dark mt-2">Komponen Sesuai, Laporkan bahwa Repairing Telah Dilakukan </button>


                        </form>

                      

                        @elseif($item_repairing->status_verif == 3)

                        <button type = "button" class="btn btn-primary mb-2">Sudah diapprove</button> <br>

                        <button class = "btn btn-success mt-2">Repairing Sudah Dilakukan</button>

                        
                        @endif
                     

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





