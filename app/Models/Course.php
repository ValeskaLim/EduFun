<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;
    public function articles()
    {
        return $this->hasMany(Article::class);
    }

    public function category()
    {
        return $this->hasMany(Category::class);
    }

}
