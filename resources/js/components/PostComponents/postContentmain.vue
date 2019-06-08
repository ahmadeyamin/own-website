<template>
    <v-container>
        <h2 class="headline font-weight-bold mb-4">Lorem ipsum dolor sit amet consectetur,</h2>
        <v-layout row wrap>

            {{(PortFolioPost.data == 0) ? 'No Resalt' :''}}
            <v-flex v-for="(i,index) in PortFolioPost.data" :key="index" xs12 md4 style="padding:6px">
                <v-card flat class="djddgoro" style="overflow:hidden" :height="400" :href="`blog/${i.id}/${i.slug}`">
                    <v-img
                        class="white--text mb-2"
                        height="200px"
                        style="border-radius:9px;overflow:hidden"
                        :src="`storage/${i.image}`"
                    ></v-img>
                    <v-card-title class="m-0">
                        <span class="grey--text">Written on {{new Date(i.updated_at).toDateString()}}</span>

                    </v-card-title>
                    <v-card-title>
                        <span class="headline">{{i.title}}</span>

                    </v-card-title>
                    <v-card-actions>
                        <v-spacer></v-spacer>
                        <v-btn icon>
                            <v-icon>fas fa-comments</v-icon>
                        </v-btn>
                        <v-btn icon>
                            <v-icon>fas fa-eye</v-icon>&nbsp;{{i.view_count}}
                        </v-btn>
                    </v-card-actions>
                </v-card>
            </v-flex>
        </v-layout>
        <v-layout>
            <v-flex align-center>
                <pagination class="mt-5" align="center" :limit="1" :show-disabled="true" :data="PortFolioPost" @pagination-change-page="getResults" ></pagination>
            </v-flex>
        </v-layout>
    </v-container>
</template>

<script>
export default {
    name:'postContentmain',
    props: ['updateForfilter'],

    mounted() {
        axios.get( `${blogPostPageApi}?page=${new URL(location.href).searchParams.get('page')}`||blogPostPageApi ).then(
                function(data) {
                    this.PortFolioPost = data.data;
                }.bind(this)
            )
            .catch(function(error) {
                console.log(error);
            });
        this.getResults();





        this.$root.$on('PostFilters', (e) => {
            this.filtersquery = e;
            this.getFilterResults(e);
            this.filtersquery = ' ';
        })
        this.$root.$on('tagPostFilters', (word) => {
            this.tagword = word;
            this.getFilterResultsTag(word);
            this.tagword = ' ';
        })
        this.$root.$on('catPostFilters', (e) => {
            this.catid = e;
            this.getFilterResultsCat(e);
            this.catid = ' ';
        })

    },


    data: function() {
        return {
            PortFolioPost: {},
            dialog: [false, false, false],
            hostURL: window.location.origin,
            url:'',
            filtersquery:'',
            page:1,
            tagword:'',
            catid:'',
        };
    },

    methods: {
		// Our method to GET results from a Laravel endpoint
		getResults(page = 1) {
			axios.get(this.url = `${blogPostPageApi}?page=${page}&tagid=${this.tagword}&catid=${this.catid}`)
				.then(data => {
					this.PortFolioPost = data.data;
                });

        this.page = page;
		},
		getFilterResults(type,page) {
			axios.get(`${blogPostPageApi}?page=${page}&filter=${type}`)
				.then(data => {
					this.PortFolioPost = data.data;
                });

            console.log(type);

        },

		getFilterResultsTag(word,page) {
			axios.get(`${blogPostPageApi}?page=${page}&tagid=${word}`)
				.then(data => {
					this.PortFolioPost = data.data;
                });

            console.log(id);

        },
		getFilterResultsCat(id,page) {
			axios.get(`${blogPostPageApi}?page=${page}&catid=${id}`)
				.then(data => {
					this.PortFolioPost = data.data;
                });

            console.log(id);

        },


	}
};
</script>

<style>
.djddgoro:hover {
    box-shadow: 0px 30px 18px -8px rgba(0, 0, 0, 0.1);
}
.pagination{
    background: #151515;
    font-family: 'Sniglet', cursive;
    padding: 5px !important;
    box-shadow: inset 0 0 2px 2px rgba(0, 0, 0, 0.5);
    border-radius: 50px;
    display: inline-flex;
    position: relative;
}
.pagination li{
    list-style: none;
}
.pagination li a.page-link{
    color: #bdc3c7;
    background-color: #202020;
    font-size: 22px;
    font-weight: 600;
    line-height: 33px;
    height: 45px;
    width: 50px;
    margin: 0 2px 0 0;
    border: 1px solid #202020;
    border-top: 1px solid #353535;
    padding: 5px 10px;
    box-shadow: 0 15px 20px 0 rgba(0, 0, 0, 0.5);
    border-radius: 0;
    position: relative;
    z-index: 1;
    transition: all 0.3s ease 0s;
    text-decoration: none;

}
.pagination li.active a.page-link,
.pagination li a.page-link:hover,
.pagination li.active a.page-link:hover{
    color: #2ecc71;
    background: #151515;
    text-shadow: 0 0 15px rgba(46, 204, 113, 0.5);
    border: 1px solid transparent;
    border-bottom: 1px solid #252525;
    box-shadow: inset 0 0 10px 1px rgba(0, 0, 0, 0.8);
}
.pagination li:first-child a.page-link{ border-radius: 40px 0 0 40px; }
.pagination li:last-child a.page-link{
    margin-right: 0;
    border-radius: 0 40px 40px 0;
}
@media only screen and (max-width: 480px){
    .pagination{
        display: block;
        border-radius: 20px;
    }
    .pagination li{
        margin: 5px 2px;
        display: inline-block;
    }
}

</style>
