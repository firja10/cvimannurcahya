@extends('template')



@section('title')

Dashboard

@endsection





@section('judul')

Selamat Datang di CV. Iman Nur Cahya
    
@endsection


@section('style')

<style>
  #home {
    background-color:white;

  }

  #home .nav-link {
    color:firebrick;
  }
</style>
    
@endsection






@section('content')
    





    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-info">
                <div class="inner">

                  <h3>
                  <?php 
                    
                    $komponen_turbin = DB::table('komponen_turbins')->count();

                    echo $komponen_turbin;
                    ?>

                  </h3>
  
                  <p>Data Komponen Turbin</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-success">
                <div class="inner">
                  <h3>
                    <?php 
                    
                    $data_material = DB::table('data_materials')->count();

                    echo $data_material;
                    ?>
                  </h3>
  
                  <p>Data Material</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-warning">
                <div class="inner">
                  <h3>
                    <?php 
                    
                    $kebutuhan_material = DB::table('kebutuhan_materials')->count();

                    echo $kebutuhan_material;
                    ?>
                  </h3>
  
                  <p>Data Kebutuhan Material</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-danger">
                <div class="inner">
                  <h3>
                    <?php 
                    
                    $pembelian_material = DB::table('pembelian_materials')->count();

                    echo $pembelian_material;
                    ?>
                  </h3>
  
                  <p>Data Pembelian Material</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
          </div>
          <!-- /.row -->
          <!-- Main row -->
          <div class="row">
            <!-- Left col -->



   







          </div>
          <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
      </section>
      <!-- /.content -->
  






      @endsection