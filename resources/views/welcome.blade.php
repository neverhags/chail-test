<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .m-b-md {
            margin-top: -25%;
        }
        .subtext {
            font-size: 25px;
            position: absolute;
            top: initial;
        }
    </style>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


</head>
<body>
<div class="flex-center position-ref full-height">
    @if (Route::has('login'))
        <div class="top-right links">
            @auth
                <a href="{{ url('/home') }}" class="btn btn-secondary">Home</a>
            @else
                <a href="{{ route('login') }}" class="btn btn-secondary">Login</a>

                @if (Route::has('register'))
                    <a href="{{ route('register') }}"class="btn btn-success">Register</a>
                @endif
            @endauth
        </div>
    @endif

    <div class="container">
        <div class="title m-b-md">
            <img src="https://upload.wikimedia.org/wikipedia/en/thumb/8/84/Cheil_Worldwide_logo.svg/1920px-Cheil_Worldwide_logo.svg.png" style="width: 400px"> <span class="subtext">(test)</span>
        </div>
        <div class="row">
            <div class="col col-md-12">
                <h2>Notas:</h2>
                <ul>
                    <li>Las notas y específicaciones sobre la realización del test están contenidas en el archivo README.md</li>
                    <li>Test realizado base Laravel con front Vue</li>
                </ul>
            </div>
        </div>

        <div class="links">
            <a href="/catalog" class="btn btn-secondary">Ir a Catálogo de Hoteles</a>
            <a href="/admin" class="btn btn-secondary">Ir a Administración</a>
        </div>
    </div>
</div>
</body>
</html>
