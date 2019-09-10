<template>
    <div class="container">
        <div class="row">
            <div class="col col-12">
                <form action="/search" method="get" class="form-group">
                    <input type="text" name="search" v-model="search" @input="searchQuery" class="form-control col-4">
                    <div v-if="hotels.length && search" class="col-md-4 col-xs-12 searchBoxContent">
                        <div class="col-xs-12 searchBox" v-for="hotel in hotels" >
                            <div class="col col-4 d-inline-block"><img class="searchImg" :src="hotel.imageUrl" :alt="hotel.name"></div>
                            <div class="col col-7 d-inline-block hotel-description font-weight-bold">{{hotel.name}}</div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    import axios from "axios";
    let debug = false;
    export default {
        data () {
            return {
                search: '',
                hotels: [],
            }
        },
        methods: {
            searchQuery(val) {
                if(this.search.length >= 3){
                    try {
                        axios.get('/search', {
                            params: {
                                search: this.search
                            }
                        }).then(response => {
                            if(debug)
                                console.log("Response:",response.data);
                            this.hotels = response.data
                        })
                    } catch (e) {
                        console.log(e);
                    }
                }
            }
        }
    }
</script>
