<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DesempenoEstudiante extends Model
{
    protected $fillable = [
        "inscripcion_id",
        "materia_id",
        "estudiante_id",
        "desempenio",
        "valoracion",
        "fecha",
        "observacion",
        "fecha_registro",
    ];
}
