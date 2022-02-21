<template>
  <div>
    <button @click="AddLike(id)">Like</button>
    <button>DidLike</button>
    {{id}}
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  props: ['id'],
  methods: {
    ...mapActions(['AddLike']),
  }
}
</script>

<style>

</style>