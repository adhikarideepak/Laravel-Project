<!DOCTYPE html>

<html lang="en">
<head>
<title>Order List</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link  href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<style>
   td.details-control {
    background: url('../resources/details_open.png') no-repeat center center;
    cursor: pointer;
}
tr.details td.details-control {
    background: url('../resources/details_close.png') no-repeat center center;
}
b {
  font-weight: bold;
  color:red;
}
</style>
</head>
      <body>
         <div class="container">
               <h2>Order List</h2>
            <table class="table table-bordered" id="laravel_datatable">
               <thead>
                  <tr>
                     <th>customer name</th>
                     <th>total amount</th>
                     <th>status</th>
                     <th></th>

                  </tr>
               </thead>
            </table>
         </div>
   <script>
            function format ( d ) {
    return 'Customer name: '+d.name+'<br>'+
            'Product name: '+d.pname+'<br>'+'';
}

$(document).ready(function() {
    var dt = $('#laravel_datatable').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax": "{{ url('orders-list') }}",
        "columns": [
                    { data: 'name' },
                    { data: 'total_amount' },
                    { data: 'status' },
                    {
                "class":          "details-control",
                "orderable":      false,
                "data":           null,
                "defaultContent": "<b> + </b>"
            }
        ],
        "order": [[1, 'asc']]
    } );

    // Array to track the ids of the details displayed rows
    var detailRows = [];

    $('#laravel_datatable tbody').on( 'click', 'tr td.details-control', function () {
        var tr = $(this).closest('tr');
        var row = dt.row( tr );
        var idx = $.inArray( tr.attr('id'), detailRows );

        if ( row.child.isShown() ) {
            tr.removeClass( 'details' );
            row.child.hide();

            // Remove from the 'open' array
            detailRows.splice( idx, 1 );
        }
        else {
            tr.addClass( 'details' );
            row.child( format( row.data() ) ).show();

            // Add to the 'open' array
            if ( idx === -1 ) {
                detailRows.push( tr.attr('id') );
            }
        }
    } );

    // On each draw, loop over the `detailRows` array and show any child rows
    dt.on( 'draw', function () {
        $.each( detailRows, function ( i, id ) {
            $('#'+id+' td.details-control').trigger( 'click' );
        } );
    } );
} );
  </script>
   </body>
</html>