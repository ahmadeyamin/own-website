<template>
    <v-container fluid>
        <v-card style="padding:5px;border-radius:9px" >
            <v-card flat>
                <v-select
                    :items="filters"
                    solo
                    @change = filterChange
                    label="Sort results by:"
                    append-icon="fas fa-sort-down"
                ></v-select>
            </v-card>
            <div>
                <v-card flat>
                    <v-card-text>All Categories:</v-card-text>
                    <v-divider></v-divider>
                    <v-list dense>
                        <v-list-tile href="#" @click.prevent="catChanges(cat.id)" v-for="(cat,index) in category" :key="index">
                            {{cat.name}}
                            <v-chip color="green" text-color="white" small>{{cat.post_count}}</v-chip>
                        </v-list-tile>
                    </v-list>
                </v-card>
            </div>
            <div>
                <v-card flat>
                    <v-card-text>All Tag:</v-card-text>
                    <v-divider></v-divider>
                    <v-list dense>
                        <v-list-tile @click.prevent="tagChanges(item.word)" v-for="(item,key) in tags" :key="key">
                            {{item.word}}
                            <v-chip color="red" text-color="white" small>{{item.use_count}}</v-chip>
                        </v-list-tile>
                    </v-list>
                </v-card>
            </div>
        </v-card>
    </v-container>
</template>

<script>
export default {
    name:'postContentSidebar',
    data: () => ({
        category:{},
        tags:{},
        filters:[
            'OldToNew',
            'NewToOld',
            'ByView',
        ]
    }),

    methods:{
        filterChange(e){
            switch (e) {
                case 'OldToNew':
                    this.$root.$emit('PostFilters', 'OldToNew')
                    break;
                case 'NewToOld':
                    this.$root.$emit('PostFilters', 'NewToOld')
                    break;
                case 'ByView':
                    this.$root.$emit('PostFilters', 'ByView')
                    break;
                default:
                    this.$root.$emit('PostFilters', 'NULL')
                    break;
            }
        },
        tagChanges(word){
            this.$root.$emit('tagPostFilters', word)
        },
        catChanges(e){

            this.$root.$emit('catPostFilters', e);

        }
    },
    mounted() {
        axios
            .get( `${blogCatlist}` )
            .then(
                function(data) {
                    this.category = data.data;
                }.bind(this)
            )
            .catch(function(error) {
                console.log(error);
            });


        axios
            .get( `${blogTaglist}` )
            .then(
                function(data) {
                    this.tags = data.data;
                }.bind(this)
            )
            .catch(function(error) {
                console.log(error);
            });
    }
};
</script>

<style>
</style>
