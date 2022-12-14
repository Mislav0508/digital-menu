<template>
  <v-container fluid class="background d-flex align-center justify-between flex-column">
    <h1 class="text-center pt-10">Edit Dish</h1>
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
        v-model="dish.Name"
        :rules="nameRules"
        class="pa-4"
        outlined
        label="Dish name">
      </v-text-field>

      <!-- 2: Description -->
      <v-container>
        <v-textarea
          v-model="dish.Description"
          :rules="descriptionRules"
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
              v-model="dish.Rating"
              color="amber"
              dense
              half-increments
              readonly
              size="20"
            ></v-rating>
          </v-col>

          <v-col cols="2" sm="2" class="pl-0"><h3>{{ dish.Rating }}</h3></v-col>

        </v-row>
        <!-- 4: Price -->
        <v-row class="d-flex align-center justify-start">
          <v-col cols="12" sm="4" class="pt-0 pl-8">
            <h3>Price €</h3>
          </v-col>
          <v-col cols="12" sm="3">
            <v-text-field
              type="number"
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

      <!-- 5: Availability -->
      <v-card-title class="py-0 text-center">
        <v-col cols="12" sm="12" class="pb-0">
          <v-select
            v-model="dish.Availability"
            :rules="required"
            :items="Availability"
            label="Time of day"
            solo
            dense
          ></v-select>
        </v-col>
      </v-card-title>

      <!-- 6: Category -->
      <v-card-title class="py-0 text-center">
        <v-col cols="12" sm="12" class="pb-0">
          <v-select
            v-model="dish.Category"
            :rules="required"
            :items="Category"
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
            v-model="dish.SoldOut"
            label="Sold out"
          ></v-checkbox>
        </v-col>
        <!-- 8: Wait time -->
        <v-col cols="12" sm="6" >
          <v-col cols="12" sm="12" >
            <v-text-field type="number" label="Wait time (mins)" v-model="dish.WaitTimeMinutes" :rules="waitTimeRules">
            </v-text-field>
          </v-col>
        </v-col>
      </v-card-title>

      <v-card-actions class="justify-center">

        <v-container>

          <v-row class="justify-space-around">
            <v-btn
              class="mb-5"
              color="red darken-4 white--text"
              @click="confirmDelete"
              large
            >
              delete
            </v-btn>
            <v-btn
              class="mb-5"
              color="green darken-1 white--text"
              @click="update"
              large
              :disabled="!enableBtn"
            >
              update
            </v-btn>
          </v-row>
        </v-container>

      </v-card-actions>

      <v-snackbar
        v-model="snackbar"
        :color="snackbarColor"
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

    <v-dialog
      v-model="deleteAction"
      width="500"
    >
      <v-card>
        <v-card-text class="pa-12">
          <h3 >Are you sure you want to delete {{ dish.Name }} ?</h3>
        </v-card-text>

        <v-divider></v-divider>

        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn
            color="primary"
            text
            @click="deleteAction = false"
          >
            Back
          </v-btn>
          <v-btn
            color="primary"
            text
            @click="deleteDish"
          >
            Confirm
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-container>
</template>

<script>
import DishService from '@/services/DishService'
import inputRules from '@/mixins/inputRules'
export default {
  name: 'EditDish',
  mixins: [inputRules],
  mounted () {
    this.getDishById()
  },
  data: () => ({
    loading: false,
    snackbarMsg: '',
    snackbarColor: 'success',
    snackbar: false,
    deleteAction: false,
    Availability: [],
    Category: [],
    dish: {
      Name: '',
      Description: '',
      Rating: 0,
      Price: 0,
      Availability: '',
      Category: '',
      SoldOut: '',
      WaitTimeMinutes: 0
    }
  }),
  computed: {
    enableBtn: {
      get () {
        if (this.dish) {
          return Object.values({ name: this.dish.Name.length > 0, description: this.dish.Description.length > 0, price: this.dish.Price > 0, wait: this.dish.WaitTimeMinutes > 0 }).every(x => x === true)
        } else {
          return false
        }
      }
    }
  },
  methods: {
    async getDishById () {
      try {
        const response = await DishService.getDropdowns()
        this.Availability = response.data.dropdowns.Availability
        this.Category = response.data.dropdowns.Category
        const data = await DishService.getDishById({ id: this.$route.params.id })
        const dish = data.data.dish
        this.dish = { ...dish, Rating: parseFloat(dish.Rating), Price: parseFloat(dish.Price), WaitTimeMinutes: Math.floor(dish.WaitTimeMinutes) }
      } catch (error) {
        this.snackbar = true
        this.snackbarColor = 'error'
        this.snackbarMsg = error.response.data.msg
      }
    },
    async update () {
      this.loading = true
      try {
        await DishService.updateDish({ dish: this.dish })
        this.snackbar = true
        this.snackbarMsg = 'Dish was updated successfully.'

        setTimeout(() => {
          this.loading = false
          this.snackbar = false
        }, 2000)
      } catch (error) {
        this.snackbar = true
        this.snackbarColor = 'error'
        this.snackbarMsg = error.response.data.msg
      }
    },
    confirmDelete () {
      this.deleteAction = true
    },
    async deleteDish () {
      this.loading = true
      this.snackbar = true
      try {
        const data = await DishService.deleteDish({ data: { _id: this.dish._id } })
        this.snackbarMsg = 'Dish was deleted successfully!'
        console.log(data)
        setTimeout(() => {
          this.loading = false
          this.snackbar = false
          this.$router.push({ name: 'Home' })
        }, 2000)
        this.deleteAction = false
      } catch (error) {
        this.snackbar = true
        this.snackbarColor = 'error'
        this.snackbarMsg = error.response.data.msg
      }
    }
  }
}
</script>

<style>

</style>