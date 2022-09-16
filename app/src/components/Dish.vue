<template>
  <!-- eslint-disable -->
  <v-card
    :loading="loading"
    class="mx-auto my-12"
    max-width="374"
  >
    <template slot="progress">
      <v-progress-linear
        color="deep-purple"
        height="10"
        indeterminate
      ></v-progress-linear>
    </template>

    <!-- 1: Name -->
    <v-card-title v-if="!editBtn">Cafe Badilico</v-card-title>

    <v-text-field v-else 
      class="px-4"
      outlined
      :value="dishName">
    </v-text-field>

    <!-- 2: Description -->
    <v-container v-if="!editBtn">
      <v-row>
        <v-col>
          Small plates, salads & sandwiches - an intimate setting with 12 indoor seats plus patio seating.
        </v-col>
      </v-row>
    </v-container>

    <v-container v-else>
      <v-textarea
        outlined
        name="input-7-4"
        label="Description"
        value="The Woodman set to work at once, and so sharp was his axe that the tree was soon chopped nearly through."
      ></v-textarea>
    </v-container>

    <v-card-text>
      <!-- 3: Rating -->
      <v-row class="mx-0">
        <v-rating
          :value="4.5"
          color="amber"
          dense
          half-increments
          readonly
          size="16"
        ></v-rating>

        <div class="grey--text ms-4">
          4.5 (413)
        </div>
      </v-row>



      <!-- 4: Price -->
      <div v-if="!editBtn" class="mt-6 text-subtitle-1">
        Price: 50 $
      </div>

      <div v-else class="mt-6 text-subtitle-1 d-flex align-center justify-space-between">
        <v-col cols="12" sm="4">
          Price
        </v-col> 
        <v-col cols="12" sm="4">
          <v-text-field 
            dense
            class="pt-4"
            outlined
            :value="price">
          </v-text-field>
        </v-col> 
      </div>


    </v-card-text>

    <v-divider class="mx-4"></v-divider>

    <!-- 5: Availability -->
    <v-card-title v-if="!editBtn" class="justify-space-between">Today's availability <v-chip class="pr-5">Breakfast</v-chip></v-card-title>
    
    <v-card-title v-else class="py-0 text-center">
      <v-col cols="12" sm="12" class="pb-0">
        Today's availability 
      </v-col>
      <v-col cols="12" sm="12" class="pb-0">
        <v-select
          :items="['Item1', 'Item2', 'Item3']"
          label="Item1"
          solo
          dense
        ></v-select>
      </v-col>
    </v-card-title>    
    
    <!-- 6: Category -->
    <v-card-title v-if="!editBtn" class="justify-space-between">Category<v-chip class="pr-5">Afternoon and High Tea Menu</v-chip></v-card-title>

    <v-card-title v-else class="py-0 text-center">
      <v-col cols="12" sm="12" class="py-0">
        Category 
      </v-col>
      <v-col cols="12" sm="12" class="pb-0">
        <v-select  
          :items="['Category1', 'Category2', 'Category3']"
          solo
          dense
          label="Category1"
        ></v-select>
      </v-col>
    </v-card-title>
    
    <!-- 7: Sold out -->
    <v-card-title v-if="!editBtn" class="justify-space-between">Sold out<v-chip class="pr-5">No</v-chip></v-card-title>
    
    
    <!-- 8: Wait time -->
    <v-card-title v-if="!editBtn" class="justify-space-between">Wait time<v-chip class="pr-5">30 mins</v-chip></v-card-title>
    
    <v-card-title v-else class="text-center py-0">
      <v-col cols="12" sm="6" class="d-flex flex-column align-center justify-center">
        Sold out
        <v-switch
        v-model="switch1"
          :label="`${switch1.toString()}`"
        ></v-switch>
      </v-col>
      <v-col cols="12" sm="6" >
        <v-col cols="12" sm="12" class="pb-0">
          Wait Time 
        </v-col>
        <v-col cols="12" sm="12" >
          <v-text-field>
          </v-text-field>
        </v-col>
      </v-col>      
    </v-card-title>

    <v-card-actions class="justify-center">
      
      <v-container>
        <v-row v-if="!editBtn" class="d-flex justify-center">
          <v-btn          
            color="indigo darken-1 white--text"
            @click="edit"
          >
            Edit
          </v-btn>
        </v-row>

        <v-row v-else class="justify-space-around">
          <v-btn
            class="mb-5"
          color="red darken-4 white--text"
          @click="cancel"
          >
            Cancel
          </v-btn>
          <v-btn
            class="mb-5"
            color="green darken-1 white--text"
            @click="save"
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
  
</template>

<script>
export default {
  data: () => ({
    loading: false,
    editBtn: false,
    snackbar: true,
    switch1: true,
    dishName: 'some name',
    price: 40
  }),

  methods: {
    edit () {
      this.editBtn = !this.editBtn
    },
    async save () {
      this.loading = true
      this.editBtn = !this.editBtn
      this.snackbar = true
      setTimeout(() => {
        this.loading = false
        this.snackbar = false
      }, 2000)
    },
    cancel () {
      this.editBtn = !this.editBtn
    }
  }
}
</script>

<style>

</style>