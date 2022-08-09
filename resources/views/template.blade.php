<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> @yield('title') </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('bootstrap/plugins/fontawesome-free/css/all.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css')}}">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="{{asset('bootstrap/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{asset('bootstrap/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <!-- JQVMap -->
  <link rel="stylesheet" href="{{asset('bootstrap/plugins/jqvmap/jqvmap.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('bootstrap/dist/css/adminlte.min.css')}}">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{asset('bootstrap/plugins/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="{{asset('bootstrap/plugins/daterangepicker/daterangepicker.css')}}">
  <!-- summernote -->
  <link rel="stylesheet" href="{{asset('bootstrap/plugins/summernote/summernote-bs4.min.css')}}">


  <style>
    .main-sidebar{
        background-color:#ca0b00;
    }
  </style>



@yield('style')






</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    {{-- <img class="animation__shake" src="{{asset('bootstrap/dist/img/AdminLTELogo.png')}}" alt="AdminLTELogo" height="60" width="60"> --}}
    <img class="animation__shake" src="{{asset('logo_cv.jpg')}}" alt="AdminLTELogo" height="120" width="240">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      {{-- <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li> --}}
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        {{-- <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a> --}}
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="{{asset('bootstrap/dist/img/user1-128x128.jpg')}}" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="{{asset('bootstrap/dist/img/user8-128x128.jpg')}}" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="{{asset('bootstrap/dist/img/user3-128x128.jpg')}}" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
   
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>

    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{asset('logo_cv.jpg')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8; border-radius:100px">
      <span class="brand-text font-weight-light">CV. INC</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('bootstrap/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
          <span style = "font-size:12px" class = "text-white">
          <?php 
            
            $manager = Auth::user()->is_manager;
            $ppic = Auth::user()->is_ppic;
            $bagiangudang = Auth::user()->is_bagiangudang ;
            $bagianrepairing = Auth::user()->is_bagianrepairing;

            if($manager == 1){
              echo "Manager";
            }

            elseif ($ppic == 1) {
              # code...
              echo "PPIC";
            }

            elseif ($bagiangudang == 1) {
              # code...
              echo "Bagian Gudang";
            }

            elseif ($bagianrepairing == 1) {
              # code...
              echo "Bagian Repairing";
            }
            
            ?>
          </span>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->



            <li class="nav-item" id = "home">
            <a href="{{url('/')}}" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Home
              </p>
            </a>
          </li>


         <li class="nav-item" id = "komponen_turbin">
            <a href="{{url('/komponen_turbin')}}" class="nav-link">
              <i class="nav-icon fas fa-cogs"></i>
              <p>
                Data Komponen Turbin
              </p>
            </a>
          </li>


          <li class="nav-item menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cubes"></i>
              <p>
               Data Material
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item" id = "cast_steel">
                <a href="{{url('/data_material/cast_steel')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cast Steel</p>
                </a>
              </li>
              <li class="nav-item" id = "carbon_steel">
                <a href="{{url('/data_material/carbon_steel')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Carbon Steel</p>
                </a>
              </li>
              <li class="nav-item" id = "stainless_steel">
                <a href="{{url('/data_material/stainless_steel')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Stainless Steel</p>
                </a>
              </li>
            </ul>
          </li>



          <li class="nav-item" id = "kebutuhan_material">
            <a href="{{url('/kebutuhan_material')}}" class="nav-link">
              <i class="nav-icon fas fa-puzzle-piece"></i>
              <p>
                Data Kebutuhan Material
              </p>
            </a>
          </li>




          <li class="nav-item" id = "pembelian_material">
            <a href="{{url('/pembelian_material')}}" class="nav-link">
              <i class="nav-icon fas fa-credit-card"></i>
              <p>
                Data Pembelian Material
              </p>
            </a>
          </li>
          

          
          <li class="nav-item">
            <a href="pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-wrench"></i>
              <p>
                Data Repairing
              </p>
            </a>
          </li>





          
          <li class="nav-item menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-check-square"></i>
              <p>
               Data Persetujuan
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Kebutuhan Material</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Pembelian Material</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Repairing</p>
                </a>
              </li>
            </ul>
          </li>



          <li class="nav-item">
            <a class="nav-link" href="{{ route('logout') }}"
                onclick="event.preventDefault();
                              document.getElementById('logout-form').submit();">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Logout
              </p>
            </a>


            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
              @csrf
          </form>





          </li>



        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">@yield('judul')</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            {{-- <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol> --}}
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->





    @yield('content')










  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer bg-dark">
    <strong>Copyright &copy; 2022 <a href="{{url('/')}}">CV IMAN NUR CAHYA</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      {{-- <b>Version</b> 3.2.0 --}}
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->







<form action="{{route('komponen_turbin.store')}}" method = "POST">
  @csrf

<!-- Modal -->
<div class="modal fade" id="DataTurbinModal" tabindex="-1" aria-labelledby="DataTurbinModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="DataTurbinModalLabel">Tambah Data Turbin</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        

        <div class="form-group">
          <label for="kode_komponen">Kode Komponen</label>
          <input id = "kode_komponen" type="text" class="form-control" name = "kode_komponen" placeholder="Kode Komponen">
      </div>

      <div class="form-group">
        <label for="nama_komponen">Nama Komponen</label>
        <input id = "nama_komponen" type="text" class="form-control" name = "nama_komponen" placeholder="Nama Komponen">
    </div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</form>

















<form action="{{route('CastSteelStore')}}" method = "POST">
  @csrf

<!-- Modal -->
<div class="modal fade" id="CastSteelModal" tabindex="-1" aria-labelledby="CastSteelModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="CastSteelLabel">Tambah Data Cast Steel</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        

        <div class="form-group">
          <label for="kode">Kode Material</label>
          <input id = "kode" type="text" class="form-control" name = "kode" placeholder="Kode Material">
      </div>

      <div class="form-group">
        <label for="nama">Nama Material</label>
        <input id = "nama" type="text" class="form-control" name = "nama" placeholder="Nama Material">
    </div>


    <div class="form-group">
      <label for="jenis">Jenis</label>
      <select name="jenis" id="jenis" class = "form-control">
        <option value="AISI">AISI</option>
        <option value="JIS">JIS</option>
      </select>
  </div>



<div class="form-group">
  <label for="stock">Stock</label>
  <input id = "stock" type="number" class="form-control" name = "stock" placeholder="Stock">
</div>


<div class="form-group">
  <label for="harga_beli">Harga Beli</label>
  <input id = "harga_beli" type="number" class="form-control" name = "harga_beli" placeholder="Harga Beli">
</div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</form>














<form action="{{route('CarbonSteelStore')}}" method = "POST">
  @csrf

<!-- Modal -->
<div class="modal fade" id="CarbonSteelModal" tabindex="-1" aria-labelledby="CarbonSteelModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="CastSteelLabel">Tambah Data Carbon Steel</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        

        <div class="form-group">
          <label for="kode">Kode Material</label>
          <input id = "kode" type="text" class="form-control" name = "kode" placeholder="Kode Material">
      </div>

      <div class="form-group">
        <label for="nama">Nama Material</label>
        <input id = "nama" type="text" class="form-control" name = "nama" placeholder="Nama Material">
    </div>


    <div class="form-group">
      <label for="jenis">Jenis</label>
      <select name="jenis" id="jenis" class = "form-control">
        <option value="AISI">AISI</option>
        <option value="JIS">JIS</option>
      </select>
  </div>



<div class="form-group">
  <label for="stock">Stock</label>
  <input id = "stock" type="number" class="form-control" name = "stock" placeholder="Stock">
</div>


<div class="form-group">
  <label for="harga_beli">Harga Beli</label>
  <input id = "harga_beli" type="number" class="form-control" name = "harga_beli" placeholder="Harga Beli">
</div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</form>











<form action="{{route('kebutuhan_material.store')}}" method = "POST">
  @csrf

<!-- Modal -->
<div class="modal fade" id="KebutuhanMaterialModal" tabindex="-1" aria-labelledby="KebutuhanMaterialModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="KebutuhanMaterialModalLabel">Tambah Kebutuhan Material</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        

        <div class="form-group">
          <label for="komponen">Komponen Turbin</label>
          <input id = "komponen" type="text" class="form-control" name = "komponen" placeholder="Komponen Turbin">
      </div>

      <div class="form-group">
        <label for="nama">Nama Material</label>
        <input id = "nama" type="text" class="form-control" name = "nama" placeholder="Nama Material">
    </div>

    <div class="form-group">
      <label for="jenis">Jenis</label>
      <select name="jenis" id="jenis" class = "form-control">
        <option value="AISI">AISI</option>
        <option value="JIS">JIS</option>
      </select>
  </div>



<div class="form-group">
  <label for="satuan">Satuan</label>
  <input id = "satuan" type="text" class="form-control" name = "satuan" placeholder="Satuan">
</div>

<div class="form-group">
  <label for="jumlah">Jumlah</label>
  <input id = "jumlah" type="number" class="form-control" name = "jumlah" placeholder="Jumlah">
</div>



      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</form>














<form action="{{route('StainlessSteelStore')}}" method = "POST">
  @csrf

<!-- Modal -->
<div class="modal fade" id="StainlessSteelModal" tabindex="-1" aria-labelledby="StainlessSteelModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="StainlessSteelLabel">Tambah Data Carbon Steel</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        

        <div class="form-group">
          <label for="kode">Kode Material</label>
          <input id = "kode" type="text" class="form-control" name = "kode" placeholder="Kode Material">
      </div>

      <div class="form-group">
        <label for="nama">Nama Material</label>
        <input id = "nama" type="text" class="form-control" name = "nama" placeholder="Nama Material">
    </div>


    <div class="form-group">
      <label for="jenis">Jenis</label>
      <select name="jenis" id="jenis" class = "form-control">
        <option value="AISI">AISI</option>
        <option value="JIS">JIS</option>
      </select>
  </div>



<div class="form-group">
  <label for="stock">Stock</label>
  <input id = "stock" type="number" class="form-control" name = "stock" placeholder="Stock">
</div>


<div class="form-group">
  <label for="harga_beli">Harga Beli</label>
  <input id = "harga_beli" type="number" class="form-control" name = "harga_beli" placeholder="Harga Beli">
</div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</form>














<form action="{{route('pembelian_material.store')}}" method = "POST">
  @csrf

<!-- Modal -->
<div class="modal fade" id="PembelianMaterialModal" tabindex="-1" aria-labelledby="PembelianMaterialModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="PembelianMaterialModalLabel">Tambah Data Pembelian Material</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        

        <div class="form-group">
          <label for="kode">Kode Material</label>
          <input id = "kode" type="text" class="form-control" name = "kode" placeholder="Kode Material">
      </div>

      <div class="form-group">
        <label for="nama">Nama Material</label>
        <input id = "nama" type="text" class="form-control" name = "nama" placeholder="Nama Material">
    </div>


    <div class="form-group">
      <label for="jenis">Jenis</label>
      <input type="text" class="form-control" name = "jenis" id = "jenis" placeholder="Jenis">

      {{-- <select name="jenis" id="jenis" class = "form-control">
        <option value="AISI">AISI</option>
        <option value="JIS">JIS</option>
      </select> --}}
  </div>



<div class="form-group">
  <label for="satuan">Satuan</label>
  <input id = "satuan" type="text" class="form-control" name = "satuan" placeholder="Satuan">
</div>

<div class="form-group">
  <label for="jumlah">Jumlah</label>
  <input id = "jumlah" type="number" class="form-control" name = "jumlah" placeholder="Jumlah">
</div>


<div class="form-group">
  <label for="harga_beli">Harga Beli</label>
  <input id = "harga_beli" type="number" class="form-control" name = "harga_beli" placeholder="Harga Beli">
</div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</form>















<!-- jQuery -->
<script src="{{asset('bootstrap/plugins/jquery/jquery.min.js')}}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{asset('bootstrap/plugins/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="{{asset('bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- ChartJS -->
<script src="{{asset('bootstrap/plugins/chart.js/Chart.min.js')}}"></script>
<!-- Sparkline -->
<script src="{{asset('bootstrap/plugins/sparklines/sparkline.js')}}"></script>
<!-- JQVMap -->
<script src="{{asset('bootstrap/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
<script src="{{asset('bootstrap/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
<!-- jQuery Knob Chart -->
<script src="{{asset('bootstrap/plugins/jquery-knob/jquery.knob.min.js')}}"></script>
<!-- daterangepicker -->
<script src="{{asset('bootstrap/plugins/moment/moment.min.js')}}"></script>
<script src="{{asset('bootstrap/plugins/daterangepicker/daterangepicker.js')}}"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="{{asset('bootstrap/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
<!-- Summernote -->
<script src="{{asset('bootstrap/plugins/summernote/summernote-bs4.min.js')}}"></script>
<!-- overlayScrollbars -->
<script src="{{asset('bootstrap/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('bootstrap/dist/js/adminlte.js')}}"></script>
<!-- AdminLTE for demo purposes -->
{{-- <script src="{{asset('bootstrap/dist/js/demo.js')}}"></script> --}}
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('bootstrap/dist/js/pages/dashboard.js')}}"></script>
</body>
</html>
