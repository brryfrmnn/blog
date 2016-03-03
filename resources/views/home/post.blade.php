@extends('layouts.layout')
@section('title')
  Show POST
@stop
@section('content')
  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <div class="panel panel-info">
            <div class="panel-body">
                
                <h1>{{$post->title}}</h1>
                <br>
                <p>
                  {{$post->content}} <strong>{{$post->user->username}}</strong>
                </p>


            </div>
      </div>
      
      @if (count($comments)>0)
        <div class="panel panel-default">
            <div class="panel-body">
            <h2>Commented : </h2>
                @if (session('message'))
                    <div class="alert alert-{{session('alert')}}">
                        <p>{{session('message')}}
                                </p>
                    </div>
                        
                    
                @endif
                  @foreach ($comments as $comment)
                    @if (Sentry::check() && Sentry::getUser()->hasAccess('admin'))
                        <div class="pull-right">
                          <form action="{{ url('comment',$comment->id) }}" method="POST">
                                        {!! csrf_field() !!}
                                        {!! method_field('DELETE') !!}
                                        <input type="hidden" name="post_id" value="{{$comment->post_id}}">
                                        <button class="btn btn-danger" title="DELETE"><i class="fa fa-close"></i></button>
                                       
            
                          </form>
                         
                        </div>
                    @endif
                      
                    <h4><strong>{{$comment->name}}</strong></h4>
                    
                  
                  <p>
                    {{$comment->comment}}
                  </p>
                  <hr>
                  @endforeach
               
            </div>
          </div>
      @endif
   
      <div class="panel panel-default">
        <div class="panel-body">
          <form action="{{route('comment.store')}}" method="POST" role="form">
                {{csrf_field()}}
                    <h2>Comment a post</h2>
                      <input type="hidden" name="post_id" value="{{$post->id}}">
                    <div class="row">
                        <div class="form-group has-info col-md-4">
                            <label for="title">Name</label>
                            <input type="text" class="form-control" name="name" id="title" placeholder="Place Your Name Here">
                        </div>
                    </div>
                    <div class="row">
                         <div class="form-group has-info col-md-12">
                            <label for="content">Comment</label>
                            <textarea id="content" rows="4" name="comment" placeholder="Place Your Comment Here" class="form-control"></textarea>
                        </div>
                    </div>
                   
                
                    
                
                    <button type="submit" class="btn btn-info btn-raised">Submit</button>
                </form>
        </div>
      </div>    
  </div>
@stop
