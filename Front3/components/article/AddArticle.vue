<template>
  <div>
    <h1>記事を投稿してみよう</h1>
      <div class="article">
        <label>タイトル</label>
        <input v-model="title">
        <label>内容</label>
        <textarea v-model="body"></textarea>
        <button @click="post">送信</button>
      </div>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      title: '',
      body: ''
    }
  },
  methods: { 
    post: function() {
      this.$store.dispatch('postArticle', { title: this.title, body: this.body });
      this.title = '',
      this.body = '',
      this.$router.push("/");
    }
  }
}
</script>

<style>

</style>