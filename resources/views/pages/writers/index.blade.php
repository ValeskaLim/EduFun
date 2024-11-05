@extends('layout.master')

@section('content')
<style>
    .custom-padding {
        padding: 5rem 5rem;
    }

    .custom-h2-writers {
        margin-top: 1rem;
        font-size: 22px;
    }

    .custom-p-writers {
        margin-top: 1rem;
        font-size: 20px;
    }
</style>

<div class="custom-padding">
    <h1 class="fw-bold">Our Writers:</h1>
    <div class="pt-5 pb-5 d-flex justify-content-evenly">
        @foreach ($writers as $writer)
        <a href="{{ route('writer.show', $writer) }}" class="text-decoration-none color text-black">
            <div class="text-center">
                <img src="{{url('/assets/writers1.jpg')}}" width="300px" height="300px" class="rounded-circle">
                <h2 class="custom-h2-writers fw-bold">{{ $writer->name }}</h2>
                <p class="custom-p-writers">{{ $writer->bio }}</p>
            </div>
        </a>
        @endforeach
    </div>
</div>

@endsection