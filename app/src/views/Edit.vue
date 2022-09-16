<template>
  <v-container class="d-flex align-center justify-space-around flex-column dish">
    <Dish />
    <v-btn @click="$router.go(-1)" color="indigo white--text">Back</v-btn>
  </v-container>
</template>

<script>
import Dish from '@/components/Dish.vue'
export default {
  components: { Dish }
}
</script>

<style scoped>
.dish{
  min-height: 100vh;
}
</style>