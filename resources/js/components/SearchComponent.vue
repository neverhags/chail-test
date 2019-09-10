<template>
    <div class="container">
        <div class="row">
            <div class="col col-12">
                <form action="/search" method="get">
                    <input type="text" name="search" v-bind="search">
                </form>
            </div>
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
