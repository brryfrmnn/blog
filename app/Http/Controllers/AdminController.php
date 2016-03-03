<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Yajra\Datatables\Datatables;
use App\Post;
use DB;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = Post::all();
        return view('admin.index', compact('data'));
    }

    public function anyData(Request $request)
    {   //$no=1;
        
        DB::statement(DB::raw('set @rownum=0'));
        $post=Post::select([
                 DB::raw('@rownum  := @rownum  + 1 AS rownum'),
                 'id','title','content'
            ]);

       $datatable= Datatables::of($post)
                                ->addColumn('action','<form action="{{ url(\'admin\',$id) }}" method="POST">
                                    {!! csrf_field() !!}
                                    {!! method_field(\'DELETE\') !!}

                                    <button class="btn btn-danger btn-raised" title="DELETE" ">DELETE</button>
                                    <a href="{{ url(\'admin\',array($id,\'edit\')) }}" class="btn btn-info btn-raised" title="EDIT">EDIT</a>

                                    </form>')
                                ->editColumn('title', function ($post){
                                    return str_limit($post->title,30);
                                })
                                ->editColumn('content', function ($post){
                                    return str_limit($post->content,140);
                                });
         if ($keyword = $request->get('search')['value']) {
            $datatables->filterColumn('rownum', 'whereRaw', '@rownum + 1 like ?', ["%{$keyword}%"]);
        }

                                return $datatable->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $input = $request->all(); 
        $input['user_id'] = \Sentry::getUser()->id;
        $save = Post::Create($input);
        return redirect('/admin/create')->with('message','Success .. ')
                                        ->with('alert','success');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $post = Post::findOrfail($id);
        return view('admin.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $post = Post::findOrfail($id);
        $post->title = $request->title;
        $post->content = $request->content;
        $post->save();
        return redirect('/')->with('message','Success .. ')
                                        ->with('alert','success');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        Post::destroy($id);
        return redirect('/admin')->with('message','Success .. ')
                                        ->with('alert','success');
    }
}
