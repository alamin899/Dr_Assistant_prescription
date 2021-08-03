<?php


namespace App\Traits;


use App\Model\Patient;

trait PatientTrait
{
    public function patientUniqueIdGenerate()
    {
        $patient = Patient::orderBy('id','desc')->first();
        $date = date('Y');
        if (empty($patient->patient_unique_id)) {
            $dateSerial = $this->generateSerial($date, 1);
        } else {
            $dateSerial = $patient->patient_unique_id+1;
        }
        return $dateSerial;
    }

    private function generateSerial($date = '', $serial = '')
    {
        return $date . str_pad($serial, 5, 0, STR_PAD_LEFT);
    }
}