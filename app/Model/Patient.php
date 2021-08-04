<?php

namespace App\Model;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;


class Patient extends Model
{

//    protected $dates=[
//        'date_of_birth'
//    ];

    public function user()
    {
      return $this->belongsTo(User::class);
    }

    public function getAgeAttribute($value)
    {
        return $value." Years";
    }

    public function payments()
    {
        return $this->hasMany(PatientPayment::class);
    }

    public function prescriptions()
    {
        return $this->hasMany(Prescription::class);
    }

    public function medicalFiles()
    {
        return $this->hasMany(PatientDocument::class);
    }

    public function getPrimaryInvestigationAttribute($value)
    {
        return (!empty($value))?$value:"No Data Found";
    }
}
