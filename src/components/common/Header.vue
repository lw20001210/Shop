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
  height: 90px;
  background-color: pink;
  display: flex;
  padding: px 10%;
  display: flex;
  justify-content: space-between;
  align-items: center;

  .left,
  .right {
    flex: 1;
  }

  .left {
    text-align: right;

    .logoImg {
      object-fit: cover;
      width: 70px;
      border-radius: 50%;
    }
  }

  .center {
    flex: 8;
  }
}
</style>