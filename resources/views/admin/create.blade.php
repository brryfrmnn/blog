@extends('layouts.layout')
@section('title')
	Creating POST
@stop
@section('content')
    <!--<script src="{{URL::asset('assets/js/tinymce/tinymce.min.js')}}"></script>
    <script type="text/javascript">
      tinymce.init({
        selector : "textarea",
        plugins : ["advlist autolink lists link image charmap print preview anchor", "searchreplace visualblocks code fullscreen", "insertdatetime media table contextmenu paste jbimages"],
        toolbar : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image jbimages",
    });
    </script>-->

	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="panel panel-info">
            <div class="panel-body">
                @if (session('message'))
                    <div class="alert alert-{{session('alert')}}">
                        <p>{{session('message')}}
                                </p>
                    </div>
                        
                    
                @endif
                <form action="{{route('admin.store')}}" method="POST" role="form">
                {{csrf_field()}}
                    <h2>Create new post</h2>
                
                    <div class="row">
                        <div class="form-group has-info col-md-4">
                            <label for="title">Title</label>
                            <input autofocus type="text" class="form-control" name="title" id="title" placeholder="Place Your Title Here">
                        </div>
                    </div>
                    <div class="row">
                         <div class="form-group has-info col-md-12">
                            <label for="content">Post</label>
                            <textarea id="content" rows="10" name="content" placeholder="Place Your Text Here" class="form-control"></textarea>
                        </div>
                    </div>
                   
                
                    
                
                    <button type="submit" class="btn btn-info btn-raised">Submit</button>
                </form>
            </div>
        </div>
	</div>
@stop
@push('scripts')
    <script src="{{URL::asset('/vendor/unisharp/laravel-ckeditor/ckeditor.js')}}"></script>
    <script src="{{URL::asset('/vendor/unisharp/laravel-ckeditor/adapters/jquery.js')}}"></script>
    <script>
      $('textarea').ckeditor({
       filebrowserImageBrowseUrl: 'http://localhost/blog/public/laravel-filemanager?type=Images',
    filebrowserImageUploadUrl: 'http://localhost/blog/public/laravel-filemanager/upload?type=Images&_token={{csrf_token()}}',
    filebrowserBrowseUrl: 'http://localhost/blog/public/laravel-filemanager?type=Files',
    filebrowserUploadUrl: 'http://localhost/blog/public/laravel-filemanager/upload?type=Files&_token={{csrf_token()}}'
      });
    </script>
    <!--<script>
        $('textarea').ckeditor();
        // $('.textarea').ckeditor(); // if class is prefered.
    </script>-->
    <script src="{{URL::asset('assets/js/tinymce/jquery.tinymce.min.js')}}"></script>
@endpush
