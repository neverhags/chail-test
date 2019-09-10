@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-12">
            <a href="/catalog" class="btn btn-secondary m-3">< Back</a>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <img src="{{$hotel->imageUrl}}" alt="{{$hotel->name}}" class="col-12">
        </div>
    </div>
    <div class="row">
        <div class="col-12 text-center mt-5">
            <h1>{{$hotel->name}}</h1>
            @for ($i = 0; $i < $hotel->stars; $i++)
                <div class="star-content">
                    @include('svg.star')
                </div>
            @endfor
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-12 text-center mt-5">
            <article>{{$hotel->description}}</article>
        </div>
    </div>

</div>
@endsection
