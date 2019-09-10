@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <a href="/admin/create" class="btn btn-primary text-white" style="margin: 15px; cursor:pointer">+ Register a Hotel</a>

                <div class="hotels" v-bind="hotels">
                    @foreach($hotels as $hotel)
                        <div class="hotel-card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col col-4"><img class="img-circle col-12" src="{{$hotel->imageUrl}}" alt="{{$hotel->name}}" ></div>
                                    <div class="col">
                                        <h2>{{$hotel->name}}</h2>
                                        <p>
                                        @for ($i = 0; $i < $hotel->stars; $i++)
                                            <div class="star-content">
                                                @include('svg.star')
                                            </div>
                                            @endfor
                                            </p>
                                            <div>
                                                {{$hotel->description}}
                                            </div>
                                            <hr>
                                            <address class="blockquote">
                                                <h5>Address:</h5>
                                                {{$hotel->address}}
                                            </address>
                                            <label for="telephone" class="font-weight-bold">
                                                {{$hotel->telephone}}
                                            </label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <form action="/admin/delete/{{$hotel->id}}" method="post">
                                            @csrf
                                            @method('delete')
                                            <button type="submit" href="/admin/edit/{{$hotel->id}}" class="btn btn-danger float-left">Delete</button>
                                        </form>
                                        <a href="/admin/edit/{{$hotel->id}}" class="btn btn-primary">Edit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
