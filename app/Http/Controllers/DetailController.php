<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class DetailController extends Controller
{
    public function show(Article $article)
    {
        return view('pages.articles.show', compact('article'));
    }
}
