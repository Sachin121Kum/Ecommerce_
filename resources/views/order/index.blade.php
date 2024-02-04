@extends('auth.layouts')

@section('content')


<div class="py-3 py-md-5">
        <div class="container">
            <div class="row">
                <div class="shadow bg-white p-3">

                <h4 class="mb-4">My Orders </h4>

    <div class="table-responsive">
        <table class="table table-bordered-table-striped">

        <thead>
            <th>Order ID </th>
            <th>image </th>
            <th>Order Name</th>
            <th>Tracking No </th>
            <th>Order Description</th>
            <th>Order Date </th>

        </thead>

        <tbody>
            @forelse ($orders as $item)
            <tr>
                <td> {{$item->id}} </td>
                <td> 
                <img width="40px" height="50" src="{{$item->image}}" alt="{{$item->name}}"/>    
                </td>  
                <td> {{$item->name}} </td>
                <td> {{$item->tracking_no}} </td>  
                <td> {{$item->description}} </td>  
                <td> {{$item->created_at}} </td>
                  
               

            </tr>
            @empty

            <tr>
                <td colspan="5"> No Order Available</td>
            </tr>
        @endforelse

        </tbody>

        
        </table>
        <div>
        {{ $orders->links() }}
</div>
<a href="{{ URL::previous() }}" class="btn btn-primary">Go Back</a>


</div>
</div>
</div>
</div>
</div>
</div>
</div>


    
@endsection