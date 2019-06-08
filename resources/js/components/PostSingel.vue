<template>
    <v-app :dark="dark">
        <HeaderLayoutComponent :Thdark="dark" v-on:change-theme="themeChanges"></HeaderLayoutComponent>
        <v-content class="main-content clearfix">
            <PostSingel></PostSingel>
        </v-content>
        <FooterLayout></FooterLayout>
    </v-app>
</template>

<script>
import PostSingel from "./PostSingel/singel";
import HeaderLayoutComponent from "./HeaderLayoutComponent";
import FooterLayout from "./FooterLayoutComponent";

export default {
    name:'PostContantSingel',
    mounted() {
        if (window.localStorage.themeColor == null) {
            window.localStorage.themeColor = this.dark;
        }
    },
    components: {
        PostSingel,
        HeaderLayoutComponent,
        FooterLayout
    },
    data() {
        return {
            dark:
                localStorage.getItem("themeColor") == true ||
                localStorage.getItem("themeColor") == "dark"
                    ? true
                    : false
        };
    },
    methods: {
        themeChanges: function(e) {
            this.dark = !this.dark;
            localStorage.setItem(
                "themeColor",
                this.dark == true ? "dark" : "white"
            );
        }
    }
};
</script>

<style >
* {
    position: relative;
}
</style>
