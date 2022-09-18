<template>
  <v-container fluid class="background d-flex align-center justify-between flex-column">
    <h1 class="text-center pt-10">Create Dish</h1>
    <v-card
    :loading="loading"
    class="card mx-auto my-12"
    max-width="374"
    >
      <template slot="progress">
        <v-progress-linear
          color="indigo darken-1"
          height="10"
          indeterminate
        ></v-progress-linear>
      </template>

      <v-text-field
        v-model="dish.Name"
        :rules="nameRules"
        class="pa-4"
        outlined
        label="Dish name">
      </v-text-field>

      <v-container>
        <v-textarea
          v-model="dish.Description"
          :rules="descriptionRules"
          outlined
          label="Description"
        ></v-textarea>
      </v-container>

      <v-container>
        <v-row class="d-flex align-center justify-start">
          <v-col cols="12" sm="4" class="pt-0 pl-8">
            <h3>Price €</h3>
          </v-col>
          <v-col cols="12" sm="4">
            <v-text-field
              v-model="dish.Price"
              :rules="priceRules"
              dense
              class="pt-4"
              outlined>
            </v-text-field>
          </v-col>
        </v-row>
      </v-container>

      <v-divider class="mx-4"></v-divider>

      <v-card-title class="py-0 text-center">
        <v-col cols="12" sm="12" class="pb-0">
          <v-select
            v-model="dish.Availability"
            :items="Availability"
            :rules="required"
            label="Time of day"
            solo
            dense
            required
          ></v-select>
        </v-col>
      </v-card-title>

      <v-card-title class="py-0 text-center">
        <v-col cols="12" sm="12" class="pb-0">
          <v-select
            v-model="dish.Category"
            :items="Category"
            :rules="required"
            solo
            dense
            label="Category"
          ></v-select>
        </v-col>
      </v-card-title>

      <v-card-title class="text-center pa-0">
        <v-col cols="12" sm="6" class="d-flex flex-column align-center justify-center">
          <v-checkbox
            v-model="dish.SoldOut"
            label="Sold out"
          ></v-checkbox>
        </v-col>
        <v-col cols="12" sm="6" >
          <v-col cols="12" sm="12" >
            <v-text-field label="Wait time (mins)" v-model="dish.WaitTimeMinutes" :rules="waitTimeRules">
            </v-text-field>
          </v-col>
        </v-col>
      </v-card-title>

      <v-card-actions class="justify-center">
        <v-container>
          <v-row class="justify-space-around">
            <v-btn
              class="mb-5"
              color="green darken-1 white--text"
              @click="save"
              large
            >
              Create
            </v-btn>
          </v-row>
        </v-container>
      </v-card-actions>

      <v-snackbar
        v-model="snackbar"
        :color="'success'"
        :icon="true"
        title="Success"
      >
        {{ snackbarMsg }} <v-icon>mdi-checkbox-marked-circle</v-icon>
        <template v-slot:action="{ attrs }">
          <v-btn
            text
            v-bind="attrs"
            @click="snackbar = false"
          >
            Close
          </v-btn>
        </template>
      </v-snackbar>
    </v-card>
    <v-col cols="12" sm="4" class="d-flex justify-center align-center">
      <v-btn  @click="$router.push({ name: 'Home' })" large color="orange lighten-1" class="white--text">Cancel</v-btn>
    </v-col>
</v-container>
</template>

<script>
import DishService from '@/services/DishService'
import inputRules from '@/mixins/inputRules'
export default {
  name: 'CreateDish',
  mixins: [inputRules],
  data: () => ({
    loading: false,
    snackbarMsg: '',
    snackbar: false,
    deleteAction: false,
    dish: {
      Name: '',
      Description: '',
      Rating: 0,
      Price: 0,
      Availability: '',
      Category: '',
      SoldOut: 0,
      WaitTimeMinutes: 0
    },
    Availability: [],
    Category: []
  }),
  mounted () {
    this.getDropdowns()
  },
  methods: {
    async getDropdowns () {
      try {
        const data = await DishService.getDropdowns()
        this.Availability = data.data.dropdowns.Availability
        this.Category = data.data.dropdowns.Category
      } catch (error) {
        console.log(error)
      }
    },
    async save () {
      this.loading = true
      this.snackbarMsg = 'Dish was created successfully!.'
      this.snackbar = true

      try {
        const dish = this.dish
        const data = await DishService.createDish({ dish: { ...dish, Rating: parseFloat(dish.Rating), Price: parseFloat(dish.Price), WaitTimeMinutes: Math.floor(dish.WaitTimeMinutes) } })
        console.log(data)
      } catch (error) {
        console.log(error)
      }

      setTimeout(() => {
        this.loading = false
        this.snackbar = false
      }, 2000)
    }
  }
}
</script>

<style>

</style>