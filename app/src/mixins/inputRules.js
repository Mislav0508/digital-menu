export default {
  data () {
    return {
      nameRules: [
        v => !!v || 'Name is required',
        v => v.length <= 50 || 'Name should be less than 50 characters'
      ],
      descriptionRules: [
        v => !!v || 'Description is required',
        v => v.length <= 200 || 'Name should be less than 200 characters'
      ],
      priceRules: [
        v => !!v || 'Price is required',
        v => v <= 500 || 'Price should be less than 500',
        v => v > 0 || 'Price must be more than 0'
      ],
      required: [
        v => !!v || 'Field is required'
      ],
      waitTimeRules: [
        v => !!v || 'Wait time is required',
        v => v <= 100 || 'Wait time should be less than 100 minutes',
        v => v > 0 || 'Wait time must be more than 0'
      ],
      passwordRules: [
        v => !!v || 'this field is required',
        v => /^[a-zA-Z0-9+@+!]*$/.test(v) || 'Character not allowed.'
      ]
    }
  }
}