@extends('layouts.layout')

{{-- Web site Title --}}
@section('title')
@parent
View Group
@stop

{{-- Content --}}
@section('content')
<h4>{{ $group['name'] }} Group</h4>
<div class="well clearfix">
	<div class="col-md-10">
	    <strong>Permissions:</strong>
	    <ul>
	    	@foreach ($group->getPermissions() as $key => $value)
	    		<li>{{ ucfirst($key) }}</li>
	    	@endforeach
	    </ul>
	</div>
	<div class="col-md-2">
		<a class="btn btn-info btn-raised" href="{{ route('sentinel.groups.edit', array($group->hash)) }}">Edit Group</a>
	</div> 
</div>
	

@stop
