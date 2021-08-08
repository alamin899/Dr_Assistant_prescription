<p>
    At : <b>{{\Carbon\Carbon::parse($appointment->date)->format('d-M-Y')}}</b> -
    <b>{{\Carbon\Carbon::parse($appointment->time)->format('h:i A')}}</b>
</p>
<p>
    Arranged By : <b>{{$appointment->user->name}}</b>
</p>