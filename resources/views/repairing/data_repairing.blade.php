@extends('template')

@section('title')

Data Repairing
    
@endsection

@section('judul')

Data Repairing
    
@endsection


@section('style')

<style>
    #data_repairing{
        background-color: white;
    }

    #data_repairing .nav-link {
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
              <button class = "btn btn-dark" onclick = "history.back()"> <i class = "fas fa-arrow-left"></i> Previous</button>
              <button class = "btn btn-success ml-auto" data-toggle = "modal" data-target = "#RepairingModal" > <i class = "fas fa-plus"></i> Tambah Data</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="repairing_tabel" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No. </th>
                  <th>Komponen Turbin</th>
                  <th>Nama Material</th>
                  <th>Jenis</th>
                  <th>Satuan</th>
                  <th>Jumlah</th>
                  <th>Tanggal Masuk</th>
                  {{-- <th>Keterangan</th> --}}
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                    
                    <?php
                        
                        $no = 1;
                        ?>
                @foreach ($repairing->reverse() as $item_repairing)
                
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td>{{$item_repairing->komponen}}</td>
                    <td>{{$item_repairing->nama}}</td>
                    <td>{{$item_repairing->jenis}}</td>
                    <td>{{$item_repairing->satuan}}</td>
                    <td>{{$item_repairing->jumlah}}</td>
                    <td>{{$item_repairing->tanggal_masuk}}</td>
                    {{-- <td>{{$item_repairing->keterangan}}</td> --}}
                    <td>

                        <a href="" class = "btn btn-success">Edit</a>
                            <br> <br>
                        <form action="{{route('data_repairing.destroy', $item_repairing->id)}}" method = "POST" >
                            @csrf
                            @method('DELETE')
                            <button class = "btn  btn-danger">Hapus</button>
                        </form>

                        <br>



                        @if ($item_repairing->status_repairing == NULL || $item_repairing->status_repairing == 0)

                        <form action="{{route('UpdateKomponenSesuai', $item_repairing->komponen)}}" method="POST" id = "update_sesuai">
                          @csrf
                          @method('PATCH')

                      
                          <button class="btn btn-dark mt-2 mb-2" type = "submit">Lapor Material Sesuai</button>
                        </form>

                        
                        <form action="{{route('UpdateKomponenTidakSesuai', $item_repairing->komponen)}}" method="POST" id = "update_tidak_sesuai">
                          @csrf
                          @method('PATCH')
                          <button class="btn btn-warning" type = "submit">Lapor Material Tidak Sesuai, Minta Koreksi</button>
                        </form> 

                            
                        @elseif($item_repairing->status_repairing == 2)

                        <button class = "btn btn-success disabled">Material Sesuai</button>

                        <form action="{{route('updateRepairingDilakukan', $item_repairing->komponen)}}" method = "POST" id = "update_repairing">
                          @csrf
                          @method('PATCH')
                          <button class = "btn btn-dark mt-3" type = "submit">Konfirmasi Repairing Telah Dilakukan</button>
                        </form>

                        @elseif($item_repairing->status_repairing == 1)

                        <button class = "btn btn-success disabled">Repairing Telah Dilakukan</button>
                            
                        @endif








                        {{-- @if ($item_repairing->status_verif == 0 || $item_repairing->status_verif == NULL)
                        <button type = "button" class="btn btn-warning">Belum diapprove</button>
                        @elseif($item_repairing->status_verif == 1)
                        <button type = "button" class="btn btn-primary mb-2">Sudah diapprove</button>  <br>
                        <button class ="btn btn-warning mt-2">Menunggu Kesesuaian Komponen</button>
                        
                        @elseif($item_repairing->status_verif == 2)
                        <button type = "button" class="btn btn-primary mb-2">Sudah diapprove</button> <br>

                        <form action="{{route('updateRepairingDilakukan', $item_repairing->id)}}" method = "POST">
                          @csrf
                          @method('PATCH')
                          
                          <button type="submit" class = "btn btn-dark mt-2">Laporkan bahwa Repairing Telah Dilakukan </button>


                        </form>

                      

                        @elseif($item_repairing->status_verif == 3)

                        <button type = "button" class="btn btn-primary mb-2">Sudah diapprove</button> <br>

                        <button class = "btn btn-success mt-2">Repairing Sudah Dilakukan</button>

                        
                        @endif
                      --}}





                    </td>
                </tr>


                @endforeach


               
               </tbody>
                <tfoot>
                <tr>
                    <th>No. </th>
                    <th>Komponen Turbin</th>
                    <th>Nama Material</th>
                    <th>Jenis</th>
                    <th>Satuan</th>
                    <th>Jumlah</th>
                    <th>Tanggal Masuk</th>
                    {{-- <th>Keterangan</th> --}}
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




@push('script')

<?php

// $status_repair = $item_repairing->status_repairing;

?>













<script>

  
    var groupColumn_repair = 1;
        var table_repair = $('#repairing_tabel').DataTable({
            columnDefs: [{ visible: false, targets: groupColumn_repair }],
            // order: [[groupColumn, 'asc']],
            order: [[6, 'desc']],
           buttons: ["copy", "csv", "excel", "pdf", "print"],
    
            displayLength: 25,
          
            drawCallback: function (settings) {
                var api_repair = this.api();
                var rows_repair = api_repair.rows({ page: 'current' }).nodes();
                var last_repair = null;
     
                api_repair
                    .column(groupColumn_repair, { page: 'current' })
                    .data()
                    .each(function (group, i) {
                        if (last_repair !== group) {
  
                          $(rows_repair)
                                .eq(i)
                                .before('<tr class="group"><td colspan="7" style="background-color:gray;color:white;" class = "justify-content-center" >' + '<h6 class = "mr-auto">' + group + '</h6> (Untuk konfirmasi, silakan klik tombol Lapor Material Sesuai / Konfirmasi Repairing Telah Dilakukan pada salah satu data di bawah)</td></tr>');
     
                            last_repair = group;
  
  
                          }
                    });
            },
        }).buttons().container().appendTo('#repairing_tabel_wrapper .col-md-6:eq(0)');
  
        
  
    
    </script>






































{{-- 

<script>


var status_repair =  

  var groupColumn_repair = 1;
      var table_repair = $('#repairing_tabel').DataTable({
          columnDefs: [{ visible: false, targets: groupColumn_repair }],
          // order: [[groupColumn, 'asc']],
          order: [[5, 'desc']],
         buttons: ["copy", "csv", "excel", "pdf", "print"],
  
          displayLength: 25,
        
          drawCallback: function (settings) {
              var api_repair = this.api();
              var rows_repair = api_repair.rows({ page: 'current' }).nodes();
              var last_repair = null;
   
              api_repair
                  .column(groupColumn_repair, { page: 'current' })
                  .data()
                  .each(function (group, i) {
                      if (last_repair !== group) {

                        if(status_repair == NULL || status_repair == 0)
                        {
                          $(rows_repair)
                              .eq(i)
                              .before('<tr class="group"><td colspan="7" style="background-color:gray;color:white;" class = "justify-content-center" >' + '<h6 class = "mr-auto">' + group + '</h6>' + '<button class = "btn btn-primary" form = "update_sesuai">Komponen Sesuai</button> &nbsp; <button class = "btn btn-danger" form = "update_tidak_sesuai">Komponen Tidak Sesuai</button> </td></tr>');
   
                          last_repair = group;
                        }
                      

                        else if(status_repair == 2) {

                          $(rows_repair)
                              .eq(i)
                              .before('<tr class="group"><td colspan="7" style="background-color:gray;color:white;" class = "justify-content-center" >' + '<h6 class = "mr-auto">' + group + '</h6>' + '<button class = "btn btn-warning" form = "update_repairing">Lakukan Repairing</button> </td></tr>');
   
                          last_repair = group;


                        }

                        else if(status_repair == 1)
                        {


                          $(rows_repair)
                              .eq(i)
                              .before('<tr class="group"><td colspan="7" style="background-color:gray;color:white;" class = "justify-content-center" >' + '<h6 class = "mr-auto">' + group + '</h6>' + '<button class = "btn btn-dark">Repairing Telah Dilakukan</button> </td></tr>');
   
                          last_repair = group;


                        }




                        }
                  });
          },
      }).buttons().container().appendTo('#repairing_tabel_wrapper .col-md-6:eq(0)');

      

  
  </script> --}}




















{{-- 
@if ($item_repairing->status_repairing == NULL || $item_repairing->status_repairing == 0)






<script>


  var groupColumn_repair = 1;
      var table_repair = $('#repairing_tabel').DataTable({
          columnDefs: [{ visible: false, targets: groupColumn_repair }],
          // order: [[groupColumn, 'asc']],
          order: [[5, 'desc']],
         buttons: ["copy", "csv", "excel", "pdf", "print"],
  
          displayLength: 25,
          drawCallback: function (settings) {
              var api_repair = this.api();
              var rows_repair = api_repair.rows({ page: 'current' }).nodes();
              var last_repair = null;
   
              api_repair
                  .column(groupColumn_repair, { page: 'current' })
                  .data()
                  .each(function (group, i) {
                      if (last_repair !== group) {
                          $(rows_repair)
                              .eq(i)
                              .before('<tr class="group"><td colspan="7" style="background-color:gray;color:white;" class = "justify-content-center" >' + '<h6 class = "mr-auto">' + group + '</h6>' + '<button class = "btn btn-primary" form = "update_sesuai">Komponen Sesuai</button> &nbsp; <button class = "btn btn-danger" form = "update_tidak_sesuai">Komponen Tidak Sesuai</button> </td></tr>');
   
                          last_repair = group;
                      }
                  });
          },
      }).buttons().container().appendTo('#repairing_tabel_wrapper .col-md-6:eq(0)');

      

  
  </script>








    
@elseif($item_repairing->status_repairing == 2)













<script>


  var groupColumn_repair = 1;
      var table_repair = $('#repairing_tabel').DataTable({
          columnDefs: [{ visible: false, targets: groupColumn_repair }],
          // order: [[groupColumn, 'asc']],
          order: [[5, 'desc']],
         buttons: ["copy", "csv", "excel", "pdf", "print"],
  
          displayLength: 25,
          drawCallback: function (settings) {
              var api_repair = this.api();
              var rows_repair = api_repair.rows({ page: 'current' }).nodes();
              var last_repair = null;
   
              api_repair
                  .column(groupColumn_repair, { page: 'current' })
                  .data()
                  .each(function (group, i) {
                      if (last_repair !== group) {
                          $(rows_repair)
                              .eq(i)
                              .before('<tr class="group"><td colspan="7" style="background-color:gray;color:white;" class = "justify-content-center" >' + '<h6 class = "mr-auto">' + group + '</h6>' + '<button class = "btn btn-dark" form = "update_reparing">Lakukan Repairing</button></td></tr>');
   
                          last_repair = group;
                      }
                  });
          },
      }).buttons().container().appendTo('#repairing_tabel_wrapper .col-md-6:eq(0)');

      

  
  </script>











@elseif($item_repairing->status_repairing == 1)







<script>







  var groupColumn_repair = 1;
      var table_repair = $('#repairing_tabel').DataTable({
          columnDefs: [{ visible: false, targets: groupColumn_repair }],
          // order: [[groupColumn, 'asc']],
          order: [[5, 'desc']],
         buttons: ["copy", "csv", "excel", "pdf", "print"],
  
          displayLength: 25,
          drawCallback: function (settings) {
              var api_repair = this.api();
              var rows_repair = api_repair.rows({ page: 'current' }).nodes();
              var last_repair = null;
   
              api_repair
                  .column(groupColumn_repair, { page: 'current' })
                  .data()
                  .each(function (group, i) {
                      if (last_repair !== group) {
                          $(rows_repair)
                              .eq(i)


                              .before('<tr class="group"><td colspan="7" style="background-color:gray;color:white;" class = "justify-content-center" >' + '<h6 class = "mr-auto">' + group + '</h6>' + '<button class = "btn btn-dark">Repairing Berhasil Dilakukan</button></td></tr>');


                              
                          last_repair = group;
                      }
                  });
          },
      }).buttons().container().appendTo('#repairing_tabel_wrapper .col-md-6:eq(0)');

      

  
  </script>





    
@endif --}}



    
@endpush
