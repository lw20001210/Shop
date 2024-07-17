<template>
  <div class="header">
    <div class="left">
      <img class="logoImg" :src="logoPng" alt="" />
    </div>
    <div class="center">中</div>
    <div class="right">
      <!-- <el-input
        placeholder="请输入内容"
        v-model="inputContent"
        class="input-with-select"
      >
      </el-input> -->
    </div>
  </div>
</template>

<script setup lang="ts">
import logoPng from "../../assets/logos/logo.jpg";
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
    flex: 1;
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

  .center {
    flex: 8;
    height: 100%;
  }
}
</style>