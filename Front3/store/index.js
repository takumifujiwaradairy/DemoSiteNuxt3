import Vuex from 'vuex';
import axios from 'axios';

const url = 'http://localhost:3000/api/v1/articles'

const createStore = () =>{
  return new Vuex.Store({
    state: () => ({
      articles: [
      ]
    }),
    actions: {
      async postArticle({commit}, article) {
        await axios.post(url,article)
      }
    }
  })
}

export default createStore;