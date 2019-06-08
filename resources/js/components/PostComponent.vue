<template>
    <v-app :dark="dark">
        <HeaderLayoutComponent :Thdark="dark" v-on:change-theme="themeChanges"></HeaderLayoutComponent>
        <v-content class="main-content clearfix">
            <PostComponent></PostComponent>
        </v-content>

        <FooterLayout></FooterLayout>
    </v-app>
</template>

<script>
import PostComponent from "./PostComponents/index";
import HeaderLayoutComponent from "./HeaderLayoutComponent";
import FooterLayout from "./FooterLayoutComponent";

export default {
    name:'PostComponents',
    mounted() {
        if (window.localStorage.themeColor == null) {
            window.localStorage.themeColor = this.dark;
        }
    },
    components: {
        PostComponent,
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
