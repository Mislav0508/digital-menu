<template>
  <v-container class="d-flex justify-between flex-column">
    <v-card
    :loading="loading"
    class="mx-auto my-12"
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
        v-model="property.Name"
        class="pa-4"
        outlined
        label="Dish name">
      </v-text-field>

      <!-- 2: Description -->
      <v-container>
        <v-textarea
          v-model="property.Description"
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
              v-model="property.Rating"
              color="amber"
              dense
              half-increments
              readonly
              size="16"
            ></v-rating>
          </v-col>

          <v-col cols="2" sm="2" class="grey--text pl-0"><h3>{{ property.Rating }}</h3></v-col>

        </v-row>
        <!-- 4: Price -->
        <v-row class="d-flex align-center justify-start">
          <v-col cols="12" sm="4" class="pt-0 pl-8">
            <h3>Price €</h3>
          </v-col>
          <v-col cols="12" sm="3">
            <v-text-field
              v-model="property.Price"
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
            v-model="property.Availability"
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
            v-model="property.Category"
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
            v-model="property.SoldOut"
            label="Sold out"
          ></v-checkbox>
        </v-col>
        <!-- 8: Wait time -->
        <v-col cols="12" sm="6" >
          <v-col cols="12" sm="12" >
            <v-text-field label="Wait time (mins)" v-model="property.WaitTimeMinutes">
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
              @click="cancel"
              large
            >
              Cancel
            </v-btn>
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
        Dish was successfully updated. <v-icon>mdi-checkbox-marked-circle</v-icon>
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
  </v-container>
</template>

<script>
export default {
  props: {
    dish: {
      type: Object
    }
  },
  data: () => ({
    loading: false,
    snackbar: false
  }),
  computed: {
    property: {
      get () {
        return this.dish
      }
    }
  },
  methods: {
    async save () {
      this.loading = true
      this.snackbar = true
      setTimeout(() => {
        this.loading = false
        this.snackbar = false
      }, 2000)
    },
    cancel () {
      this.$router.push({
        name: 'Dishes'
      })
    }
  }
}
</script>

<style>

</style>