<template>
  <v-container grid-list-sm class>
    <div class="py-5">
      <div class="text-sm-center">
        <span class="text-uppercase font-weight-bold red--text">OUR SERVICeS</span>
        <h2 class="font-weight-regular headline">Our Featured Service that We Provide</h2>
      </div>
    </div>
    <v-layout row wrap>
      <v-flex xs12 md4 v-for="serviceCard in servicesCard" :key="serviceCard.id">
        <div>
          <v-hover>
            <v-card
              slot-scope="{ hover }"
              :class="`elevation-${hover ? 20 : 0}`"
              class="mx-auto"
              min-height="406"
              flat
              tile
            >
              <v-img :src="serviceCard.src" aspect-ratio="1.9" class="pt-3"></v-img>

              <v-card-title primary-title class="pt-5">
                <div>
                  <h3 class="mb-4 font-weight-regular title">{{ serviceCard.title }}</h3>
                  <div>{{ serviceCard.disc }}</div>
                </div>
              </v-card-title>
            </v-card>
          </v-hover>
        </div>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import s1 from "../../../img/s1.png";
import s2 from "../../../img/s2.png";
import s3 from "../../../img/s3.png";
export default {
  name: "contentSectionB",

  methods: {
    hoverCard: e => {
      console.log(e);
    }
  },

  data: () => ({
    servicesCard: [
      {
        title: "Domain Registration & Web Hosting",
        src: s2,
        disc:
          "We have support team for 24/7 operation. They provide help and ongoing assistance at any time.",
        id: 1
      },
      {
        title: "Website Design & Development",
        src: s1,
        disc:
          "Transferring from another host? Our expert support team is standing by to transfer your site.",
        id: 2
      },
      {
        title: "Dedicated Server & Cloud Hosting",
        src: s3,
        disc:
          "LiteSpeed Web Server is a high-performance HTTP server and known for its high performance.",
        id: 3
      },
      
    ]
  })
};
</script>

<style>
.web-head {
  background-color: #ffffff !important;
  background: linear-gradient(
    to top,
    rgba(177, 177, 177, 0.95),
    rgba(255, 255, 255, 0)
  ) !important;
  margin-bottom: 1em !important;
  padding-bottom: 3.5em !important;
  -webkit-clip-path: polygon(
    50% 0%,
    100% 0,
    100% 65%,
    50% 100%,
    0 65%,
    0 0
  ) !important;
  clip-path: polygon(50% 0%, 100% 0, 100% 65%, 50% 100%, 0 65%, 0 0) !important;
  height: 71vh;
}
::-webkit-scrollbar {
  width: 0px;
}
</style>
