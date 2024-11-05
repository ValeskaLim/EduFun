@extends('layout.master')

@section('content')
<style>
    .custom-padding {
        padding: 10rem 5rem;
    }

    .custom-p {
        font-size: 22px;
    }

    .custom-h1 {
        font-size: 45px;
    }
</style>

<div class="mx-auto text-center custom-padding">
    <h1 class="fw-bold custom-h1">About EduFun</h1>
    <div class="mt-5">
        <p class="custom-p">EduFun adalah perusahaan pendidikan berbasis teknologi asal Indonesia. Edufun menyediakan layanan akses pendidikan dalam format
            tulisan berbahasa Indonesia yang disajikan secara online melalui website.
        </p><br>
        <p class="custom-p">Hingga Juni 2024, EduFun memiliki lebih dari 10 ribu pengguna. EduFun hadir sebagai bentuk revolusi dari pendidikan di Indonesia
             dengan mengedepankan cara berpikir kritis, logis, rasional, dan sumber pengetahuan sains yang terintegrasi terhadap semua 
             mahasiswa IT di Indonesia. EduFun bercita-cita mencetak generasi Indonesia yang memahami ilmu pengetahuan dan cinta belajar.
        </p>
    </div>

</div>

@endsection