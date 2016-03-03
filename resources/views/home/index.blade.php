@extends('layouts.layout')
@section('title')
	Home
@stop
@section('content')
	@foreach ($posts as $post)
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    @if (Sentry::check() && Sentry::getUser()->hasAccess('admin'))
                        <div class="pull-right">
                          <form action="{{ url('post',$post->id) }}" method="POST">
                                        {!! csrf_field() !!}
                                        {!! method_field('DELETE') !!}
                                        
                                        <button class="btn btn-danger" title="DELETE"><i class="fa fa-close"></i></button>
                                       
            
                          </form>
                         
                        </div>
                    @endif
                    <h3><a href="post/{{$post->id}}" title="">{{str_limit($post->title,20)}}</a></h3><br>
                    <p>{!!str_limit($post->content,400)!!} <a href="post/{{$post->id}}" title="">Read more</a></p>
                </div>
            </div>        
        </div>
    @endforeach

   <div class="container-fluid">
       <div class="row">
           <div class="col-lg-12">
               
       {!! $posts->render() !!}
  
           </div>
       </div>
   </div>
@stop
