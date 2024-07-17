<template>
  <div class="header">
    <div class="left">
      <img class="logoImg" :src="logoPng" alt="" />
    </div>
    <div class="center">中
    </div>
    <div class="right">
      <el-input
        placeholder="关键词"
        v-model="inputContent"
        class="input-with-select"
      >
      <template #append><el-icon><Search /></el-icon></template>
      </el-input>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import logoPng from "../../assets/logos/logo.jpg";
let inputContent = ref('');
</script>

<style lang="less" scoped>
.header {
  position: sticky;
  top: 0;
  color: red;
  height: 1.125rem;
  background-color: pink;
  display: flex;
  padding: 0 10%;
  display: flex;
  justify-content: space-between;
  align-items: center;

  .left,
  .right,.center {
    flex: 2;
    height: 100%;
    display: flex;
    align-items: center;
  }

  .left {
    text-align: right;
    
    .logoImg {
      object-fit: cover;
      width: .875rem;
      height:.875rem;
      border-radius: 50%;
    }
  }
  .right{
    flex:3;
    .input-with-select{
      background: #e6e6e6;
      height:.4375rem;
    }
  }

  .center {
    flex: 5;
    height: 100%;
  }
}
</style>