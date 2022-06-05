<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Comment::create([
            'id_nguoidung' => $request->input('user_id'),
            'id_sp' => $request->input('product_id'),
            'noidung' => $request->input('message')
        ]);
        return redirect()->back();
    }
}
