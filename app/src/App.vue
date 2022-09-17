<template>
  <v-app class="background">
    <v-main>
      <router-view/>
    </v-main>
  </v-app>
</template>

<script>

export default {
  name: 'App',

  data: () => ({
    //
  })
}
</script>
<style>
.background {
  background-color: #3A3D3E;
}
h1 {
  font-size: 3rem;
  color: #FFA726;
}
.card {
  background-color: #b4a8a8 !important;
  border-radius: 1rem !important;
}
</style>
