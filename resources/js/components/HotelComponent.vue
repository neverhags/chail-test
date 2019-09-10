<template>
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
                    <div class="blockquote">
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
            @auth
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
            @endauth
        </div>
    </div>
</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
