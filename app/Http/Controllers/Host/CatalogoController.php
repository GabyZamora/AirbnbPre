<?php
namespace App\Http\Controllers\Host;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Lugar;
use Illumitate\Support\Str;
use Image;


class CatalogoController extends Controller
{
    public function index(Request $request){

        $busqueda =  $request->busqueda;
        $lugars = Lugar::where('nombre','LIKE','%'.$busqueda.'%')
        ->paginate(5);
        return view("host.lugar.index", compact('lugars','busqueda'));

    }

    public function show($id)
    {
        $lugares = Lugar::find($id);

        return view('host.lugar.show', compact("lugares"));
    }
}
