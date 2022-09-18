import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import Home from '@/views/Home.vue'
import EditDish from '@/views/elements/EditDish.vue'
import CreateDish from '@/views/elements/CreateDish.vue'
import store from '@/store/store'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Login',
    component: Login
  },
  {
    path: '/dishes',
    name: 'Home',
    component: Home
  },
  {
    path: '/edit-dish/:id',
    name: 'EditDish',
    component: EditDish
  },
  {
    path: '/create-dish',
    name: 'CreateDish',
    component: CreateDish
  },
  {
    path: '*',
    redirect: { name: 'Login' }
  }
]
/* eslint-disable */
const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeEach((to, from, next) => {
  if (to.name !== 'Login' && !store.state.isUserLoggedIn) next({ name: 'Login' })
  else next()
})

export default router
