import Vuex from 'vuex';
import axios from 'axios';

const url = '/api/articles'

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