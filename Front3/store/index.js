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
      async fetchArticles({commit}){
        await axios.get(url).then(responce =>{
          const articles = responce.data.data
          commit('setArticle', articles)
        })
      },
      async postArticle({commit}, article) {
        await axios.post(url,article)
      }
    },
    mutation: {
      setArticles: () =>{

      },
    }
  })
}

export default createStore;