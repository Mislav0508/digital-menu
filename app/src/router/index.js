import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import Home from '@/views/Home.vue'
import EditDish from '@/views/elements/EditDish.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
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
