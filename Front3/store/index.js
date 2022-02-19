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
      async postArticle({ commit }, article) {
        await axios.post(url, article).then(response => {
          commit('addArticle', response.data)
        })
      },
      async fetchArticles({commit}){
        await axios.get(url)
      },
    },
    mutations: {
      addArticle: (state, article) => state.articles.push(article),
    }
  })
}

export default createStore;