@extends('layout.master')

@section('content')
<style>
    .custom-padding {
        padding: 2rem 5rem;
    }

    .header-image {
        width: 40%;
        height: 15rem;
        flex-shrink: 0;
    }

    .header-image img{
        object-fit: cover;
        border-radius: 2rem;
    }

    .custom-button {
        height: 3rem;
        width: 10rem;
        border-radius: 3rem;
    }

    .custom-button-container {
        width: 100%;
    }

    .custom-button p{
        height: 100%;
    }
</style>
<div class="custom-padding">
    <h1 class="fw-bold fs-2">{{ $category->name }}</h1>
    @foreach ($courses as $course)
    @foreach ($course->articles as $article)
        <div class="d-flex flex-column gap-3 mt-5">
            <div class="d-flex">
                <div class="header-image">
                    <img src="{{ url(path:'/assets/thumbnail.jpg')}}" width="100%" height="100%">
                </div>
                <div class="d-flex flex-column ms-4" style="width:100%;">
                    <h3 class="fw-bold">{{ $article->title }}</h3>
                    <p class="m-0">{{ date('j M Y', strtotime($article->date_published)) }} | by: {{ explode(' ', $article->writer->name)[0] }}</p>
                    <p>{{ Str::words($article->content, 20) }}</p>
                    <div class="d-flex justify-content-end align-items-end custom-button-container">
                        <a href="{{ route('articles.show', $article) }}" class="text-decoration-none">
                            <div class="bg-black custom-button">
                                <p class="d-flex justify-content-center align-items-center text-white">read more</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    @endforeach
</div>

@endsection