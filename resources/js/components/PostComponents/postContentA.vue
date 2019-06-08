<template>
    <v-container fluid>
        <v-layout wrap>
            <v-flex md2 sm12>
                <aside>
                    <PostContentSidebar></PostContentSidebar>
                </aside>
            </v-flex>
            <v-flex md10 sm12>
                <div>
                    <PostContentmain ></PostContentmain>
                </div>
            </v-flex>
        </v-layout>
    </v-container>
</template>

<script>
import PostContentSidebar from "./postContentSidebar";
import PostContentmain from "./postContentmain";
export default {
    name:'postContentA',
    components: {
        PostContentSidebar,
        PostContentmain
    },

    data: function() {
        return {

        };
    },

    methods:{
        // ujdfudu:function(params) {
        //     console.log(params);

        // }
    }

};
</script>

<style>
</style>
