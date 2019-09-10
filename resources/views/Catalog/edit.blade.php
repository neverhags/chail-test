@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit Hotels</div>
                    <div class="card-body input-group">
                        <form action="/admin/update/{{$hotel->id}}" method="POST" class="col-12">
                            @csrf
                            @method('put')
                            <div class="form-goup">
                                <label for="title">Hotel name</label>
                                <input value="{{$hotel->name}}" placeholder="Hotel name" type="text" name="name" class="col-md-12 form-control" id="titleInput" />

                                <label for="title">Image URL</label>
                                <input value="{{$hotel->imageUrl}}" placeholder="http://host.com/exampleurl/imgUrl" type="text" name="imageUrl" class="col-md-12 form-control" id="valueInput" />

                                <label for="title">Stars</label>
                                <input value="{{$hotel->stars}}" placeholder="5" type="number" name="stars" class="col-md-12 form-control" id="titleInput" />

                                <label for="title">Description</label>
                                <input value="{{$hotel->description}}" placeholder="Description" type="text" name="description" class="col-md-12 form-control" id="valueInput" />

                                <label for="title">Ubication</label>
                                <input value="{{$hotel->address}}" placeholder="Adress" type="text" name="address" class="col-md-12 form-control" id="titleInput" />

                                <label for="title">Telephone</label>
                                <input value="{{$hotel->telephone}}" type="text" name="telephone" placeholder="1234567" class="col-md-12 form-control" id="valueInput" />

                                <a href="/admin" class="btn btn-secondary mt-5">Cancel</a>
                                <button type="submit" class="btn btn-primary mt-5">+ Update this Hotel</button>
                                @if($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach($errors->all() as $error)
                                                <li>Error: {{$error}}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
