<template >
    <div
        :style="`background-image:url('${Footer_bgi}');background-position: center;background-size: cover;`"
    >
        <v-container class="py-4">
            <div class="py-5">
                <div class="text-sm-center">
                    <h2 class="font-weight-regular white--text display-1 t-shadow">What people are saying</h2>
                </div>
            </div>
            <v-layout align-center justify-center reverse fill-height class="py-5">
                <v-flex>
                    <div class="customer_say">
                        <div data-glide-el="track" class="glide__track">
                            <ul class="glide__slides">
                                <li class="glide__slide" v-for="i in 5" :key="`${i}`">
                                    <v-card flat color="rgba(0,0,0,.0)" dark tile>  
                                        <v-card-text>
                                            <h3
                                                class="subheading"
                                            >Explanations are very clear and always gives practical example on how they work, every detail is said on the video that is understandable for the audience from beginner to expert. If there' a best teacher other than Jeffrey Way and if you think Jeffrey's pace and explanations are pretty fast for you? then his is for you!</h3>
                                        </v-card-text>
                                        <v-card-actions class="py-3 px-2">
                                            <v-avatar color="error">
                                                <span class="white--text headline d-inline pl-2" size="20px">L</span>
                                            </v-avatar>
                                            <span class="title d-inline pl-3">Loen</span>
                                            <v-rating
                                                v-model="rating"
                                                color="yellow darken-3"
                                                background-color="grey darken-1"
                                                empty-icon="fal fa-star"
                                                full-icon="fas fa-star"
                                                half-icon="fal star-half-alt"
                                                :half-increments="false"
                                                hover
                                                :small="true"
                                                class="d-inline pr-2"
                                            ></v-rating>
                                        </v-card-actions>
                                    </v-card>
                                </li>
                            </ul>
                        </div>
                        <div class="slider__bullets glide__bullets" data-glide-el="controls[nav]">
                            <button
                                v-for="i in 5"
                                :key="`${i}`"
                                :class="`slider__bullet glide__bullet ${i==0?'glide__bullet--active':''}`"
                                :data-glide-dir="`=${i}`"
                            ></button>
                        </div>
                    </div>
                </v-flex>
            </v-layout>
        </v-container>
    </div>
</template>


<script>
import footer_bg from "../../../img/footer-bg.svg";

export default {
    name: "contentSectionJ",

    methods: {},

    data: () => ({
        Footer_bgi: footer_bg,
        rating: 5
    })
};
</script>

<style scoped>
</style>
