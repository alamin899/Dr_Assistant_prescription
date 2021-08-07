<b>{{$patient->name}}</b> <br>
Id: {{$patient->patient_unique_id}} <br>
Gender : @if($patient->gender ==1)
    Male
@elseif($patient->gender == 2)
    Fe-Male
@else
    Other
@endif
<br>
Age : {{$patient->age}} <br>

@doctor
<a href="javascript:void(0);" onclick="window.location.replace('{{url('/patient-prescriptions/'.$patient->id)}}')"><i class="fa fa-eye"></i>View Prescription </a><br>
<a href="javascript:void(0);" onclick="window.location.replace('{{url('/take-patient-to-prescription-page/'.$patient->id)}}')"><i class="fa fa-plus-circle"></i> Prescribe Now </a>
@enddoctor
@assistant
<a href="javascript:void(0);" onclick="window.location.replace('{{url('/patient-prescriptions/'.$patient->id)}}')"><i class="fa fa-eye"></i>View Prescription </a>
@endassistant
<br>
<a href="javascript:void(0);" onclick="window.location.replace('{{url('/take-patient-to-appointment/'.$patient->id)}}')"><i class="fa fa-plus"></i> New Appointment </a>
