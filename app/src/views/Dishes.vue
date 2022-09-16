<template>
  <v-container>
    <v-row>
      <h1>Dishes</h1>
    </v-row>
    <v-row>
      <Dish v-for="(dish, i) in dishes" :key="i"/>
    </v-row>
  </v-container>
</template>

<script>
import Dish from '@/components/Dish.vue'
export default {
  name: 'Dishes',
  components: {
    Dish
  },
  data () {
    return {
      dishes: ['1', '2', '3', '4', '5', '6']
    }
  }
}
</script>

<style>

</style>
