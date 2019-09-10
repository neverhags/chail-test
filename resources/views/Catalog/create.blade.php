@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Create Hotels</div>
                    <div class="card-body input-group">
                        <form action="/admin/create" method="POST" class="col-12">
                            @csrf
                            <div class="form-goup">
                                <label for="title">Hotel name</label>
                                <input placeholder="Hotel name" type="text" name="name" class="col-md-12 form-control" id="titleInput" />

                                <label for="title">Image URL</label>
                                <input placeholder="http://host.com/exampleurl/imgUrl" type="text" name="imageUrl" class="col-md-12 form-control" id="valueInput" />

                                <label for="title">Stars</label>
                                <input placeholder="5" type="number" name="stars" class="col-md-12 form-control" id="titleInput" />

                                <label for="title">Description</label>
                                <input placeholder="Description" type="text" name="description" class="col-md-12 form-control" id="valueInput" />

                                <label for="title">Ubication</label>
                                <input placeholder="Adress" type="text" name="address" class="col-md-12 form-control" id="titleInput" />

                                <label for="title">Telephone</label>
                                <input type="text" name="telephone" placeholder="1234567" class="col-md-12 form-control" id="valueInput" />

                                <a href="/admin" class="btn btn-secondary mt-5">Cancel</a>
                                <button type="submit" class="btn btn-primary mt-5">+ Register</button>
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
