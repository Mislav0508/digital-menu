<template>
  <v-app>
    <v-container class="fill-height color" fluid>
      <v-row align="center" justify="center">
        <v-col cols="12" sm="8" md="4">
          <v-card class="elevation-12 login-container">
            <v-toolbar class="background-login" dark flat>
              <v-toolbar-title
                data-aos="fade-left"
                data-aos-delay="500"
                data-aos-duration="1500"
                >DigitalMenu</v-toolbar-title
              >
            </v-toolbar>
            <v-card-text>
              <v-form @keydown.native.enter="attemptLogin">
                <v-text-field
                  :loading="loading"
                  v-on:keyup="(error = null)"
                  autocomplete="on"
                  name="username"
                  v-model="username"
                  id="username"
                  :prepend-icon="icons.mdiAccount"
                  type="text"
                  color="#FFA726"
                  label="Username"
                />

                <v-text-field
                  :loading="loading"
                  v-on:keyup="(error = null)"
                  name="password"
                  autocomplete="new-password"
                  v-model="password"
                  id="password"
                  :prepend-icon="icons.mdiLock"
                  type="password"
                  color="#FFA726"
                  label="Password"
                />
              </v-form>
            </v-card-text>
            <v-card-text>
              <div v-if="error === null"></div>
              <div
                class="alert alert-danger text-center"
                role="alert"
                v-html="error"
              />
            </v-card-text>

            <v-card-actions>
              <v-spacer />
              <v-btn
                @click="attemptLogin()"
                color="orange lighten-1"
                class="white--text"
                raised
                large
                :loading="loading2"
                :disabled="loading2"
                >Login</v-btn
              >
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
    <v-footer>
      <v-col cols="12" class="text-center">
        {{ new Date().getFullYear() }} ©
        <strong>
          Dirs21
        </strong>
      </v-col>
    </v-footer>
  </v-app>
</template>

<script>
import { mdiAccount, mdiLock } from '@mdi/js'
import AuthService from '@/services/AuthService'
export default {
  name: 'Login',
  components: {},
  data () {
    return {
      username: '',
      password: '',
      error: null,
      loading: false,
      loader: null,
      loading2: false,
      icons: {
        mdiAccount,
        mdiLock
      }
    }
  },

  methods: {
    attemptLogin: async function () {
      try {
        await AuthService.login({ username: this.username, password: this.password })
      } catch (error) {
        console.log(error)
      }
      // this.$router.push({
      //   name: 'Home'
      // })
    }
  }
}
</script>

<style scoped>
.background-login {
  background: rgb(255,167,38);
  background: linear-gradient(90deg, rgba(255,167,38,1) 0%, rgba(180,168,168,1) 100%);
}
.login-container {
  filter: drop-shadow(0px 2px 2px grey);
  animation: animate 1.6s ease;
}
@keyframes animate {
  0% {
    opacity: 0;
    transform: translateY(-80px);
  }
  100% {
    opacity: 1;
    transform: translateY(0px);
  }
}
</style>
