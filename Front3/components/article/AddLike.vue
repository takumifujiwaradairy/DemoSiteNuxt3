<template>
  <div>
    <button @click="addLike(id)">Like</button>
    <button @click="disLike(id)">DidLike</button>
    {{id}}
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  props: ['id'],
  methods: {
    ...mapActions(['addLike', 'disLike']),
  }
}
</script>

<style>

</style>