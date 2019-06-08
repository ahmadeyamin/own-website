<template >
    <v-parallax :src="require('../../../img/bg.svg')">
        <v-layout column justify-center>
            <v-flex>
                <div class="py-5 my-5">
                    <v-layout row wrap class>
                        <v-flex xs12 md5>
                            <v-card-title primary-title>
                                <div>
                                    <div
                                        class="display-2 font-weight-light text-md-left t-shadow text-sm-center"
                                    >Working With Knowledge, Passion, Heart & Soul</div>

                                    <div
                                        class="subheading pt-4 font-weight-light"
                                    >We have worked with some leading agencies around the globe and their appreciation is our main strength .</div>
                                    <div class="pt-4 ml-0">
                                        <v-btn
                                            depressed
                                            large
                                            primary
                                            round
                                            color="error"
                                            class="white--text ml-0"
                                        >Work History</v-btn>
                                    </div>
                                </div>
                            </v-card-title>
                        </v-flex>
                        <v-flex xs0 md6 offset-md1>
                            <div></div>
                        </v-flex>
                    </v-layout>
                </div>
            </v-flex>
        </v-layout>
    </v-parallax>
</template>


<script>
export default {
    name: "contentSectionI",



    methods: {},

    data: () => ({})
};
</script>

<style scoped>
</style>
