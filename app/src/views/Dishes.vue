<template>
  <v-container>
    <h1 class="text-center">Dishes</h1>
    <Dish />
  </v-container>
</template>

<script>
import Dish from '@/components/Dish.vue'
export default {
  name: 'Dishes',
  components: {
    Dish
  }
}
</script>

<style>

</style>
