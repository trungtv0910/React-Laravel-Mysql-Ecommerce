<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  @yield('title')
    <!-- plugins:css -->
    <link rel="stylesheet" href="{{asset('vendors/simple-line-icons/css/simple-line-icons.css')}}">
    <link rel="stylesheet" href="{{asset('vendors/flag-icon-css/css/flag-icon.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendors/css/vendor.bundle.base.css')}}">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="{{asset('vendors/daterangepicker/daterangepicker.css')}}">
    <link rel="stylesheet" href="{{asset('vendors/chartist/chartist.min.css')}}">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="{{asset('images/favicon.png')}}"/>
    <link rel="stylesheet" href="{{asset('css/fontawesome/css/all.css')}}">
    @yield('css')
</head>
<style>
    .check_box{font-size: 16px}
    .page-header nav .breadcrumb-item {
        font-size: 80%;
    }
    .card .card-body {
        padding: 15px;
    }
</style>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
@include('admin.partials.navbar')
<!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
    @include('admin.partials.sidebar')
    <!-- partial -->

        <div class="main-panel">
             @yield('content')
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->
          @include('admin.partials.footer')
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="{{asset('vendors/js/vendor.bundle.base.js')}}"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="{{asset('vendors/chart.js/Chart.min.js')}}"></script>
<script src="{{asset('vendors/moment/moment.min.js')}}"></script>
<script src="{{asset('vendors/daterangepicker/daterangepicker.js')}}"></script>
<script src="{{asset('vendors/chartist/chartist.min.js')}}"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="{{asset('js/off-canvas.js')}}"></script>
<script src="{{asset('js/misc.js')}}"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="{{asset('js/dashboard.js')}}"></script>
<!-- End custom js for this page -->
@yield('js')

</body>
</html>
