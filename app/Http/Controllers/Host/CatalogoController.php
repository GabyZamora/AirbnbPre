<?php
namespace App\Http\Controllers\Host;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Lugar;
use Illumitate\Support\Str;
use Image;


class CatalogoController extends Controller
{
    public function index()
    {
        $lugares = Lugar::all();
        return view("host.lugar.index",compact("lugares"));
    }

    public function show($id)
    {
        $lugares = Lugar::find($id);

        return view('host.lugar.show', compact("lugares"));
    }
}
