<template class="h-100">
    <div class="h-100">
        <canvas id='canvas' class=""></canvas>
        <v-container class="dbcxs0">
            <div class="ut84dk9">
                <div class="" >
                    <v-hover class="zindex-1">
                        <v-chip outline color="primary" class="d-inline-block" style="box-shadow: rgba(22, 53, 76, 0.28) 0px 7px 25px 0px;">
                             <span class="red--text text--lighten-1">25% Discount &nbsp;</span>  
                            <span>on every first annual purchase</span>
                        </v-chip>
                    </v-hover>
                </div>
                <div  class="zindex-1 mt-4" style="display:table">
                    <h2 font-size="26px,34px,42px,55px" style="" class="display-3 font-weight-light">
                        With Knowledge,<br> Passion, Heart & Soul<br> Agencies
                    </h2>
                </div>
                <div  class="zindex-1 mt-3 d-inline-block">
                    <div>
                        <v-btn depressed large primary color="teal" class="white--text">Learn More</v-btn>
                        <v-btn depressed large color="transparent" >Watch Work  &nbsp; <v-icon>far fa-arrow-right</v-icon></v-btn>
                    </div>
                </div>
            </div>
  
        </v-container> 
    </div>
</template>

<script>

export default {
    name:"contentSectionA",
    
}
</script>

<style scoped>
.h-100{
    height: 100% !important;
}
.dbcxs0{
    position: relative;
}
#canvas{
    position: absolute;
    z-index: 1;
    height: 100%;
    width: 100%;
}
.zindex-1{
    z-index: 1;
}
.web-head{
    background-color: #ffffff !important;
    background: linear-gradient(to top, rgba(177, 177, 177, 0.95), rgba(255, 255, 255, 0)) !important;
    margin-bottom: 1em !important;
    padding-bottom: 3.5em !important;
    -webkit-clip-path: polygon(50% 0%, 100% 0, 100% 65%, 50% 100%, 0 65%, 0 0) !important;
    clip-path: polygon(50% 0%, 100% 0, 100% 65%, 50% 100%, 0 65%, 0 0) !important;
    height: 71vh;
}
::-webkit-scrollbar {
    width: 0px;
}
.ut84dk9{
    margin-top: 100px;
    margin-bottom: 100px;
}
</style>
