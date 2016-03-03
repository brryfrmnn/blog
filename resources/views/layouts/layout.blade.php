<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <!-- Material Design fonts -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Loading Bootstrap -->
    <link href="{{URL::asset('assets/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Material DesignCSS -->
    <link href="{{URL::asset('assets/css/bootstrap-material-design.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets/css/dataTables.bootstrap.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets/css/ripples.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets/css/style.css')}}" rel="stylesheet">

    <link rel="shortcut icon" href="img/favicon.ico">
    <style type="text/css">
     body{
         background-color: #fff;
     }
    </style>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other assets/js at the end of file. -->
    <!--[if lt IE 9]>
      <script src="assets/js/vendor/html5shiv.assets/js"></script>
      <script src="assets/js/vendor/respond.min.assets/js"></script>
    <![endif]-->
  </head>
  <body>
    @include('layouts.navbar')
    <!-- /.container -->

    <div class="container">
      <div class="row">
        @yield('content')
      </div>
    </div>

    <!-- jQuery (necessary for Flat UI's JavaScript plugins) -->
    <script src="{{URL::asset('assets/js/jquery.min.js')}}"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="{{URL::asset('assets/js/bootstrap.min.js')}}"></script>
    <script src="{{URL::asset('assets/js/material.min.js')}}"></script>
    <script src="{{URL::asset('assets/js/ripples.min.js')}}"></script>
    <script src="{{URL::asset('assets/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{URL::asset('assets/js/dataTables.bootstrap.js')}}"></script>
    
    <script>
      $.material.init();
      $.material.ripples();
      $.material.input();
      $.material.checkbox();
      $.material.radio();
    </script>
    @stack('scripts')
  </body>
</html>
