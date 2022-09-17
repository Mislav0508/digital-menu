import Api from './Api'

export default {

  getDishes () {
    return Api().get('dishes')
  },

  getDropdowns () {
    return Api().get('dishes/dropdowns')
  },

  updateDish (data) {
    return Api().put('dishes/:_id', data)
  },

  deleteDish (data) {
    return Api().delete('dishes/:_id', data)
  },

  createDish (data) {
    return Api().post('dishes', data)
  }

}