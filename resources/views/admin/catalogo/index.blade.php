@extends('layouts.app')

@section('content')
    <link href="https://fonts.googleapis.com/css2?family=Bitter&family=Montserrat&family=Quattrocento+Sans:wght@700&display=swap" rel="stylesheet"> 
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@600&display=swap" rel="stylesheet"> 
    <script src="js/jquery-3.4.0.min.js"></script>
    <script src="js/bootstrap-4.3.1.min.js"></script>
    <link rel="stylesheet" href="{{ asset('css/catalogo.css') }}">

<div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <span id="card_title">
                    {{ __('Hospedajes') }}
                </span>
            </div>  
            <form action="{{ route('lugar.index') }}" method="GET">
                <div class="btn-group">
                    <input type="text" name="busqueda" class="form-control">
                    <input type="submit" value="Buscar" class="btn btn-primary">
                </div>
            </form>                 
            @foreach ($lugares as $item)
            <div class="contain">              
                <div class="card">
                    <img src="/img/lugar/{{$item->urlfoto}}"/>
                    <h4>{{ $item->nombre }}</h4>
                    <h5>${{ $item->precio }}</h5>
                    <a class="btn btn-sm btn-primary " href="{{ route('catalogo.show',$item->id) }}"><i class="fa fa-fw fa-eye"></i>Ver más...</a>
                </div>
            </div>                        
                @endforeach
        </div>
        <tfoot>
            <tr>
                <td colspan="4">{{$lugars->appends(['busqueda'=>$busqueda])}}</td>
            </tr>
        </tfoot>
</div>
@endsection
