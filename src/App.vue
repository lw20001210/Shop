<template>
  <div class="container">
    <Header></Header>
    <nav><el-button>Default</el-button>
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

  nav {
    background: skyblue;
    height: 300px;
  }

  .queryTotalGood {
    width: 90%;
    background-color: rgb(26, 248, 122);
    height: 30px;
    line-height: 30px;
    text-align: center;
    margin: 10px auto 50px;
  }
}
</style>
