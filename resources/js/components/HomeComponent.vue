<template>
    <v-app :dark="dark">
        <HeaderLayout :Thdark="dark" v-on:change-theme="themeChanges"></HeaderLayout>
        <v-content class="main-content clearfix">
            <HomeComponent></HomeComponent>
        </v-content>

        <FooterLayout></FooterLayout>
    </v-app>
</template>

<script>
import HeaderLayout from "./HeaderLayoutComponent";
import HomeComponent from "./homeComponents/index";
import FooterLayout from "./FooterLayoutComponent";
// import TestComp from "./content/test.vue"

export default {
    components: {
        FooterLayout,
        HomeComponent,
        HeaderLayout
        // TestComp
    },
    mounted() {
        if (window.localStorage.themeColor == null) {
            window.localStorage.themeColor = this.dark;
        }
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
</style>
