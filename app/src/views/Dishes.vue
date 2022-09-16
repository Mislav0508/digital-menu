<template>
  <v-container>
    <v-row>
      <h1>Dishes</h1>
    </v-row>
    <v-row>
      <!-- ZATVORENI -->
      <Dish v-for="(dish, i) in dishes" :key="dish.id" :dish="dishes[i]"/>
    </v-row>
    <v-row>
      <EditDish :dish="openDish"/>
    </v-row>
  </v-container>
</template>

<script>
import DishService from '@/services/DishService'
import Dish from '@/components/Dish.vue'
import EditDish from './elements/EditDish.vue'
export default {
  name: 'Dishes',
  components: {
    Dish,
    EditDish
  },
  mounted () {
    console.log(this.openDish)
  },
  beforeMount () {
    this.getDishes()
  },
  data () {
    return {
      dishes: [],
      openDish: {}
    }
  },
  methods: {
    async getDishes () {
      const data = await DishService.getDishes()
      this.dishes = data.data.dishes
      console.log(this.dishes)
    }
  }
}
</script>

<style>

</style>
