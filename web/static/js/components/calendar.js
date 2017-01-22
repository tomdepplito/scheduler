import Vue from "vue"

/*
let app = new Vue({
  el: "#app",
  data: {
    message: "This is working"
  }
})
*/

let calendar = new Vue({
  el: '#calendar',
  data: {
    price: 0,
    shipping: 0,
    handling: 0,
    discount: 0
  },
  computed: {
    total: function () {
      return ((
        this.price * 100 + 
        this.shipping * 100 + 
        this.handling * 100 - 
        this.discount * 100
      ) / 100).toFixed(2)
    }
  }
})

export default calendar
