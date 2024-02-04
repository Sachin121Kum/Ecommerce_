@extends('auth.layouts')

@section('content')


<div class="container">
    <h1 class="text-center">Cart Page</h1>
    <div class="row">
    <table class="table table-hover">
    <thead>
        <tr>
            <th width="50%">Product</th>
            <th width="10%">Price</th>
            <th width="8%">Quantity</th>
            <th width="22%">Sub Total</th>
            <th width="10%">Product</th>
        </tr>
    </thead>
        <tbody>

        @php $total = 0; @endphp
        @if(session('cart'))
            @foreach(session('cart') as $id => $value)

            @php
                $subTotal = $value['price'] * $value['quantity'];
                $total += $subTotal;  

            @endphp


           <tr>
            <td>
                <img src="{{$value['image']}}" 
                alt="{{$value['name']}}" 
                class="img-fluid" 
                width="150">
                <span> {{$value['name']}}</span>
            </td>
            <td>₹{{$value['price']}}</td>
            <td>{{$value['quantity']}}</td>
            <td>₹{{$subTotal}}</td>
            <td>
                <a href="{{route('remove',[$id])}}" class="btn btn-danger">Remove</a>
            </td>
        </tr>
            @endforeach
        @endif


        </tbody>

        <tfoot>
        <tr>
            <td>
            <a href="{{route('products')}}" class="btn btn-warning">Continue Shopping</a></td>
            <td colspan="2"></td>
            <td><strong>Total ₹. {{$total}}</strong</td>

            <form action="{{route ('placeOrder')}}" method="POST">
                @csrf
            <td>
                <button type="submit" class="btn btn-success">Place Order </button>
            </td>

            </form>
         


        </tr>
        

        </tfoot>
    
</table>

<a href="{{ URL::previous() }}" class="btn btn-primary">Go Back</a>


</div>
</div>



    
@endsection