<?php

namespace App\Http\Controllers;

use App\Models\Foods;
use Illuminate\Http\Request;

class FoodsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $foods = Foods::all();
        return response()->json($foods);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Foods  $foods
     * @return \Illuminate\Http\Response
     */
    public function show(Foods $foods)
    {
        return response()->json($foods);
    }

}
