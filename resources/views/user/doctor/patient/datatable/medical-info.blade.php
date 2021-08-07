<p>
    Patient Since : {{$patient->created_at->format('d-M-Y')}} <br>
    Total Prescription : {{count($patient->prescriptions)}} <br>
</p>

<a href="{{url('/patient-history/'.$patient->id)}}"><i class="fa fa-eye"></i> &nbsp; View Medical History</a> <br>
<a href="{{url('/patient-primary-investigation/'.$patient->id)}}"><i class="fa fa-plus-circle"></i> &nbsp; Primary Investigation </a>
<br>
<a href="{{url('/patient-medical-file/'.$patient->id)}}"><i class="fa fa-plus"></i> &nbsp; Add Medical File </a>

<!-- Modal -->
{{--<div class="modal fade" id="primaryInvestigationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"--}}
{{--     aria-hidden="true">--}}
{{--    <div class="modal-dialog" role="document">--}}
{{--        <div class="modal-content">--}}
{{--            <div class="modal-header">--}}
{{--                <h5 class="modal-title" id="exampleModalLabel"><b>Add Primary Investigation</b></h5>--}}
{{--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
{{--                    <span aria-hidden="true">&times;</span>--}}
{{--                </button>--}}
{{--            </div>--}}
{{--            <form action="{{route('patient.primary-investigation')}}" method="post">--}}
{{--                {{csrf_field()}}--}}
{{--                <div class="modal-body">--}}
{{--                    <input type="hidden" name="id" id="patient_id">--}}
{{--                    <div class="form-group">--}}
{{--                        <textarea class="form-control" id="primary_investigation" name="primary_investigation"--}}
{{--                                  placeholder="Enter Primary Investigation"></textarea>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="modal-footer">--}}
{{--                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--}}
{{--                    <button type="submit" class="btn btn-primary">Save changes</button>--}}
{{--                </div>--}}
{{--            </form>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<script>--}}
{{--    function addValue(id,primary_investigation){--}}
{{--        document.getElementById('patient_id').value= id--}}
{{--        document.getElementById('primary_investigation').value= primary_investigation--}}
{{--    }--}}
{{--</script>--}}