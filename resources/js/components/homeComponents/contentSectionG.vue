<template >
  <v-layout>
    <v-flex>
      <v-card flat class="py-5 pl-5 mt-5 mb-0 infoimages">
          <v-layout row wrap class align-center justify-center fill-height>
            <v-flex xs10 md8>
              <div>
                <div class="text-xs-center">
                  <h2 class="display-2 font-weight-regular mb-3">Search Your Domain</h2>
                </div>
                <v-form>
                  <v-container>
                    <div class="domainsearch-box">
                      <v-layout justify-center class="py-0">
                        <v-flex xs6 d-flex class="dsearchutil">
                          <v-text-field
                            label="Enter your domain name"
                            class="text-uweuyu pl-2"
                            style="margin-top:auto;height:60px;"
                            flat
                            solo
                            required
                          ></v-text-field>
                        </v-flex>

                        <v-flex xs4 d-flex class="dsearchutil">
                          <v-select
                            :items="domainitems"
                            flat
                            solo
                            label="Domain Type"
                            hide-details
                            append-icon="fas fa-caret-down"
                            style="margin-top:auto;height:60px"
                            class
                          ></v-select>
                        </v-flex>
                        <v-flex xs2 d-flex class="dsearchutil">
                          <v-btn
                            type="submit"
                            large
                            primary
                            color="error"
                            style="height:75px"
                            class="white--text mx-0 my-0"
                          >Search</v-btn>
                        </v-flex>
                      </v-layout>
                      <div></div>
                    </div>
                    <div class="subheading font-weight-light mt-4 text-xs-center">
                      <ul style="list-style: none;">
                        <li class="d-inline mx-1 font-weight-regular">.com $9.26</li>
                        <li class="d-inline mx-1 font-weight-regular">.sg $7.91</li>
                        <li class="d-inline mx-1 font-weight-regular">.space $12.54</li>
                        <li class="d-inline mx-1 font-weight-regular">.info $9.13</li>
                        <li class="d-inline mx-1 font-weight-regular">
                          <a href="#">&amp; much more</a>
                        </li>
                      </ul>
                    </div>
                  </v-container>
                </v-form>
              </div>
            </v-flex>
          </v-layout>
      </v-card>
    </v-flex>
  </v-layout>
</template>


<script>
export default {
  name: "contentSectionG",

  methods: {},

  data: () => ({
    domainitems: [".com", ".net", ".info", ".xyz", ".edu", ".org", ".co", ".me"]
  })
};
</script>

<style scoped>
.domainsearch-box {
  /* border: 1px solid red; */
  border-radius: 10px;
  overflow: hidden;
  box-shadow: rgba(22, 53, 76, 0.28) 0px 7px 25px 0px;
}
</style>
