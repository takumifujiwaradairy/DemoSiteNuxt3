<template>
  <div>
    <h1>記事の一覧</h1>

  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex';
export default {
  computed: { 
    
  },
  methods: {
    ...mapActions(['ferchArticles']),
  },
  created (){
    this.ferchArticles()
  }
}
</script>

<style>

</style>