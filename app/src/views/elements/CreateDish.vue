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

      <!-- 1: Name -->
      <v-text-field
        v-model="Name"
        class="pa-4"
        outlined
        label="Dish name">
      </v-text-field>

      <!-- 2: Description -->
      <v-container>
        <v-textarea
          v-model="Description"
          outlined
          label="Description"
        ></v-textarea>
      </v-container>

      <!-- 3: Rating -->
      <v-container>
        <v-row class="d-flex align-center justify-center">
          <v-col cols="2" sm="2" class="d-flex align-center justify-center">
            <h3>Rating</h3>
          </v-col>
          <v-col cols="6" sm="6" class="d-flex align-center justify-center">
            <v-rating
              v-model="Rating"
              color="amber"
              dense
              half-increments
              readonly
              size="20"
            ></v-rating>
          </v-col>

          <v-col cols="2" sm="2" class="pl-0"><h3>{{ Rating }}</h3></v-col>

        </v-row>
        <!-- 4: Price -->
        <v-row class="d-flex align-center justify-start">
          <v-col cols="12" sm="4" class="pt-0 pl-8">
            <h3>Price €</h3>
          </v-col>
          <v-col cols="12" sm="3">
            <v-text-field
              v-model="Price"
              dense
              class="pt-4"
              outlined>
            </v-text-field>
          </v-col>
        </v-row>
      </v-container>

      <v-divider class="mx-4"></v-divider>

      <!-- 5: Availability -->
      <v-card-title class="py-0 text-center">
        <v-col cols="12" sm="12" class="pb-0">
          <v-select
            v-model="Availability"
            :items="['Item1', 'Item2', 'Item3']"
            label="Time of day"
            solo
            dense
            clearable
          ></v-select>
        </v-col>
      </v-card-title>

      <!-- 6: Category -->
      <v-card-title class="py-0 text-center">
        <v-col cols="12" sm="12" class="pb-0">
          <v-select
            v-model="Category"
            :items="['Category1', 'Category2', 'Category3']"
            solo
            dense
            label="Category"
          ></v-select>
        </v-col>
      </v-card-title>

      <v-card-title class="text-center pa-0">
        <!-- 7: Sold out -->
        <v-col cols="12" sm="6" class="d-flex flex-column align-center justify-center">
          <v-checkbox
            v-model="SoldOut"
            label="Sold out"
          ></v-checkbox>
        </v-col>
        <!-- 8: Wait time -->
        <v-col cols="12" sm="6" >
          <v-col cols="12" sm="12" >
            <v-text-field label="Wait time (mins)" v-model="WaitTimeMinutes">
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
              Save
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
export default {
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
      Availability: 1,
      Category: 1,
      SoldOut: 0,
      WaitTimeMinutes: 0
    }
  }),
  methods: {
    async save () {
      this.loading = true
      this.snackbarMsg = 'Dish was successfully deleted.'
      this.snackbar = true

      const data = await DishService.createDish({ dish: this.dish })
      console.log(data)

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