<template>
  <v-container fluid>
    <v-icon class="icon" color="orange lighten-1" x-large @click="$router.push({ name: 'Login' })">{{ icons.mdiAccount }}</v-icon>
  <v-container v-if="!loading" fluid class="body dark-background" style=" background-color: linear-gradient(to right, rgba(58, 61, 62, 1) 0%, rgba(58, 61, 62, 1) 100%);">
    <v-row class="justify-center pt-10">
      <h1 class="text-center">Menu</h1>
    </v-row>
    <v-row class="justify-center pb-5">
      <v-col cols="12" sm="12" class="d-flex justify-space-around flex-wrap">
        <v-btn class="my-5 white--text" v-for="(category, i) in categories" :key="i" @click="searchTerm = category" color="#b4a8a8">
          {{ category }}
        </v-btn>
      </v-col>
      <v-col cols="12" sm="12" class="d-flex justify-space-around flex-wrap">
        <v-btn class="my-5" v-for="(item, i) in availability" :key="i" @click="searchTerm = item" color="warning">
          {{ item }}
        </v-btn>
      </v-col>
      <v-col cols="12" sm="12" md="8" lg="6" xl="3">
        <v-card class="px-10 pt-2 d-flex align-center justify-space-between">
          <v-text-field
            label="Search"
            v-model="searchTerm"
            append-icon="mdi-magnify"
            class="search-field"
            color="black"
            clearable
          ></v-text-field>
          <v-btn class="ml-4 white--text" color="secondary" @click="$router.push({ name: 'CreateDish' })">add dish</v-btn>
        </v-card>
      </v-col>
    </v-row>
    <div class="outer-border">
      <div class="mid-border">
        <div class="inner-border">
          <img class="corner-decoration corner-left-top" src="https://i.ibb.co/4mKvK3N/corner-decoration.jpg"/>
          <img class="corner-decoration corner-right-top" src="https://i.ibb.co/4mKvK3N/corner-decoration.jpg"/>
          <img class="corner-decoration corner-right-bottom" src="https://i.ibb.co/4mKvK3N/corner-decoration.jpg"/>
          <img class="corner-decoration corner-left-bottom" src="https://i.ibb.co/4mKvK3N/corner-decoration.jpg"/>
          <img class="vertical-decoration top" src="https://i.ibb.co/JRTK9z4/horizontally-centered-vertical-decoration.png"/>
          <img class="vertical-decoration bottom" src="https://i.ibb.co/JRTK9z4/horizontally-centered-vertical-decoration.png"/>

          <!-- Page Content -->
          <v-container class="py-15 my-10">
            <v-row>
              <Dish v-for="(dish, i) in filteredDishes" :key="dish.id" :dish="filteredDishes[i]"/>
            </v-row>
          </v-container>
        </div>
      </div>
    </div>
  </v-container>
  <v-container v-else>
    <h1 class="text-center">Loading...</h1>
  </v-container>
  </v-container>
</template>

<script>
import DishService from '@/services/DishService'
import Dish from '@/components/Dish.vue'
import { mdiAccount } from '@mdi/js'
export default {
  name: 'Home',
  components: {
    Dish
  },
  mounted () {
    this.getDishes()
  },
  data () {
    return {
      loading: true,
      dishes: [],
      searchTerm: '',
      icons: {
        mdiAccount
      }
    }
  },
  computed: {
    filteredDishes () {
      if (!this.searchTerm) return this.dishes
      return this.dishes.filter(x => x.strings
        .toLowerCase()
        .includes(this.searchTerm.toLowerCase())
      )
    },
    categories () {
      return [...new Set(this.dishes.map(x => x.Category))]
    },
    availability () {
      return [...new Set(this.dishes.map(x => x.Availability))]
    }
  },
  methods: {
    async getDishes () {
      this.loading = true
      try {
        const response = await DishService.getDishes()
        const dishes = await response.data.dishes
        const criteriaStrings = dishes.map((x, i) => Object.values(x).toString())
        this.dishes = dishes.map((x, i) => {
          return { ...x, strings: criteriaStrings[i] }
        })
        console.log(this.dishes)
        this.loading = false
      } catch (error) {
        console.log(error)
      }
    },
    async login () {
      //
    }
  }
}
</script>

<style >
:root {
	--skintone-color: #DE9B72;
	--dark-color: #3A3D3E;
}

.main {
  height: 100%;
}

body {
  padding: 0;
  margin: 0;
  min-height: 100vh;
}

/* .body {
  height: 100%;
  display: flex;
  justify-content: center;
  flex-direction: column;
  background-size: 140%!important;
  background-repeat: no-repeat !important;
  background-position: center !important;
} */

@media (min-width: 992px) {
	.body {
    background-size: 148vh!important;
    background-repeat: no-repeat !important;
    background-position: 50% -31vh!important;
	}
}

.icon {
  position:fixed !important;
  top:2rem;
  right: 2rem;
  scale: 1.5;
  cursor: pointer;
}

.skintone-text {
	color: var(--skintone-color);
}

a:hover {
	color: #c2c2c2;
}

.dark-background {
	background: var(--dark-color);
}

.inner-border {
  display: flex;
  justify-content: center;
  flex-direction: column;
  height: 100%;
}

.outer-border {
	border: 2px solid #DE9B72;
  height: 99%;
  width: 98%;
  padding: 6px;
  margin: 0 auto;
}

@media (min-width: 992px) {
	.outer-border {
  height: 94%;
	}
}

.mid-border {
    border: 6px solid #DE9B72;
    height: 100%;
    width: 100%;
    padding: 6px;
    margin: auto;
}

.inner-border {
	position: relative;
	border: 2px solid #DE9B72;
  height: 100%;
  width: 100%;
  margin: auto;
}

/* Decorations */
.corner-decoration {
	position: absolute;
  width: 3em;
  margin: -3px;
}

@media (min-width: 768px) {
	.corner-decoration {
		width: 3.5em;
    margin: -4px;
	}
}

@media (min-width: 992px) {
	.corner-decoration {
		width: 4em;
    margin: -5px;
	}
}

@media (min-width: 1200px) {
	.corner-decoration {
		width: 5em;
    margin: -6px;
	}
}

.corner-decoration.corner-left-top {
	left: 0;
	top: 0;
}

.corner-decoration.corner-right-top {
	top: 0;
	right: 0;
  -webkit-transform: scaleX(-1);
  transform: scaleX(-1);
}

.corner-decoration.corner-right-bottom {
	right: 0;
	bottom: 0;
  -webkit-transform: scale(-1);
  transform: scale(-1);
}

.corner-decoration.corner-left-bottom {
	left: 0;
	bottom: 0;
	-webkit-transform: scaleY(-1);
  transform: scaleY(-1);
}

.vertical-decoration {
	position: absolute;
	left: 0;
	right: 0;
	margin: auto;
	width: 11em;
}

@media (min-width: 768px) {
	.vertical-decoration {
		width: 16em;
	}
}

@media (min-width: 992px) {
	.vertical-decoration {
		width: 20em;
	}
}

@media (min-width: 1200px) {
	.vertical-decoration {
		width: 27em;
	}
}

.vertical-decoration.top {
	top: 0;
}

.vertical-decoration.bottom {
	bottom: 0;
	-webkit-transform: scaleY(-1);
  transform: scaleY(-1);
}
.search-field {
  color: #c2c2c2;
  background-color: transparent !important;
}
</style>