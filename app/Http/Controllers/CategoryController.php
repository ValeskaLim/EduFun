<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        return view('pages.categories.index', compact('categories'));
    }

    public function show(Category $category)
    {
        $courses = $category->courses()->with('articles')->get();
        return view('pages.categories.show', compact('category', 'courses'));
    }
}
