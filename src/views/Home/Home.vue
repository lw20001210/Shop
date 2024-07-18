<template>
  <div class="containerHome">
    <nav>
      <h1>搜一搜♢你想找的♢持续更新</h1>
      <div class="searchBox">
        <el-input class="search" placeholder="请输入内容" v-model="inputText" clearable>
          <template #append><el-icon><Search /></el-icon></template>
        </el-input>
      </div>
    </nav>
    <div class="queryTotalGood">查看所有成品分类</div>
    <main>
      主体内容
    </main>
  </div>
</template>

<script setup lang='ts'>
import { ref } from 'vue'
let inputText = ref('');
</script>

<style lang='less' scoped>
.containerHome{//因为scoper是基于组件隔离而非路由,所以这里写container会和外面container冲突
  margin:0 auto .625rem ;
  nav {
    display:flex;
    flex-direction: column;
    align-items: center;
    background: skyblue;
    height: 3.75rem;
    background: url('@/assets//swiper/swiper1.jpg') no-repeat;
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