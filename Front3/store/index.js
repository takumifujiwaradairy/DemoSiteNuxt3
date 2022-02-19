import Vuex from 'vuex';
import axios from 'axios';

const url = '/api/articles'

const createStore = () =>{
  return new Vuex.Store({
    state: () => ({
      articles: [
      ]
    }), 
    getters: {
      getArticles: (state) => {
        return state.articles
      } 
    },
    actions: {
      async fetchArticles({ commit }){
        await axios.get(url).then(responce =>{
          const articles = responce.data.data
          commit('setArticle', articles)
        })
      },
      async postArticle({ commit }, article) {
        await axios.post(url,article).then(response => {
          commit('addArticle',response.data)
        })
      },
      async fetchArticles({ commit }){
        await axios.get(url).then(responce => {
          commit('setArticle', responce.data)
        })
      },
      async deleteArticle({ commit },id){
        await axios.delete(`${url}/${id}`)
      }
    },
    mutations: {
      addArticle: (state, article) => state.articles.push(article),
      setArticle: (state, article) => state.articles = article
    }
  })
}

export default createStore;