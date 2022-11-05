@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        @include('admin.menu')
        <div class="col-sm-10">
            <table class="table table-striped">
                <thead>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Acción</th>
                </thead>
                <tbody>
                    @forelse ($clientes as $item)
                    <tr>
                        <td>{{$item->id}}</td>
                        <td>{{$item->nombre}}</td>
                        <td>
                            <a href="{{ route('cliente.edit',$item->id)}}" class="btn btn-warning">Editar</a>
                            {!! Form::open(['method'=>'DELETE', 'route'=>['cliente.destroy',$item->id],'style'=>'display:inline']) !!}
                            {!!Form::submit('ELIMINAR',['class'=>'btn btn-danger','onclick'=>'return confirm("¿Seguro que desea eliminar?")']) !!}
                            {!!Form::close() !!}
                        </td>
                    </tr>   
                    @empty
                        
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
