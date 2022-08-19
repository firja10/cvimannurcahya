@extends('template')

@section('title')

Edit Pembelian Material <?php echo $pembelian_material->nama ?>
    
@endsection



@section('judul')

Edit Pembelian Material <?php echo $pembelian_material->nama ?>

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
            <div class="card-header">
              {{-- <h3 class="card-title">DataTable with default features</h3> --}}
              <button class = "btn btn-dark" onclick="history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">

                <form action="{{route('pembelian_material.update', $pembelian_material->id)}}" method ="POST">
                    @csrf
                    @method('PATCH')

                    <div class="form-group">
                        <label for="kode">Kode Material</label>
                        <input id = "kode" type="text" class="form-control" name = "kode" placeholder="" value = "{{$pembelian_material->kode}}">
                    </div>
              
                    <div class="form-group">
                      <label for="nama">Nama Material</label>
                      <input id = "nama" type="text" class="form-control" name = "nama" placeholder="" value = "{{$pembelian_material->nama}}">
                  </div>
              
                               
                <div class="form-group">
                  <label for="jenis">Jenis</label>

                  <select name="jenis" id="jenis" class = "form-control">
                    <option value="{{$pembelian_material->jenis}}" selected>{{$pembelian_material->jenis}}</option>
                    <option value="AISI">AISI</option>
                    <option value="JIS">JIS</option>
                  </select>
                 
              </div>

              


              <div class="form-group">
                <label for="jumlah">Jumlah</label>
                <input id = "jumlah" type="number" class="form-control" name = "jumlah" placeholder="" value = "{{$pembelian_material->jumlah}}">
            </div>

            
            <div class="form-group">
                <label for="suplier">Supplier</label>
                <input id = "suplier" type="text" class="form-control" name = "suplier" placeholder="" value = "{{$pembelian_material->suplier}}">
            </div>



        
            <div class="form-group">
              <label for="harga_beli">Harga Beli</label>
              <input id = "harga_beli" type="number" class="form-control" name = "harga_beli" placeholder="" value = "{{$pembelian_material->harga_beli}}">
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