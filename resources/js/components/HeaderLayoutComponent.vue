<template>
  <div>
    <v-navigation-drawer
      app
      v-model="drawer"
      width="240px"
      fixed
      :clipped="$vuetify.breakpoint.mdAndUp"
    >
      <v-list class="pa-1" dense>
        <v-list-tile href="https://about.me/ahmadeyamin" @click.stop target="_blank" avatar tag="div">
          <v-list-tile-avatar>
            <img :src="this.DevloperImg">
          </v-list-tile-avatar>

          <v-list-tile-content title="Ahmad Eyamin (DeV)">
            <v-list-tile-title>Ahmad Eyamin (PHP Developer)</v-list-tile-title>
          </v-list-tile-content>

          <v-list-tile-action>
            <v-btn icon @click.prevent.stop="drawer = !drawer">
              <v-icon>fal fa-angle-left</v-icon>
            </v-btn>
          </v-list-tile-action>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>

    <v-toolbar scroll-off-screen app :clipped-left="$vuetify.breakpoint.mdAndUp" style="z-index:8">
      <v-toolbar-side-icon @click.stop="drawer = !drawer">
        <svg
          width="24px"
          height="17px"
          viewBox="0 0 24 17"
          version="1.1"
          xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink"
        >
          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
            <g fill="#A3B0B9" fill-rule="nonzero">
              <rect x="0" y="0" width="24" height="3" rx="1.5"></rect>
              <rect x="0" y="7" width="18" height="3" rx="1.5"></rect>
              <rect x="0" y="14" width="12" height="3" rx="1.5"></rect>
            </g>
          </g>
        </svg>
      </v-toolbar-side-icon>
      <v-toolbar-title>
        <a href="/">
          <v-img style="width: 134px;height:28px" class="p-1" :src="(`/storage/${webLogoSrc.src}`) "></v-img>
        </a>
      </v-toolbar-title>
      <div>
        <v-menu :open-on-hover="true" bottom offset-y min-width="200px">
          <template v-slot:activator="{ on }">
            <v-btn flat v-on="on" class="pt-1 text-capitalize" style="font-size: 14px;color:#7d878e">
                <svg width="20" fill="#7d878e" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"> <rect x="2" y="2" width="3" height="3"></rect> <rect x="8" y="2" width="3" height="3"></rect> <rect x="14" y="2" width="3" height="3"></rect> <rect x="2" y="8" width="3" height="3"></rect> <rect x="8" y="8" width="3" height="3"></rect> <rect x="14" y="8" width="3" height="3"></rect> <rect x="2" y="14" width="3" height="3"></rect> <rect x="8" y="14" width="3" height="3"></rect> <rect x="14" y="14" width="3" height="3"></rect></svg>&nbsp;  Categories
            </v-btn>
          </template>

          <v-list v-html="this.manuHTML1">

          </v-list>
        </v-menu>
      </div>
      <v-btn flat icon v-on:click="themeHandler">
        <v-icon style="font-size:20px">fas fa-adjust</v-icon>
      </v-btn>
      <v-text-field
        flat
        v-bind:solo-inverted="true"
        prepend-icon="far fa-search"
        label="Search"
        class="hidden-sm-and-down pt-2"
      >
      </v-text-field>

      <v-btn
        round
        color="primary"
        class="font-weight-light"
        small
        flat
        @click.stop="logindialog = true"
      >Login</v-btn>

      <v-dialog v-model="logindialog" hide-overlay persistent max-width="380">
        <v-form ref="form" @submit.prevent="onLoginSubmit">
          <v-card flat>
            <v-toolbar dark color="primary">
              <v-toolbar-title>Login form</v-toolbar-title>
              <v-spacer></v-spacer>
              <v-tooltip bottom>
                <v-btn icon large href="#" target="_blank" slot="activator">
                  <v-icon large>fas fa-exclamation-triangle</v-icon>
                </v-btn>
                <span>Foget Password</span>
              </v-tooltip>
            </v-toolbar>
            <v-card-text>
              <v-text-field
                prepend-icon="fas fa-user"
                name="email"
                label="Login"
                type="text"
                v-bind:error="loginError.email"
                v-model="email"
                v-bind:error-messages="loginError.emailresponse"
              ></v-text-field>
              <v-text-field
                prepend-icon="fas fa-lock-alt"
                name="password"
                label="Password"

                id="password"
                :append-icon="showPassFld ? 'fas fa-eye' : 'fas fa-eye-slash'"
                :type="showPassFld ? 'text' : 'password'"
                v-bind:error="loginError.password"
                v-bind:error-messages="loginError.passwordresponse"
                v-model="password"
                @click:append="showPassFld = !showPassFld"
              ></v-text-field>

              <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="primary" :loading="loginError.req" :disabled="loginError.req" type="submit">Login</v-btn>
                <v-btn color="worning darken-1" flat="flat" @click="logindialog = false">Disagree</v-btn>
              </v-card-actions>
            </v-card-text>
          </v-card>
        </v-form>
      </v-dialog>

      <v-btn
        round
        outline
        color="error"
        class="font-weight-light"
        small
        dark
        @click.stop="registerdialog = true"
      >Register</v-btn>
      <v-dialog v-model="registerdialog" persistent max-width="290">
        <v-card>
          <v-card-title class="headline">Register</v-card-title>

          <v-card-text>Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running.</v-card-text>

          <v-card-actions>
            <v-spacer></v-spacer>

            <v-btn color="green darken-1" flat="flat" @click="registerdialog = false">Disagree</v-btn>

            <v-btn color="green darken-1" flat="flat" @click="registerdialog = false">Agree</v-btn>
          </v-card-actions>
        </v-card>
      </v-dialog>
    </v-toolbar>
  </div>
</template>
<script>
import logo from "../../img/logo.svg";

export default {
  mounted() {
    if (window.localStorage.themeColor == null) {
      window.localStorage.themeColor = this.dark;
    }

    axios.get(this.menuHTML).then(
          function(res) {
            this.manuHTML1 = res.data;
          }.bind(this)
    )
  },
  props: ["Thdark"],
  data() {
    return {
      email: null,
      showPassFld:false,
      loginError: {
        email: false,
        emailresponse: null,
        passwordresponse: null,
        password: false,
        req: false
      },
      password: null,
      drawer: false,
      manuHTML1: "",
      mini: false,
      dark: this.Thdark,
      logindialog: false,
      registerdialog: false,
      webLogoSrc:{
          src:webSiteLogoSrc
      },
      styleObject: {
        backgroundColor: "red",
        fontSize: "13px"
      },
        menuHTML:`${hostURL}/web/menuhtml/1`,
        DevloperImg:`${hostURL}/images/developer_author.jpg`,
    };
  },
  methods: {
    themeHandler: function(event) {
      this.$emit("change-theme");
    },
    onLoginSubmit: function(event) {
      this.loginError.req = true;
      axios
        .post(loginRoute, {
          email: this.email,
          password: this.password
        })
        .then(
          function(response) {
            this.loginError.req = false;
            if (response.status == 200 || response.status == 302) {
              window.location.href = deshbordRoute;
            }
          }.bind(this)
        )
        .catch(
          function(error) {
            this.loginError.req = false;
            if (error.response.data.errors.email) {
              this.loginError.emailresponse = error.response.data.errors.email;
              this.loginError.email = true;
            } else {
              this.loginError.email = false;
              this.loginError.emailresponse = "";
            }
            if (error.response.data.errors.password) {
              this.loginError.passwordresponse =
                error.response.data.errors.password;
              this.loginError.password = true;
            } else {
              this.loginError.password = false;
              this.loginError.passwordresponse = "";
            }
            console.log(error.response.data);
          }.bind(this)
        );
    }
  }
};
</script>

<style >
* {
  position: relative;
}
.nipple-box::before {
  display: block;
  position: absolute;
  content: "";
  width: 14px;
  height: 14px;
  background: #fff;
  z-index: 1000;
  top: -7px;
  border-top: 1px solid #d9d9d9;
  border-right: 1px solid #d9d9d9;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  border-radius: 2px;
}

.clearfix:after {
  content: "\00A0";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
.clearfix {
  display: inline-block;
}
html[xmlns] .clearfix {
  display: block;
}
* html .clearfix {
  height: 1%;
}
.clearfix {
  display: block;
}
</style>
