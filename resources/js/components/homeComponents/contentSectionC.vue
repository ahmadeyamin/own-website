<template >
  <v-layout>
    <v-flex>
      <v-card flat class="py-5 pl-5 my-5 infoimages">
        <v-layout row wrap class>
          <v-flex xs12 md5>
            <v-card-title primary-title>
              <div>
                <div
                  class="display-2 font-weight-light text-md-left text-sm-center"
                >Increase your website growth with high performance servers</div>

                <div
                  class="subheading pt-4 font-weight-light"
                >For Enhanced performance we use LiteSpeed Web Server, HTTP/2, PHP7. We make your website faster, which will help you to increase search ranking!.</div>
                <div class="pt-4 ml-0">
                  <v-btn depressed large primary color="error" class="white--text ml-0">How It Work</v-btn>
                </div>
              </div>
            </v-card-title>
          </v-flex>
          <v-flex xs0 md6 offset-md1>
            <v-img class="infoimage1" :src="infoimg1"></v-img>
            <v-img class="infoimage2" :src="infoimg2"></v-img>
          </v-flex>
        </v-layout>
      </v-card>
    </v-flex>
  </v-layout>
</template>


<script>
import info1 from "../../../img/info1.png";
import info2 from "../../../img/info2.png";
export default {
  name: "contentSectionC",

  methods: {},

  data: () => ({
    infoimg1: info1,
    infoimg2: info2
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
