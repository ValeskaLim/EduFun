<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduFun</title>
    <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRktX6nTxzKjKFyxezMcL87x4w6ZtxYkbyt5g&s">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .custom-bg-body {
            background-color: #f2f0f0;
        }
    </style>
</head>
<body class="custom-bg-body">
    <div class="container-fluid p-0 custom-height">
        @include('layout.navbar')

        @yield('content')

        @include('layout.footer')
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>