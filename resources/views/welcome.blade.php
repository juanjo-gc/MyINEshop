@extends('templates.master')

@section('content-center')

<div class="col-10">
    <div class="row">
        <h3>Ofertas</h3>
        @foreach ($aProduct_offering as $item)
            <div class="col-sm-2 card card-body">
                <a href="/product/{{ $item->id }}"><img class="img-fluid fakeimg" src="{{ $item->imgurl }}"></a>
                <h5>{{ $item->name }}</h5>
                <s class="text-danger">{{ $item->price ."€"}}</s><br>
                {{ number_format(($item->price*(100-$item->discountPercent))/100, 2) ."€" }}
            </div>
        @endforeach
    </div>

    <div class="row">
        <h3>Últimos lanzamientos</h3>
        @foreach ($aProduct_new as $item)
            <div class="col-sm-2 card card-body">
                <a href="/product/{{ $item->id }}"><img class="img-fluid fakeimg" src="{{ $item->imgurl }}"></a>
                <h5>{{ $item->name }}</h5>
                @if ($item->HasDiscount())
                    <s class="text-danger">{{ $item->price ."€"}}</s><br>
                    {{ number_format(($item->price*(100-$item->discountPercent))/100, 2) ."€" }}                
                @else
                    <p>{{ $item->price ."€"}}</p>
                @endif
            </div>
        @endforeach
    </div>
</div>
@endsection

@section('content-right')
<div class="col bg-dark ml-3">
    <h3 class="text-white">Lo más vendido</h3>
    
    <ul class="list-group list-group-numbered">
        <li class="list-group-item">
            <a href="#"><img class="img-fluid" src="img/card-000005.jpg"></a>
            <p>200€</p>
        </li>
    
        <li class="list-group-item">
            <a href="#"><img class="img-fluid" src="img/note10.jpg"></a>
            <p>235€</p>
        </li>
    
        <li class="list-group-item">
            <a href="#"><img class="img-fluid" src="img/pocof3.jpg"></a>
            <p>269€</p>
        </li>
    
        <li class="list-group-item">
            <a href="#"><img class="img-fluid" src="img/card-000007.jpg"></a>
            <p>390€</p>
        </li>
    </ul>
</div>

@endsection