@extends('layout.master')

@section('content')
<style>
    .custom-padding {
        padding: 2rem 5rem;
    }

    .header-image {
        width: 100%;
        height: 30rem;
        flex-shrink: 0;
    }

    .header-image img{
        object-fit: cover;
        border-radius: 2rem;
    }
</style>

<div class="d-flex flex-column custom-padding">
    <h1 class="fw-bold">{{ $article->title }}</h1>
    <div>
        <div class="header-image mt-3">
            <img src="{{ url(path:'/assets/thumbnail.jpg')}}" width="100%" height="100%">
        </div>
        <div class="article-content mx-5">
            <p>{{ date('j M Y', strtotime($article->date_published)) }} | by: {{ $article->writer->name }}</p><br>
            <p>{{ $article->content }}</p>
        </div>
    </div>
</div>

@endsection