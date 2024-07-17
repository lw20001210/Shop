<template>
  <div class="container">
    <Header></Header>
    <nav>
      <el-button>Default</el-button>
      <el-button type="primary">Primary</el-button>
      <el-button type="success">Success</el-button>
    </nav>
    <div class="queryTotalGood">查看所有成品分类</div>
    <main>
      主体内容
    </main>
    <footer>
      底部
    </footer>
  </div>
</template>
<script setup lang="ts">
import Header from "./components/common/Header.vue"
</script>
<style scoped lang="less">
.container {
  margin: 0 auto;
  min-width: 375px;
  max-width: 1920px;
  margin: 0 auto;
  nav {
    background: skyblue;
    height: 3.75rem;
  }

  .queryTotalGood {
    width: 90%;
    background-color: rgb(26, 248, 122);
    height: .5rem;
    line-height: .5rem;
    text-align: center;
    font-size:12px;
    color: #fff;
    margin: .125rem auto .625rem;
  }
}
</style>
