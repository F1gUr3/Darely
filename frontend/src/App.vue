<script setup>
import { RouterLink, RouterView } from "vue-router";
import Layout from "./components/layout/Layout.vue";
</script>

<template>
  <Layout>
    <RouterView />
  </Layout>
</template>

<style scoped>

template{
    background: rgb(2,0,36);
    background: linear-gradient(180deg, rgba(2,0,36,1) 0%, rgba(20,5,26,1) 100%);
}

</style>
