@extends('template')

@section('title')

Update Data Material SS ROP <?php echo $data_material->nama ?>
    
@endsection



@section('judul')

Update Data Material SS ROP <?php echo $data_material->nama ?>


@endsection



@section('style')

<style>
        #data_material {
        background-color: white;
    }

    #data_material .nav-link {
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

                <form action="{{route('updateSS_ROP', $data_material->id)}}" method ="POST">
                    @csrf
                    @method('PATCH')

                    <div class="form-group">
                        <label for="d_ss">Demand (SS)</label>
                        <input id = "d_ss" type="number" class="form-control" name = "d_ss" placeholder="" value = "{{$data_material->d_ss}}">
                    </div>
              
                    <div class="form-group">
                      <label for="Z">Z</label>
                      <input id = "Z" type="number" class="form-control" name = "Z" placeholder="" step = any value = "{{$data_material->Z}}">
                  </div>
              
                  <div class="form-group">
                    <label for="L">L (Lead Time)</label>
                    <input id = "L" type="number" class="form-control" name = "L" placeholder="" value = "{{$data_material->L}}"> 
                </div>
              
                <div class="form-group">
                  <label for="d_rop">Demand (ROP)</label>
                  <input id = "d_rop" type="number" class="form-control" name = "d_rop" placeholder="" value = "{{$data_material->d_rop}}">
              </div>
              

                    <button type = "submit" class = "btn btn-primary">Update SS dan ROP</button>

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