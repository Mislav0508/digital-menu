import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import Dishes from '../views/Dishes.vue'
import EditDish from '@/views/elements/EditDish.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Login',
    component: Login
  },
  {
    path: '/dishes',
    name: 'Dishes',
    component: Dishes
  },
  {
    path: '/edit-dish/:id',
    name: 'EditDish',
    component: EditDish,
    props: true
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
