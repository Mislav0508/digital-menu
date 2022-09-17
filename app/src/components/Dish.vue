<template>
  <!-- eslint-disable -->
  <v-card
    class="card mx-auto my-12"
    max-width="374"
  >

    <!-- 1: Name -->
    <v-card-title>{{ dish.Name }}</v-card-title>

    <!-- 2: Description -->
    <v-container>
      <v-row>
        <v-col>
          {{ dish.Description.substring(0,50) }}...
        </v-col>
      </v-row>
    </v-container>

    <v-card-text class="py-0 d-flex align-center">
      <!-- 3: Rating -->
      <v-row class="mx-0">
        <v-rating
          :value="parseInt(dish.Rating)"
          color="amber"
          dense
          half-increments
          readonly
          size="20"
        ></v-rating>

        <div class="ml-4">
          <h3 class="font-weight-bold">{{ dish.Rating }}</h3>
        </div>
      </v-row>

      <!-- 4: Price -->
      <div class="font-weight-bold">
        Price: {{ dish.Price }} $
      </div>

    </v-card-text>

    <v-divider class="mx-4"></v-divider>

    <!-- 5: Availability -->
    <v-card-title class="justify-space-between">Today's availability <v-chip class="pr-5">{{ dish.Availability }}</v-chip></v-card-title>  
    
    <!-- 6: Category -->
    <v-card-title class="justify-space-between">Category<v-chip class="pr-5">{{ dish.Category }}</v-chip></v-card-title>
    
    <!-- 7: Sold out -->
    <v-card-title class="justify-space-between">Sold out<v-chip class="pr-5">{{ dish.SoldOut === 1 ? 'Yes' : 'No' }}</v-chip></v-card-title>
    
    <!-- 8: Wait time -->
    <v-card-title class="justify-space-between">Wait time<v-chip class="pr-5">{{ dish.WaitTimeMinutes }} mins</v-chip></v-card-title>

    <v-card-actions v-if="$store.state.user" class="justify-center">
      
      <v-container>
        <v-row class="d-flex justify-center">
          <v-btn          
            class="mb-5"
            color="orange lighten-1 white--text"
            @click="edit"
            large
          >
            Edit
          </v-btn>
        </v-row>
      </v-container>

    </v-card-actions>

  </v-card>
  
</template>

<script>
export default {
  props: {
    dish: {
      type: Object
    }
  },
  data: () => ({
    switch1: true,
    dishName: 'some name',
    price: 40
  }),
  methods: {
    edit () {
      const dish = this.dish
      // EditDish accepting params as props
      this.$router.push({
        name: 'EditDish',
        params: { id: this.dish.id, dish: { ...dish, Rating: parseFloat(dish.Rating), Price: parseFloat(dish.Price), WaitTimeMinutes: parseInt(dish.WaitTimeMinutes) } }
      })
    }
  }
}
</script>

<style>

</style>