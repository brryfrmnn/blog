@extends('layouts.layout')
@section('title')
	Editing POST
@stop
@section('content')
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="panel panel-info">
            <div class="panel-body">
                @if (session('message'))
                    <div class="alert alert-{{session('alert')}}">
                        <p>{{session('message')}}
                                </p>
                    </div>
                        
                    
                @endif
                <form action="{{route('admin.update',$post->id)}}" method="POST" role="form">
                {{csrf_field()}}
                
                {!! method_field('PATCH') !!}
                    <h2>Edit a post</h2>
                
                    <div class="row">
                        <div class="form-group has-info col-md-4">
                            <label for="title">Title</label>
                            <input autofocus type="text" class="form-control" name="title" value="{{$post->title}}" id="title" placeholder="Place Your Title Here">
                        </div>
                    </div>
                    <div class="row">
                         <div class="form-group has-info col-md-12">
                            <label for="content">Post</label>
                            <textarea id="content" rows="10" name="content" placeholder="Place Your Text Here" class="form-control">{{$post->content}}</textarea>
                        </div>
                    </div>
                   
                
                    
                
                    <button type="submit" class="btn btn-info btn-raised">Submit</button>
                </form>
            </div>
        </div>
	</div>
@stop
