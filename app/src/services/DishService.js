import Api from './Api'

export default {

  getDishes (data) {
    return Api().get('dishes', data)
  },

  updateDish (data) {
    return Api().put('dishes/:_id', data)
  },

  deleteDish (data) {
    return Api().delete('dishes/:_id', data)
  }

}