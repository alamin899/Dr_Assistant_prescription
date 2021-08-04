@extends('layouts.app')

@section('title')
    Signature
@endsection

@section('content')
    <div class="col-12">
        <div class="card">
            <div class="card-header card-header-icon">
                <i class="fa fa-user-circle-o fa-2x"></i>
            </div>
            <div class="card-content">
                <br>
                <div class="row">
                    <div class="col-4">
                        <form action="{{route('signature.store')}}" method="POST" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label class="col col-form-label"><b>Signature : </b></label>
                                <div class="col">
                                    <input class="form-control" type="file" name="signature" />
                                </div>
                            </div>
                            <br>
                            <button class="btn btn-primary form-control" type="submit">Submit</button>
                        </form>
                    </div>
                    <div class="col-4"><br><br><br><br><br><br><br>
                        <img style="float:right;margin-top: -55px;
                        margin-right: 24px" src="{{url('/uploads/signature/signature.png')}}" width="90px" alt="">
                        <p class="prescription-p-title text-center"
                           style="border-top: 1px solid black; width: 150px;float: right;">Signature</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection