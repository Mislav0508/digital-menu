<template>
  <v-container fluid class="body dark-background" style=" background-color: linear-gradient(to right, rgba(58, 61, 62, 1) 0%, rgba(58, 61, 62, 1) 100%);">
    <v-row class="justify-center py-15">
      <h1 class="text-center">Menu</h1>
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
              <Dish v-for="(dish, i) in dishes" :key="dish.id" :dish="dishes[i]"/>
            </v-row>
          </v-container>
        </div>
      </div>
    </div>
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
  height: 100%;
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

.countach {
	font-family: countach,sans-serif;
	font-weight: 400;
	font-style: normal;
}

.tilda-petite {
	font-family: tilda-petite,sans-serif;
	font-weight: 400;
	font-style: normal;
}

.montserrat {
	font-family: montserrat, sans-serif;
	font-weight: 300;
	font-style: normal;
}

.skintone-text {
	color: var(--skintone-color);
}

.dark-text {
	color: var(--dark-color);
}

.white-text {
	color: #fff;
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
</style>