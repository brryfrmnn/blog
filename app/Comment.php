<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    //
    protected $table = 'comment';
    protected $fillable = ['name','comment','post_id'];

    public function post()
    {
    	$this->belongsTo('App\Post');
    }
}
