<template >
    <v-container>
        <v-layout row wrap>
            <v-flex md9 ms12 style="padding:0px 10px">
                <v-card flat style="box-shadow: 0 5px 15px rgba(0,0,0,.08);">
                    <v-img :src="(`/storage/${post.image}`)" style="border-radius:9px 9px 0px 0px" v-if="loaded"></v-img>

                    <v-card-title>
                        <span class="grey--text">Written on {{new Date(post.updated_at).toDateString()}} </span>
                        <v-spacer></v-spacer>
                        <span class="grey--text"> &nbsp;{{post.view_count}} <v-icon small="">fas fa-eye</v-icon></span>
                    </v-card-title>
                    <v-divider></v-divider>
                    <v-card-title class="headline font-weight-thin">{{post.title}}</v-card-title>

                    <v-card-title>
                        <div>
                            <span class="grey--text d-block">Category </span>
                        </div>
                        <div class="w-100">
                            <v-chip small color="primary" style="color:#fff">{{post.category_name}}</v-chip>
                        </div>
                    </v-card-title>

                    <v-card-title primary-title>
                        <div v-html="post.body"></div>
                    </v-card-title>
                </v-card>
            </v-flex>
            <v-flex md3 ms12 style="padding:0px 10px">
                <v-card flat style="box-shadow: 0 5px 15px rgba(0,0,0,.08);">
                    <v-card-actions>
                        <v-list-tile class="grow py-2">
                            <v-list-tile-avatar color="grey darken-3">
                                <v-img
                                    v-if="authLoad"
                                    class="elevation-6"
                                    :src="(`/storage/${author.avatar}`)"
                                ></v-img>
                            </v-list-tile-avatar>

                            <v-list-tile-content>
                                <v-list-tile-title>{{author.name}}&nbsp;</v-list-tile-title>
                            </v-list-tile-content>
                            <v-spacer></v-spacer>
                            <v-layout align-center justify-end>
                                <v-btn flat icon target="_blank" :href="`https://facebook.com/${author.facebook ?author.facebook:'' }`" color="indigo">
                                    <v-icon>fab fa-facebook</v-icon>
                                </v-btn>
                                <v-btn flat icon :href="`tel:${author.phone  ?author.phone:'' }`" color="teal">
                                    <v-icon>fas fa-phone</v-icon>
                                </v-btn>
                            </v-layout>
                        </v-list-tile>
                    </v-card-actions>
                </v-card>
                <v-card flat class="mt-5" style="box-shadow: 0 5px 15px rgba(0,0,0,.08);border-radius:9px ">
                    <v-card-title>Other Posts You May Like</v-card-title>
                    <v-divider light=""></v-divider>
                    <v-list>
                        <v-list-tile v-for="(item,index) in postSet" color="primary" :key="index" :href="`/blog/${item.id}/${item.slug}`" >
                            <v-list-tile-content >

                                <v-list-tile-title v-text="item.title"></v-list-tile-title>
                            </v-list-tile-content><v-chip small="" style="color:#fff" color="primary">{{item.view_count}}</v-chip>
                        </v-list-tile>
                    </v-list>
                </v-card>
            </v-flex>
        </v-layout>
    </v-container>
</template>

<script>
export default {
    data() {
        return {
            items: [
                {
                    icon: true,
                    title: "Jason Oner",
                    avatar: "https://cdn.vuetifyjs.com/images/lists/1.jpg"
                },
                {
                    title: "Travis Howard",
                    avatar: "https://cdn.vuetifyjs.com/images/lists/2.jpg"
                },
                {
                    title: "Ali Connors",
                    avatar: "https://cdn.vuetifyjs.com/images/lists/3.jpg"
                },
                {
                    title: "Cindy Baker",
                    avatar: "https://cdn.vuetifyjs.com/images/lists/4.jpg"
                }
            ],

            post: {},
            author: {},
            loaded: false,
            authLoad: false,
            postSetLimit:5,
            postSet:{

            }
        };
    },

    methods: {
        loadAuthor(id) {
            axios
                .get(`${location.origin}/api/v2/user/${id}`)
                .then(
                    function(data) {
                        this.author = data.data;
                        this.authLoad = true;
                    }.bind(this)
                )
                .catch(function(error) {
                    console.log(error);
                });
        }
    },
    mounted() {
        axios
            .get(`${location.origin}/api/v2${location.pathname}`)
            .then(
                function(data) {
                    this.post = data.data;
                    this.loaded = true;
                    this.loadAuthor(this.post.author_id);
                }.bind(this)
            )
            .catch(function(error) {
                console.log(error);
            });
        axios
            .get(`${location.origin}/api/v2/blogpost?filter=ByView&limit=5`)
            .then(
                function(data) {
                    this.postSet = data.data;
                }.bind(this)
            )
            .catch(function(error) {
                console.log(error);
            });
    }
};
</script>

<style>
</style>
