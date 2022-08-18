@extends('template')

@section('title')

Edit Data Material <?php echo $data_material->nama ?>
    
@endsection



@section('judul')

Edit Data Material <?php echo $data_material->nama ?>

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

                <form action="{{route('updateDataMaterials', $data_material->id)}}" method ="POST">
                    @csrf
                    @method('PATCH')

                    <div class="form-group">
                        <label for="kode">Kode Material</label>
                        <input id = "kode" type="text" class="form-control" name = "kode" placeholder="" value = "{{$data_material->kode}}">
                    </div>
              
                    <div class="form-group">
                      <label for="nama">Nama Material</label>
                      <input id = "nama" type="text" class="form-control" name = "nama" placeholder="" value = "{{$data_material->nama}}">
                  </div>
              
                  <div class="form-group">
                    <label for="L">Kategori</label>

                    {{-- <input id = "L" type="number" class="form-control" name = "L" placeholder="" value = "{{$data_material->L}}">  --}}
               
                    <?php 
                    
                    $kategori = DB::table('kategori_materials')->get();
                    
                    ?>

                    <select name="kategori" id="kategori" class = "form-control">
                      <option value="{{$data_material->kategori}}" selected>{{$data_material->kategori}}</option>
                      @foreach ($kategori as $item_kateg)
                        <option value="{{$item_kateg->nama_kategori}}">{{$item_kateg->nama_kategori}}</option>
                      @endforeach
                    </select>

                  </div>
              
                <div class="form-group">
                  <label for="jenis">Jenis</label>

                  <select name="jenis" id="jenis" class = "form-control">
                    <option value="{{$data_material->jenis}}" selected>{{$data_material->jenis}}</option>
                    <option value="AISI">AISI</option>
                    <option value="JIS">JIS</option>
                  </select>
                 
              </div>


              <div class="form-group">
                <label for="stock">Stock</label>
                <input id = "stock" type="number" class="form-control" name = "stock" placeholder="" value = "{{$data_material->stock}}">
            </div>
        
            <div class="form-group">
              <label for="harga_beli">Harga Beli</label>
              <input id = "harga_beli" type="number" class="form-control" name = "harga_beli" placeholder="" value = "{{$data_material->harga_beli}}">
          </div>
              

                    <button type = "submit" class = "btn btn-primary">Update Data Materials</button>

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