@extends('layouts.layout')
@section('title')
	Administrator Page
@stop
@section('content')
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		@if (session('message'))
			<div class="alert alert-{{session('alert')}}">
				<p>{{session('message')}}
						</p>
			</div>
				
			
		@endif

		<table id="datatables" class="display table table-bordered table-striped table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>Title</th>
						<th>Content</th>
						<th>Actions</th>
						
						
					</tr>
				</thead>
			</table>
	</div>
@stop
@push('scripts')
<script>
$(function() {
    $('#datatables').DataTable({
    	processing: true,
        serverSide: true,
    	"iDisplayLength": 7,
        "aLengthMenu": [
          [7, 49, 70, -1],
          [7, 49, 70, "ALL"]
        ],
        ajax: '{!! route('datatables.data') !!}',
        "order": [[ 0, 'asc' ]],
        columns: [
            { data: 'rownum', name: 'rownum' , width: '10px'},
            { data: 'title', name: 'title' },
            { data: 'content', name: 'content' },
            { data: 'action', name: 'action', width: '200px'},
           
        ]
    });
});
</script>
@endpush