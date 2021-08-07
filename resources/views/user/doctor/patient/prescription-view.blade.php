@extends('layouts.app')

@section('title')
    Prescriptions
@endsection

@section('extra-css')
@endsection

@section('content')
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-icon">
                <i class="fa fa-user-circle-o fa-2x"></i>
            </div>
            <div class="card-content">
                <div class="row">
                    <div class="col-md-6">
                        <h4>Prescription Info @doctor<a style="font-size: 15px;" href="{{url('/take-patient-to-prescription-page/'.$patient->id)}}" class="pull-right"> <i class="ti ti-ink-pen"></i> Write new prescription</a>@enddoctor</h4>
                        <ul class="list-group">
                            @foreach($patient->prescriptions as $pres)
                                <li class="list-group-item"><a href="{{url('/print-prescription/'.$pres->id)}}" class="btn btn-default pull-right"><i class="fa fa-eye"></i> View</a> {{$pres->created_at->format('d-M-Y')}} </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                        <a href="{{url('/all-patient')}}" class="btn btn-primary">Back</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('extra-js')

@endsection