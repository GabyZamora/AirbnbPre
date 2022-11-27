<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ImgGaleria extends Model
{
    protected $fillable = [
        'nombre',
        'descripcion',
        'urlfoto',
        'lugar_id'
    ];

    public function Lugar(){
        return $this->belongsTo("App\Models\Lugar");
    }


    //rELACION iNVERSA
    public function lugarGaleria()
    {
        return $this->belongsTo('App\Models\Lugar');
    }
}
