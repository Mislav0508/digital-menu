<template>
<v-container>
  <v-row>
    <v-container class="text-center pt-10">
      <h1>Dishes</h1>
    </v-container>
  </v-row>
  <div class="text-center">
    <v-pagination
      v-model="page"
      :length="4"
      @input="next"
      circle
    ></v-pagination>
  </div>
  <v-row>
    <Dish v-for="(dish, i) in dishes" :key="dish.id" :dish="dishes[i]"/>
  </v-row>
  <EditDish v-if="Object.keys(openDish).length !== 0" :dish="openDish"/>
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
  beforeMount () {
    this.getDishes()
  },
  data () {
    return {
      dishes: [],
      openDish: {},
      page: 1
    }
  },
  methods: {
    async getDishes () {
      const data = await DishService.getDishes()
      this.dishes = data.data.dishes
      console.log(this.dishes)
    },
    next (page) {
      console.log(page)
    }
  }
}
</script>

<style>

</style>
