@extends('template')

@section('title')

Notifikasi <?php echo $notifikasi->nama_notifikasi ?>
    
@endsection



@section('judul')

Notifikasi <?php echo $notifikasi->nama_notifikasi ?>

@endsection



@section('style')

<style>
        /* #data_material {
        background-color: white;
    }

    #data_material .nav-link {
        color:firebrick;
    } */
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

              <center>

        

              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                      <h4>{{$notifikasi->nama_notifikasi}}</h4>
                  </div>
                </div>


                <br>

                <div class="row d-flex justify-content-center">
                  <div class="col-md-12">
                    <span>
                      Pengirim : {{$notifikasi->pengirim}}

                      <br>
                      Tanggal Masuk : {{$notifikasi->created_at}}
                      <br> <br>
                    </span>
                  </div>
{{-- 
                  <div class="col-md-9 ml-auto">

                   

                  </div> --}}
                </div>

                <div class="row">
                  <div class="col-md-12">
                    <p>{{$notifikasi->deskripsi}}</p>
                  </div>
                </div>

                <br>



               <div class="row">
                  <div class="col-md-12">
                    <p>{{$notifikasi->deskripsi_link}}<a href = "{{url($notifikasi->link_notif)}}">Link Tautan</a></p>
                  </div>
                </div>



              </div>


               

            </center>





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