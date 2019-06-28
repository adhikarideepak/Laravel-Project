<!DOCTYPE html>

<html lang="en">
<head>
<title>Product List</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link  href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"></script>
</head>
      <body>
         <div class="container">
               <h2>Product List</h2>

          <!-- Status Filter code   -->
            <table class="table table-bordered" id="laravel_datatable">
               <thead>
                  <tr>
                     <td>Status availability</td>
                     <td><select id="txtstatus">
                     <option></option>
                     <option>In Stock</option>
                     <option>Out of Stock</option>
                     </select></td>
                     <td></td>
                  </tr>
                   <!-- SFC End -->
                  <tr>
                     <th>Name</th>
                     <th>Price</th>
                     <th>Status</th>
                  </tr>
               </thead>
            </table>
         </div>
   <script>
   $(document).ready( function () {
      // jquery datatable initialization
      var datatableInstance = $('#laravel_datatable').DataTable({
           processing: true,
           serverSide: true,
           search: true,
           ajax: "{{ url('products-list') }}",
           columns: [
                    { data: 'pname' },
                    { data: 'price' },
                    { data: 'in_stock' }
                 ]
        });

      //   Apply custom search on jquery DataTable here
        oTable = $('#laravel_datatable').DataTable();
        $('#txtstatus').click(function(){
         //   Apply search for status availability
           oTable.columns(2).search($('#txtstatus').val().trim());
           oTable.draw();
        });
   });


  </script>
   </body>
</html>