@extends('templates.master')

@section('content-center')

<div class="card-body">
    <h2>Detalles del producto</h2>
    <h5>{{ $product->name }}</h5>
    <img class="img-fluid fakeimg" src="/{{ $product->imgurl }}"><br>
    @if ($product->HasDiscount())
        <s class="text-danger">{{ $product->price ."€"}}</s><br>
        <b>Precio: </b>{{number_format(($product->price*(100-$product->discountPercent))/100, 2) ."€" }}
    @else
        <p><b>Precio: </b>{{ $product->price ."€"}}</p>    
    @endif
    <p><b>Descripción: </b>{{ $product->description}}</p>
    <p><b>Compañia: </b>{{ $product->Company()->get()->first()->name }}</p>
</div>

@endsection