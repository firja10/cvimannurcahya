@extends('template')

@section('title')

Data Material Keseluruhan
    
@endsection


@section('judul')

Data Material Keseluruhan
    
@endsection

@section('content')





@section('style')

<style>
    #data_material_seluruh{
        background-color:white;
    }

    #data_material_seluruh .nav-link {
        color:firebrick;
    }
</style>
    
@endsection







<?php 

$ppic = Auth::user()->is_ppic == 1;

$gudang = Auth::user()->is_gudang == 1;

$manager = Auth::user()->is_manager == 1;

$repairing = Auth::user()->is_repairing == 1;

$pemilik = Auth::user()->is_pemilik == 1;



?>




  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">


          <div class="card">
            <div class="card-header justify-content-center d-flex">
           


              @if ($ppic || $pemilik)

                 {{-- <h3 class="card-title">DataTable with default features</h3> --}}
                 <button class = "btn btn-dark" onclick="history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
                  
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#CarbonSteelModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
              @else
                  
              @endif

            
            
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="data_material_semua_tabel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Kode Material</th>
                  <th>Nama Material</th>
                  <th>Kategori</th>
                  <th>Jenis</th>
                    <th>Stock</th>
                    <th>Safety Stock</th>
                    <th>Reorder Point</th>
                    <th>Average User</th>
                    <th>Keterangan</th>
                    <th>Supplier</th>
                    <th>Tanggal Masuk</th>
                    <th>Harga Beli</th>
                 
                    <th>Aksi</th>

                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($data_material as $item_material)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_material->kode}}</td>
                    <td>{{$item_material->nama}}</td>
                    <td>{{$item_material->kategori}}</td>
                    <td>{{$item_material->jenis}}</td>
                    <td>{{$item_material->stock}}</td>
                    <td>{{$item_material->SS}}</td>
                    <td>{{$item_material->ROP}}</td>
                    <td>{{$item_material->AU}}</td>
              
                    <td>
                      <br>

                      <?php 
                      
                      $ROP = $item_material->ROP;
                      $SS = $item_material->SS;


                      ?>

            
                      @if ($ROP>=$item_material->stock)
                      <a href="#" class = "btn btn-warning  mb-2">Warning ! Bahan Baku harus segera dibeli</a>
                      @elseif($ROP<$item_material->stock)
                      <a href="#" class = "btn btn-dark  mb-2">Bahan Baku Aman</a>   
                      @elseif($ROP == NULL || $SS == NULL) 
                      <a href="#" class = "btn btn-danger  mb-2">Segera Isi !</a>   
                      @endif
                
                    </td>

                    <td>{{$item_material->suplier}}</td>
              
                    <td>{{$item_material->tanggal_masuk}}</td>
                    <td>{{$item_material->harga_beli}}</td>
                  
             
                    <td>
                  




                        <br>
                        <a href="{{route('editDataMaterials', $item_material->id)}}" class = "btn btn-success">Edit</a>
                            <br>
                        <form action="{{route('HapusDataMaterials', $item_material->id)}}" method = "POST" >
                            @csrf
                            @method('DELETE')
                            <button class = "btn  btn-danger mt-2" type = "submit">Hapus</button>
                        </form>
                     
                 

                        
                        {{-- <button class="btn btn-primary mt-2 mb-2" data-toggle = "modal" data-target="#DataMaterialModal_{{ $item_material->id }}">Tambah SS dan ROP</button> --}}
                          
                        <a class="btn btn-primary mt-2 mb-2" href = "{{route('SS_ROP_edit', $item_material->id)}}">Tambah / Ganti SS dan ROP</a>

                    </td>
                </tr>


                @endforeach


               
               </tbody>
                <tfoot>
                <tr>
                    <th>No. </th>
                  <th>Kode Material</th>
                  <th>Nama Material</th>
                  <th>Kategori</th>
                  <th>Jenis</th>
                    <th>Stock</th>
                    <th>Safety Stock</th>
                    <th>Reorder Point</th>
                    <th>Average User</th>
                    <th>Keterangan</th>
                    <th>Supplier</th>
                   
                    <th>Tanggal Masuk</th>
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






@section('form_penting')


<form action="{{route('updateSS_ROP', $item_material->id)}}" method = "POST">
  @csrf
  @method('PATCH')

<!-- Modal -->
<div class="modal fade" id="DataMaterialModal_{{$item_material->id}}" tabindex="-1" aria-labelledby="DataMaterialModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="DataMaterialModalLabel">Tambah Data Safety Stock dan Reorder Point</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        

        <div class="form-group">
          <label for="d_ss">Demand (SS)</label>
          <input id = "d_ss" type="number" class="form-control" name = "d_ss" placeholder="">
      </div>

      <div class="form-group">
        <label for="Z">Z</label>
        <input id = "Z" type="number" class="form-control" name = "Z" placeholder="" step = "any">
    </div>

    <div class="form-group">
      <label for="L">L (Lead Time)</label>
      <input id = "L" type="number" class="form-control" name = "L" placeholder="">
  </div>

  <div class="form-group">
    <label for="d_rop">Demand (ROP)</label>
    <input id = "d_rop" type="number" class="form-control" name = "d_rop" placeholder="">
</div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
    </div>
  </div>
</div>

</form>


    
@endsection