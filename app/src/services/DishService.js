import Api from './Api'

export default {

  getDishes (data) {
    return Api().get('dishes', data)
  }

}