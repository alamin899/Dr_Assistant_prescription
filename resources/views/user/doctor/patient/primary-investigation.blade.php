@extends('layouts.app')

@section('title')
    Primary Investigations
@endsection

@section('content')
    <div class="card">
        <div class="card-header card-header-icon">
            <i class="ti-write" style="font-size: 30px;"></i>
        </div>
        <div class="card-content">
            <h4 class="card-title">Primary Invesigation Of {{$patient->name}}</h4>
        </div>
        <div class="row">
            <div class="col-7">
                <form action="{{route('patient.primary-investigation')}}" method="POST">
                    {{csrf_field()}}
                    <input type="hidden" name="id" value="{{$patient->id}}">
                    <div class="form-group">
                        <div class="col">
                            <textarea name="primary_investigation"
                                      class="form-control">{{$patient->primary_investigation}}</textarea>
                        </div>
                    </div>
                    <br>
                    <button class="btn btn-primary float-right mb-3" type="submit">Save Changes</button>
                </form>
            </div>
        </div>
    </div>
    {{--    <div class="col-12">--}}
    {{--        <div class="card">--}}
    {{--            <div class="card-header card-header-icon">--}}
    {{--                <i class="fa fa-user-circle-o fa-2x"></i>--}}
    {{--            </div>--}}
    {{--            <div class="card-content">--}}
    {{--                <br>--}}
    {{--                <div class="row">--}}
    {{--                    <div class="col-7">--}}
    {{--                        <h4>Primary Investigation</h4>--}}
    {{--                        <form action="{{route('patient.primary-investigation')}}" method="POST">--}}
    {{--                            {{csrf_field()}}--}}
    {{--                            <input type="hidden" name="id" value="{{$patient->id}}">--}}
    {{--                            <div class="form-group">--}}
    {{--                                <div class="col">--}}
    {{--                                    <textarea name="primary_investigation" class="form-control">{{$patient->primary_investigation}}</textarea>--}}
    {{--                                </div>--}}
    {{--                            </div>--}}
    {{--                            <br>--}}
    {{--                            <button class="btn btn-primary form-control" type="submit">Save Changes</button>--}}
    {{--                        </form>--}}
    {{--                    </div>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--        </div>--}}
    {{--    </div>--}}
@endsection