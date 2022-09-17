import Api from './Api'

export default {

  login (credentials) {
    return Api().post('login', credentials, { withCredentials: true })
  },

  logout () {
    return Api().get('logout')
  }

}