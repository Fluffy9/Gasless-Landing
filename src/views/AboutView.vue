<template>
  <div class="container">
    <b-jumbotron class="text-left" bg-variant="transparent" header="About" lead="Important information, links, etc"></b-jumbotron>
    <b-card bg-variant="light">
      <div class="text-center">
        <h2>Social Links</h2>
        <a href="https://github.com/Fluffy9/Gasless"><b-btn ><b-icon-github></b-icon-github></b-btn></a>
        <br>
        <hr>
        <h2>Credits</h2>
        <a href="https://www.freepik.com/vectors/hologram-gradient">Hologram gradient vector created by kjpargeter - www.freepik.com</a>
        <br>
      </div>
    </b-card>
    <br>

  </div>
</template>
<script>
import { BIcon, BIconGithub } from 'bootstrap-vue'

export default {
    components: { BIcon, BIconGithub }
}
</script>