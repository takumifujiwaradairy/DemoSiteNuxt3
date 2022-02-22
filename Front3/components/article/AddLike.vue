<template>
  <div>
    <button v-if="is_like" @click="disLike(id)">DidLike</button>
    <button v-else @click="addLike(id)">Like</button>
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  props: ['id', 'is_like'],
  methods: {
    ...mapActions(['addLike', 'disLike']),
  }
}
</script>

<style>

</style>