<template>
    <v-footer height="auto">
        <v-card class="flex" flat dark tile color="#2b68d8">
            <v-container>
                <v-layout>
                    <v-card-title>
                        <v-flex xs12 md6>
                            <v-card-text
                                class="title font-weight-regular text-xs-center px-0 text-md-left"
                            >Subscribe for latest updates</v-card-text>

                            <v-form>
                                <v-flex xs12 md8>
                                    <v-text-field
                                        placeholder="Enter your awesome email"
                                        append-icon="fas fa-paper-plane"
                                        single-line
                                        outline
                                        color="white"
                                    ></v-text-field>
                                </v-flex>
                            </v-form>
                        </v-flex>

                        <v-flex xs12 md6>
                            <v-card-text class="text-xs-center">
                                <v-btn
                                    flat
                                    href="/about"
                                    dark
                                    color="white"
                                    v-for="i in 8"
                                    :key="i"
                                    round
                                    class="font-weight-bold"
                                >About</v-btn>
                                <v-spacer></v-spacer>
                                <v-btn v-for="icon in icons" :key="icon" class="mx-3" icon>
                                    <v-icon size="24px">{{ icon }}</v-icon>
                                </v-btn>
                            </v-card-text>
                        </v-flex>
                    </v-card-title>
                </v-layout>

                
            </v-container>
            <v-card-actions class=" indigo darken-1 justify-center">
                    © 2019 WebEnvMs Webnologies Pvt. Ltd. All Rights Super Reserved 
                </v-card-actions>
        </v-card>
    </v-footer>
</template>


<script>
export default {
    name: "FooterLayoutcomponent",
    data() {
        return {
            icons: [
                "fab fa-facebook",
                "fab fa-twitter",
                "fab fa-google-plus",
                "fab fa-linkedin",
                "fab fa-instagram"
            ]
        };
    }
};
</script>

<style>
</style>
