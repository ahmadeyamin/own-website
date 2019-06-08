/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');
if (localStorage.themeColor == true || localStorage.themeColor == 'white') {
    window.themeColor = 'white';
} else {
    window.themeColor = 'dark';
}

window.Vue = require('vue');

Vue.config.productionTip = false

window.Vuetify = require('vuetify');

import './canvas';
import Glide from '@glidejs/glide'

window.addEventListener('load', () => {
    var glideS = new Glide('.glide', {
        type: 'carousel',
        perView: 2,
        peek: {
            before: 170,
            after: 170
        },
        gap: 0,
        hoverpause: true,
        keyboard: true,
        animationDuration: 1000,
        breakpoints: {
            1100: {
                perView: 2,
                peek: {
                    before: 100,
                    after: 100
                },
            },
            1270: {
                perView: 2,
                peek: {
                    before: 50,
                    after: 50
                },
            },
            1000: {
                perView: 2,
                peek: {
                    before: 40,
                    after: 40
                },
            },
            950: {
                perView: 1,
                peek: {
                    before: 100,
                    after: 100
                },
                focusAt:'center'
            },
            660: {
                perView: 1,
                peek: {
                    before: 20,
                    after: 20
                },
                focusAt:'center'
            },
            605: {
                perView: 1,
                peek: {
                    before: 30,
                    after: 30
                },
                focusAt:'center'
            },
            480: {
                perView: 1,
                peek: {
                    before: 40,
                    after: 40
                },
                focusAt:'center'
            },
            300: {
                perView: 1,
                peek: {
                    before: 100,
                    after: 100
                },
                focusAt:'center'
            },
        }
    });

    var customerSay = new Glide('.customer_say', {
        type: 'carousel',
        perView: 1,
        peek: {
            before: 0,
            after: 0
        },

    });


    if(document.querySelector('.glide')){
        glideS.mount();
    }
    if(document.querySelector('.customer_say')){
        customerSay.mount();
    }
});


Vue.use(Vuetify, {
    iconfont: 'fa',
})



/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/Welcome.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))


// let  =;
// Vue.component('MainComponent', require('./components/MyMainComponent').default);

import App from './components/HomeComponent.vue';
import Post from './components/PostComponent.vue';
import Singel from './components/PostSingel.vue';

Vue.component('pagination', require('laravel-vue-pagination'));

if (document.querySelector('#app')) {
    let app = new Vue({
        render: h => h(App),
        data: {

        }
    }).$mount('#app')

}

if (document.querySelector('#post')) {
    let app = new Vue({
        render: h => h(Post),
        data: {

        }
    }).$mount('#post')

}

if (document.querySelector('#postsingel')) {
    let app = new Vue({
        render: h => h(Singel),
        data: {

        }
    }).$mount('#postsingel')

}


//https://react-next-landing.redq.io/agency
//https://react-next-landing.redq.io/portfolio
//https://react-next-landing.redq.io/hosting#
