<template >
<v-container fluid>
    <v-layout>
    <v-flex>
      <v-card flat class="py-5 pl-5 my-5 infoimages">
        <v-layout row wrap class align-center justify-center fill-height>
          
          <v-flex xs0 md6>
            <v-img class="circledomain" :src="circledomain" width="604"></v-img>
          </v-flex>
          <v-flex xs12 md5 offset-md1>
            <v-card-title primary-title>
              <div>
                <div
                  class="display-2 font-weight-light text-md-left text-sm-center"
                >Available domain extension with your custom name</div>

                <div
                  class="subheading pt-4 font-weight-light"
                >For Enhanced performance we use LiteSpeed Web Server, HTTP/2, PHP7. We make your website faster, which will help you to increase search ranking!.</div>
                <div class="pt-4 ml-0">
                  <v-btn depressed large primary color="error" class="white--text ml-0">Explore More</v-btn>
                </div>
              </div>
            </v-card-title>
          </v-flex>
        </v-layout>
      </v-card>
    </v-flex>
  </v-layout>
</v-container>
</template>


<script>
import circledom1 from "../../../img/circle.png";
export default {
  name: "contentSectionE",

  methods: {},

  data: () => ({
    circledomain: circledom1,
  })
};
</script>

<style scoped>
.infoimages {
  position: relative;
  min-height: 500px;
}
.infoimage1 {
  position: absolute;
  top: 0px;
  left: 0px;
  height: 400px;
  width: 100%;
}
.infoimage2 {
  position: absolute;
  left: -43px;
  width: 200px;
  height: 100px;
  bottom: -60px;
}
</style>
