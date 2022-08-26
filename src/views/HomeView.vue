<template>
    <div style="overflow: hidden">

      <div class="container text-black">
        <b-row>
          <b-col lg="6" sm="12">
            <div class="text-left" style="padding: 4rem 2rem">
              <h1 class="display-4 bg-white"><span style="font-weight: bold">Gasless</span> Transaction Relayer 🎆</h1>
              <br>
              <p class="lead bg-white">
                Frictionless access to the entire <a href="https://lukso.network/">Lukso</a> blockchain ecosystem. Purchase credits with your credit/debit card. Get 50 transactions a month for free
              </p>
              <br>
              <b-button variant="dark" href="https://github.com/Fluffy9/Gasless">MORE INFO</b-button>
            </div>
          </b-col>
          <b-col lg="6" sm="0">
            <div class="text-right container d-flex h-100" style="padding: 4rem 2rem">
              <transition name="grow-fade" appear>
                <b-card class="shadow justify-content-center w-100 align-self-center">
                  <b-embed type="embed" src="https://www.youtube.com/embed/tQKNo_3pGRU?autoplay=1&modestbranding=1"></b-embed>
                </b-card>            
              </transition>
            </div>              
          </b-col>
        </b-row>
        <br>
      </div>
    </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "HomeView",
  components: {
    HelloWorld,
  },
};
</script>
<style lang="scss" scoped>
/* Enter and leave animations can use different */
/* durations and timing functions.              */
.grow-fade-enter-active {
  transition: all 1.5s ease;
}
.grow-fade-leave-active {
  transition: all 1.5s cubic-bezier(1.0, 0.5, 0.8, 1.0);
}
.grow-fade-enter, .grow-fade-leave-to
/* .slide-fade-leave-active below version 2.1.8 */ {
  transform: scale(0);
  opacity: 0;
}
</style>