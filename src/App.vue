<template>
  <div id="app">
    <!-- #region Main Menu -->
    <b-navbar class="bg-white" toggleable="sm">
      <b-navbar-brand role="button" title="Home" to="/" class="bg-dark px-2 text-white rounded" style="display: flex; align-items: center">
        <b-avatar size="sm" class="mr-2" :src="require('@/assets/10069.jpg')"></b-avatar>
        <b>GASLESS</b>
      </b-navbar-brand>
      <b-collapse id="nav-text-collapse" is-nav>
        <b-navbar-nav class="mx-auto text-center">
          <b-nav-item to="/About"><small style="color: black">About</small></b-nav-item>
          <b-nav-item to="/Pricing"><small style="color: black">Pricing</small></b-nav-item>
        </b-navbar-nav>
        <b-navbar-nav class="m-0">
          <b-button variant="outline-dark" :href="$store.state['appURL']">SIGN UP</b-button>
        </b-navbar-nav>
      </b-collapse>
      <b-navbar-toggle target="nav-text-collapse"></b-navbar-toggle>
    </b-navbar>
    <!-- #endregion Main Menu -->
    <div id="image-container" style="position: absolute; top: 0; right:0; z-index: -1; width: 500px; height: 500px">
      <b-img style="object-fit: contain" fluid :src="require('@/assets/10069.jpg')"></b-img>
    </div>
    <transition name="fade" mode="out-in">
      <router-view />
    </transition>
  </div>
</template>

<style lang="scss">

$primary: #d0e1ee;
$success: #d2f2db;
$secondary: #efcfe4;
$body-bg: #f9ffff;
$white: #f9ffff;

$theme-colors: (
  "primary": $primary,
  "secondary": $secondary,
  "success": $success,
  "dark": #030303,
  "white": $white,
  //...other variables, you can find them in node_modules/bootstrap/scss/_variables.scss
);

// Import Bootstrap and BootstrapVue source SCSS files
@import "~bootstrap/scss/bootstrap.scss";
@import "~bootstrap-vue/src/index.scss";
@import "~bootstrap-vue/src/icons.scss";

@import url('https://fonts.googleapis.com/css2?family=PT+Mono&display=swap');

html, body {
  padding: 0;
}

a {
  color: #2c3e50;
}
.card{
  border-radius: 1px;
}

.btn {
  border-radius: 1px;
}

#app {
  // font-family: Avenir, Helvetica, Arial, sans-serif;
  font-family: 'PT Mono', monospace;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  // color: #2c3e50;
  color: #030303;
}

nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}

#image-container {
  mask-image: url("@/assets/Inn.svg");
  background-repeat: repeat-x;
  background-size: cover;
  mask-size: cover;
}
.fade-enter-active,
.fade-leave-active {
  transition-property: opacity;
  transition-duration: 0.15s;
}

.fade-enter-active {
  transition-delay: 0.15s;
}

.fade-enter,
.fade-leave-active {
  opacity: 0;
}

</style>
