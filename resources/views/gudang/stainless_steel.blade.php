@extends('template')

@section('title')

Data Material Stainless Steel
    
@endsection


@section('judul')

Data Material Stainless Steel
    
@endsection

@section('content')





@section('style')

<style>
    #stainless_steel{
        background-color:white;
    }

    #stainless_steel .nav-link {
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
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#StainlessSteelModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="stainless_steel" class="table table-bordered table-striped">
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
                @foreach ($stainless_steel as $item_stainless_steel)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_stainless_steel->nama}}</td>
                    <td>{{$item_stainless_steel->kategori}}</td>
                    <td>{{$item_stainless_steel->jenis}}</td>
                    <td>{{$item_stainless_steel->stock}}</td>
                    <td>{{$item_stainless_steel->harga_beli}}</td>
             
                    <td>

                        <a href="" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('StainlessSteelDelete', $item_stainless_steel->id)}}" method = "POST" >
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