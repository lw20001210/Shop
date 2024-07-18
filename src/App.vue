<template>
  <div class="container">
    <Header></Header>
    <RouterView></RouterView>
  
   <Footer></Footer>
  </div>
</template>
<script setup lang="ts">
import Header from "./components/common/Header.vue";
import Footer from "./components/common/Footer.vue";
import { RouterView } from 'vue-router';

</script>
<style scoped lang="less">
.container {
  margin: 0 auto;
  min-width: 375px;
  max-width: 1920px;
}
</style>
