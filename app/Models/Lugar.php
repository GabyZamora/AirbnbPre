<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lugar extends Model
{
    use HasFactory;
    protected $fillable = [
        'slug',
        'nombre',
        'descripcion',
        'urlfoto',
        'latitud',
        'longitud',
        'estado',
        'precio',
        'numHuesped',
        'mascotas',
        'user_id',
        'ruta_id',
        'categoria_id'
    ];

    
    public function Foto(){
        return $this->hasMany("App\Models\Foto");
    }

    public function Servicio(){
        return $this->belongsToMany(Servicio::class, 'serv_lugars');
    }
    public function User(){
        return $this->belongsTo("App\Models\User");
    }

    public function Ruta(){
        return $this->belongsTo("App\Models\Ruta");
    }

    public function Categoria(){
        return $this->belongsTo("App\Models\Categoria");
    }

    //Funcion One to Many, registro para tener muchas imagenes
    public function imagenesGaleria()
    {
        return $this->hasMany('App\ImgGaleria');
    }

}
