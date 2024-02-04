@extends('auth.layouts')

@section('content')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $(".searchDivBox").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>


<div class="row justify-content-center mt-5">
    <div class="col-md-12">

    <!-- Start Content -->
    <div class="container py-10">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">Categories</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="">
                            Products
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="{{url('products')}}">All Products</a></li>
                            <li><a class="text-decoration-none" href="{{url('order')}}">My Order</a></li>
                        </ul>
                    </li>

                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                    <div class="col-md-6 pb-4">
                        <div class="d-flex">
                        <input id="myInput" type="text" placeholder="Search..">
                    <br><br>
                        </div>
                    </div>
                </div>
                <div class="row">

                    @if(!empty($products) > 0 )
                    @foreach($products as $product)
        
                    <div class="col-md-3 searchDivBox">
             
                        <div class="card mb-3 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="{{$product->image}}">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                    <ul class="list-unstyled">
                                        <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">{{$product->name}}</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">

                                <p class="text-center mb-0">{{$product->price}}</p>

                                      
                            </div>
                            <div class="card-footer">
                                <a href="{{ route('add-cart', [$product->id])}}" class="btn btn-success btn-block">Add To Cart </a>
                                </div>  
                        </div>
        </div>
                   
                @endforeach
        @endif
  

        </div>

            </div>

        </div>
    </div>
    <!-- End Content -->


    </div>    
</div>


    
@endsection