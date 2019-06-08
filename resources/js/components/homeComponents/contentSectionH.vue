<template>
    <v-layout xs12>
        <v-flex>
            <v-card flat>
                <div class="py-5">
                    <div class="text-sm-center">
                        <span class="text-uppercase font-weight-bold red--text">TEAM MEMBER</span>
                        <h2 class="font-weight-regular headline">Meet with team member behind scense</h2>
                    </div>
                </div>
                <div class="glide pb-5">
                    <div data-glide-el="track" class="glide__track">
                        <ul class="glide__slides">
                            <li class="glide__slide" v-for="(i,index) in outThems" :key="`${index}`">
                                <div class="card">
                                    <div
                                        class="additional"
                                        :style="`background:${cardgradient[index > 4 ? 3 : index]}`"
                                    >
                                        <div class="user-card">
                                            <div class="level center">Level {{i.lavel}}</div>
                                            <div class="points center">{{i.point}} Points</div>

                                            <div>
                                                <v-img
                                                class="elevation-6 red"
                                                :src="avatar"

                                                style="margin: 37px auto; width: 100px;border-radius: 50%;margin: 37px auto;height: 100px"
                                            ></v-img>
                                            </div>
                                        </div>
                                        <div class="more-info">
                                            <h1>Jane Doe</h1>
                                            <div class="coords">
                                                <span>Joined Date </span>
                                                <span> {{i.joinat}}</span>
                                            </div>
                                            <div class="coords">
                                                <span>Role  ({{i.position}})</span>
                                                <span>City  ({{i.city}})</span>
                                            </div>
                                            <div class="stats">
                                                <div>
                                                    <div class="title">Awards</div>
                                                    <v-icon class="py-1">fas fa-envelope</v-icon>
                                                    <div class="value">{{i.done_project}}</div>
                                                </div>
                                                <div>
                                                    <div class="title">Matches</div>
                                                    <v-icon class="py-1">fas fa-tachometer-alt-fastest</v-icon>
                                                    <div class="value">27</div>
                                                </div>
                                                <div>
                                                    <div class="title">Pals</div>
                                                    <v-icon class="py-1">fas fa-link</v-icon>
                                                    <div class="value">123</div>
                                                </div>
                                                <div>
                                                    <div class="title">Coffee</div>
                                                    <v-icon class="py-1">fas fa-plus</v-icon>
                                                    <div class="value">2</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="general">
                                        <h1>{{i.name}}</h1>
                                        <p>{{i.desc}}</p>
                                        <span class="more">Mouse over the card for more info</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div data-glide-el="controls">
                        <button class="devslidercon right" style="left:-30px;" data-glide-dir="<">
                            <v-icon dark x-large>fas fa-chevron-left</v-icon>
                        </button>
                        <button class="devslidercon left" style="right: -30px;" data-glide-dir=">">
                            <v-icon dark x-large>fas fa-chevron-right</v-icon>
                        </button>
                    </div>
                </div>
            </v-card>
        </v-flex>
    </v-layout>
</template>


<script>
import avatari from "../../../img/developer_author.jpg";
export default {
    name: "contentSectionH",

    methods: {
        rendomGradient: function(e) {
            var r = Math.floor(Math.random() * e + 1);
            console.log(r);
            return r;
        }
    },

    data: () => ({
        avatar: avatari,
        cardgradient: [
            "linear-gradient(180deg,#21c8f6,#637bff)",
            "linear-gradient(180deg,#f44881,#ec454f)",
            "linear-gradient(0deg,#f19a1a,#ffc73c)",
            "linear-gradient(180deg,#6edcc4,#1aab8b)",
            "linear-gradient(180deg,#8b60ed,#b372bd)",
            "linear-gradient(180deg,#21c8f6,#637bff)"
        ],
        outThems:[
            {
                'lavel':1,
                'point':100,
                'fb_url':'https://facebook.com',
                'city':'bhola',
                'position':'PHP Developer',
                'email':'ahmadeyamin@gmail.com',
                'name':'Ahmad Eyamin',
                'done_project':'20',
                'joinat':'29 may 2017',
                'desc':"For Enhanced performance we use LiteSpeed Web Server, HTTP/2, PHP7. We make your website faster, which will help you to increase search ranking!."
            },
            {
                'lavel':2,
                'point':150,
                'fb_url':'https://facebook.com',
                'city':'bhola',
                'position':'PHP Developer',
                'email':'ahmadeyamin@gmail.com',
                'name':'Ahmad Eyamin',
                'done_project':'20',
                'joinat':'29 may 2017',
                'desc':"For Enhanced performance we use LiteSpeed Web Server, HTTP/2, PHP7. We make your website faster, which will help you to increase search ranking!."
            },
            {
                'lavel':3,
                'point':170,
                'fb_url':'https://facebook.com',
                'city':'bhola',
                'position':'PHP Developer',
                'email':'ahmadeyamin@gmail.com',
                'name':'Ahmad Eyamin',
                'done_project':'20',
                'joinat':'29 may 2017',
                'desc':"For Enhanced performance we use LiteSpeed Web Server, HTTP/2, PHP7. We make your website faster, which will help you to increase search ranking!."
            },
            {
                'lavel':4,
                'point':200,
                'fb_url':'https://facebook.com',
                'city':'bhola',
                'position':'PHP Developer',
                'email':'ahmadeyamin@gmail.com',
                'name':'Ahmad Eyamin',
                'done_project':'20',
                'joinat':'29 may 2017',
                'desc':"For Enhanced performance we use LiteSpeed Web Server, HTTP/2, PHP7. We make your website faster, which will help you to increase search ranking!."
            },
            {
                'label':5,
                'point':600,
                'fb_url':'https://facebook.com',
                'city':'bhola',
                'position':'PHP Developer',
                'email':'ahmadeyamin@gmail.com',
                'name':'Ahmad Eyamin',
                'done_project':'20',
                'joinat':'29 may 2017',
                'desc':"For Enhanced performance we use LiteSpeed Web Server, HTTP/2, PHP7. We make your website faster, which will help you to increase search ranking!."
            },
        ]
    })
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css?family=Abel");
.devslidercon {
    position: absolute;
    top: -185px;
    height: 80px;
    width: 80px;
    background: deepskyblue;
    color: #fff;
    border-radius: 50%;
    display: none;
}
.glide:hover .devslidercon {
    display: block;
}
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

.card {
    width: 450px;
    height: 250px;
    box-shadow: 0 8px 16px -8px rgba(0, 0, 0, 0.4);
    border-radius: 6px;
    overflow: hidden;
    position: relative;
    margin: 1.5rem;
    font-family: Abel, Arial, Verdana, sans-serif;
}

.card h1 {
    text-align: center;
}

.card .additional {
    position: absolute;
    width: 150px;
    height: 100%;
    transition: width 0.4s;
    overflow: hidden;
    z-index: 2;
}

.card:hover .additional {
    width: 100%;
    border-radius: 0 5px 5px 0;
}

.card .additional .user-card {
    width: 150px;
    height: 100%;
    position: relative;
    float: left;
}

.card .additional .user-card::after {
    content: "";
    display: block;
    position: absolute;
    top: 10%;
    right: -2px;
    height: 80%;
    border-left: 2px solid rgba(0, 0, 0, 0.025);
}

.card .additional .user-card .level,
.card .additional .user-card .points {
    top: 15% !important;
    color: #fff;
    text-transform: uppercase;
    font-size: 0.75em;
    font-weight: bold;
    background: rgba(0, 0, 0, 0.15);
    padding: 0.125rem 0.75rem;
    border-radius: 100px;
    width: 75%;
    white-space: nowrap;
    text-align: center;
    margin: auto;
}

.card .additional .user-card .points {
    top: 75% !important;
}

.card .additional .user-card svg {
    top: 50%;
}

.card .additional .more-info {
    width: 300px;
    float: left;
    position: absolute;
    left: 150px;
    height: 100%;
}

.card .additional .more-info h1 {
    color: #fff;
    margin-bottom: 0;
}

.card .additional .coords {
    margin: 0 1rem;
    color: #fff;
    font-size: 1rem;
}

.card .additional .coords span + span {
    float: right;
}

.card .additional .stats {
    font-size: 2rem;
    display: flex;
    position: absolute;
    bottom: 1rem;
    left: 1rem;
    right: 1rem;
    top: auto;
    color: #fff;
}

.card .additional .stats > div {
    flex: 1;
    text-align: center;
}

.card .additional .stats i {
    display: block;
}

.card .additional .stats div.title {
    font-size: 0.75rem !important;
    font-weight: bold;
    text-transform: uppercase;
}

.card .additional .stats div.value {
    font-size: 1.5rem;
    font-weight: bold;
    line-height: 1.5rem;
}

.card .additional .stats div.value.infinity {
    font-size: 2.5rem;
}

.card .general {
    width: 300px;
    height: 100%;
    position: absolute;
    top: 0;
    right: 0;
    z-index: 1;
    box-sizing: border-box;
    padding: 1rem;
    padding-top: 0;
}

.card .general .more {
    position: absolute;
    bottom: 1rem;
    right: 1rem;
    font-size: 0.9em;
}
</style>
