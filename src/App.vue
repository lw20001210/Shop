<template>
  <div class="container">
    <Header></Header>
    <nav>
      <h1>搜一搜♢你想找的♢持续更新</h1>
      <div class="searchBox">
        <el-input class="search" placeholder="请输入内容" v-model="inputText" clearable>
        </el-input>
      </div>
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
import { ref } from 'vue';
import Header from "./components/common/Header.vue";
let inputText = ref('');

</script>
<style scoped lang="less">
.container {
  margin: 0 auto;
  min-width: 375px;
  max-width: 1920px;
  margin: 0 auto;

  nav {
    display:flex;
    flex-direction: column;
    align-items: center;
    background: skyblue;
    height: 3.75rem;
    background: url('./assets/swiper/swiper1.jpg') no-repeat;
    background-size: 100%;
    text-align: center;
    color: white;

    h1 {
      margin-top:1.125rem;
      font-size:.35rem;
    }

    .searchBox {
      display: flex;
      justify-content: center;
      width: 55%;
      padding: .125rem;
      margin-top:.625rem;
      background:rgba(255, 255,255,.3);
      .search{
        height:.5rem;
      }
    }
  }

  .queryTotalGood {
    width: 90%;
    background-color: rgb(26, 248, 122);
    height: .5rem;
    line-height: .5rem;
    text-align: center;
    font-size: 12px;
    color: #fff;
    margin: .125rem auto .625rem;
  }
}
</style>
