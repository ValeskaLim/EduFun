<?php

namespace App\Http\Controllers;

use App\Models\Writer;
use Illuminate\Http\Request;

class WritersController extends Controller
{

    public function index() 
    {
        $writers = Writer::all();
        return view('pages.writers.index', compact('writers'));
    }
    public function show(Writer $writer)
    {
        $articles = $writer->articles()->get();
        return view('pages.writers.show', compact('writer', 'articles'));
    }
}
