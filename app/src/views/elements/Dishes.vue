<template>
<v-container>
  <v-row>
    <Dish v-for="(dish, i) in dishes" :key="dish.id" :dish="dishes[i]"/>
  </v-row>
</v-container>
</template>

<script>
import DishService from '@/services/DishService'
import Dish from '@/components/Dish.vue'
export default {
  components: {
    Dish
  },
  mounted () {
    this.getDishes()
  },
  data () {
    return {
      dishes: [],
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
