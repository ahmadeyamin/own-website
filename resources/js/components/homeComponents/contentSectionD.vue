<template>
  <v-container grid-list-xl class>
    <div class="py-5">
      <div class="text-xs-center">
        <span class="text-uppercase font-weight-bold red--text">PRICING PLAN</span>
        <h2 class="font-weight-regular headline mt-1">What’s your starter pricing plan</h2>
        <div>
          <span class="subheading font-weight-light">
            <v-switch
              v-model="switch1"
              color="error"
              label="Show Pricing plan annually"
              class="d-inline-block"
            ></v-switch>
          </span>
          
        </div>
      </div>
    </div>
    <v-layout row wrap>
      <v-flex xs12 md4 v-for="priceCard in pricesCard" :key="priceCard.id">
        <div>
          <v-card
            class="mx-auto"
            width="350px"
            style="border: 1px solid rgba(247, 242, 242, 0.36);border-radius:7px;box-shadow: rgba(16, 66, 97, 0.07) 0px 8px 20px 0px;"
            flat
            tile
          >
            <v-card-title primary-title class="pt-5">
              <div>
                <h3
                  class="mb-4 font-weight-regular title text-md-center font-weight-bold"
                >{{ priceCard.title }}</h3>
                <div class="text-md-center font-weight-light body-2 mb-3">{{ priceCard.disc }}</div>
                <h2 class="headline font-weight-bold text-md-center my-2">{{!switch1 ? `${priceCard.price[0]}$`: `${priceCard.price[1]}৳`}}</h2>
                <v-btn  depressed large primary color="error" style="margin:auto" class="white--text px-5 my-4 d-block text-md-center m-auto">
                    Start Now
                </v-btn>
                <v-list>
                  <template>
                    <v-list-tile v-for="suport in priceCard.suports" :key="suport">
                      <v-list-tile-content>
                        <v-list-tile-title>
                          <svg
                            fill="rgb(24, 211, 121)"
                            style="display:inline-block;vertical-align:middle"
                            height="13"
                            width="13"
                            viewBox="0 0 16 16"
                          >
                            <path d="M13.5 2l-7.5 7.5-3.5-3.5-2.5 2.5 6 6 10-10z"></path>
                          </svg>
                          <span> {{suport}}</span>
                        </v-list-tile-title>
                      </v-list-tile-content>
                    </v-list-tile>
                  </template>
                </v-list>
              </div>
            </v-card-title>
          </v-card>
        </div>
      </v-flex>
    </v-layout>
  </v-container>
</template>


<script>
export default {
  name: "contentSectionD",

  methods: {},

  data: () => ({
    switch1: false,
    pricesCard: [
      {
        title: "Basic",
        disc: "For Large teams or group who need to build website ",
        id: 1,
        price: [10, 20],
        href: "http:google.com",
        suports: [
          "Drag & Drop Builder",
          "1,000s of Templates Ready",
          "Blog Tools",
          "eCommerce Store ",
          "30+ Webmaster Tools"
        ]
      },
      {
        title: "Business",
        disc: "For Small teams or group who need to build website ",
        id: 2,
        price: [10, 20],
        href: "http:google.com",
        suports: [
          "Drag & Drop Builder",
          "1,000s of Templates Ready",
          "Blog Tools",
          "eCommerce Store ",
          "30+ Webmaster Tools"
        ]
      },
      {
        title: "Premium",
        disc: "For Large teams or group who need to build website ",
        id: 3,
        price: [10, 20],
        href: "http:google.com",
        suports: [
          "Drag & Drop Builder",
          "1,000s of Templates Ready",
          "Blog Tools",
          "eCommerce Store ",
          "30+ Webmaster Tools"
        ]
      }
    ]
  })
};
</script>

<style scoped>
</style>
