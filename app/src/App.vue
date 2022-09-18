<template>
  <v-app class="background">
    <v-main>
      <v-slide-x-transition mode="out-in">
        <router-view />
      </v-slide-x-transition>
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
@import url('https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,700&family=Raleway:wght@100;200;300;500;600;700;800;900&display=swap');

.background {
  background-color: #3A3D3E;
  font-family: 'Nunito', sans-serif !important;
}
h1 {
  font-size: 3rem;
  color: #FFA726;
}
.card {
  background-color: #b4a8a8 !important;
  border-radius: 1rem !important;
}
#app {
  background-color: #3A3D3E;
}

/* route transitions */
.route-enter-from {
  opacity: 0;
  transform: translateX(100px);
}
.route-enter-active {
  transition: all 0.3s ease-out;
}
.route-leave-to {
  opacity: 0;
  transform: translateX(-100px);
}
.route-leave-active {
  transition: all 0.3s ease-in;
}
</style>
