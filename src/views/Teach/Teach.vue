<template>
    <div class="containerTeach">
      <ShopList></ShopList>
    </div>
  </template>
  
  <script setup lang='ts'>
  import ShopList from "@/components/content/ShopList.vue";
  </script>
  
  <style lang='less' scoped>
  .containerTeach {
    //因为scoper是基于组件隔离而非路由,所以这里写container会和外面container冲突
    margin: 0 auto .625rem;
    padding: 0 10%;
  }
  </style>