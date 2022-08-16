import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

let plans = [];
for(let i = 0; i < Number(process.env["VUE_APP_PLANS"]); i++){
  plans.push({
    name: process.env[`VUE_APP_PLAN_${i}_NAME`],
    price: process.env[`VUE_APP_PLAN_${i}_PRICE`],
    transactions: process.env[`VUE_APP_PLAN_${i}_TRANSACTIONS`],
    description: process.env[`VUE_APP_PLAN_${i}_DESCRIPTION`],
    featured: i == Number(process.env[`VUE_APP_FEATURED_PLAN`]),
  })
}

export default new Vuex.Store({
  state: {
    plans: plans,
    appURL: process.env["VUE_APP_APP_URL"]
  },
  getters: {
  },
  mutations: {
  },
  actions: {
  },
  modules: {
  }
})
