@extends('template')

@section('title')

Data Material Cast Steel
    
@endsection


@section('judul')

Data Material Cast Steel
    
@endsection

@section('content')





@section('style')

<style>
    #cast_steel{
        background-color:white;
    }

    #cast_steel .nav-link {
        color:firebrick;
    }
</style>
    
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
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#CastSteelModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="cast_steel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Kode Material</th>
                  <th>Nama Material</th>
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
                @foreach ($cast_steel as $item_cast_steel)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_cast_steel->nama}}</td>
                    <td>{{$item_cast_steel->kategori}}</td>
                    <td>{{$item_cast_steel->jenis}}</td>
                    <td>{{$item_cast_steel->stock}}</td>
                    <td>{{$item_cast_steel->harga_beli}}</td>
             
                    <td>

                        <a href="" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('CastSteelDelete', $item_cast_steel->id)}}" method = "POST" >
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
                  <th>Kode Material</th>
                  <th>Nama Material</th>
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