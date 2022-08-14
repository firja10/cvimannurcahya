@extends('template')

@section('title')

Data Komponen <?php echo $komponen_turbin->nama_komponen ?>
    
@endsection



@section('judul')

Data Komponen <?php echo $komponen_turbin->nama_komponen ?>


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

                <form action="{{route('komponen_turbin.update', $komponen_turbin->id)}}" method ="POST">
                    @csrf
                    @method('PATCH')
                    <div class="form-group">
                        <label for="kode_komponen">Kode Komponen</label>
                        <input class = "form-control" type="text" name="kode_komponen" id="kode_komponen" value = {{$komponen_turbin->kode_komponen}}>
                    </div>

                    <div class="form-group">
                        <label for="nama_komponen">Nama Komponen</label>
                        <input class = "form-control" type="text" name="nama_komponen" id="nama_komponen" value = {{$komponen_turbin->nama_komponen}}>
                    </div>

                    <button type = "submit" class = "btn btn-primary">Update Data</button>

                </form>







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