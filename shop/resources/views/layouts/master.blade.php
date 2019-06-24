
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Laravel</title>
   <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link rel="stylesheet" href="{{asset('css/app.css')}}">


</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper" id="app">


  <header class="main-header">


    <a href="#" class="logo">
      <span class="logo-mini"><b>Dashboard</b></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">

      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

    </nav>
  </header>

  <aside class="main-sidebar">


    <section class="sidebar">


      <div class="user-panel">
        <!-- <div class="pull-left image">
          <img src="{{asset('images/avatar5.png')}}" class="img-circle" alt="User Image">
        </div> -->
        <div class="pull-left info">
          <p>{{Auth::user()->name}}</p>
          <!-- Status -->
          <!-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a> -->
        </div>
      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">



        @if ($user->isAn('admin', 'user-manager'))
         <li class="active"><a href="{{url('customer_list ')}}"><i class="fa fa-microchip"></i> <span><b>customer</b></span></a></li>
        @endif

        @if ($user->isAn('admin', 'shop-manager'))
         <li class="active"><a href="{{url('product_list')}}"><i class="fa fa-microchip"></i> <span><b>Products</b></span></a></li>
        @endif


        @if ($user->isAn('admin', 'shop-manager'))
         <li class="active"><a href="{{url('order_list')}}"><i class="fa fa-microchip"></i> <span><b>Orders</b></span></a></li>
        @endif

        <!-- for future if we need add another new role then we can use this section  -->

        <!-- @if ($user->isAn('admin'))
         <li class="active"><a href="{{url('addnewrole')}}"><i class="fa fa-microchip"></i> <span><b>Add Role</b></span></a></li>
        @endif -->

        <li class="">
           <a href="{{ route('logout') }}"
                onclick="event.preventDefault();
                         document.getElementById('logout-form').submit();">
             <i class="fa fa-power-off text-red"></i>   <span>Logout</span>
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
            </form>
        </li>

      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">


    <!-- Main content -->
    <section class="content container-fluid">
        @yield('content')

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->



</div>


<script src="{{asset('js/app.js')}}"></script>



</body>
</html>