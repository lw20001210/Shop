<template>
  <div class="header">
    <div class="left">
      <img class="logoImg" :src="logoPng" alt="" />
    </div>
    <div class="center" v-if="screenWidthFlag">
      <div class="routerTab" @click="changeTab(index, item.path)" v-for="(item, index) in routerKeys" :key="item.id"
        :class="{ routerActive: index == activeIndex }">
        <div class="routerItem">
          {{ item.text }}
        </div>
      </div>
    </div>
    <div class="right" :class="{ active: focusFlag }">
      <el-input placeholder="关键词" v-model="inputContent" class="input-with-select" @focus="inputFocu" @blur="inputBlur">
        <template #append><el-icon>
            <Search />
          </el-icon></template>
      </el-input>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, watchEffect } from 'vue';
import { useScreenSize } from '@/hooks/windowSize';
import logoPng from "@/assets/logos/logo.jpg";
import { useRouter } from 'vue-router'
const { screenWidth } = useScreenSize();
const router = useRouter()
let inputContent = ref('');
let activeIndex = ref(0);
let focusFlag = ref(false);
let screenWidthFlag = ref(false);//是否显示路由导航
let routerKeys = ref([
  { id: 1, text: '首页', path: '/home' },
  { id: 2, text: '成品分类', path: '/sort' },
  { id: 3, text: '共享软件', path: '/shareware' },
  { id: 4, text: '问题/教程', path: '/teach' },
])
const inputFocu = () => {
  focusFlag.value = true;
}
const inputBlur = () => {
  focusFlag.value = false;
}
const changeTab = (index: number, path: string) => {
  activeIndex.value = index;
  router.push(path);
}
watchEffect(() => {
  if (screenWidth.value > 570) {
    screenWidthFlag.value = true;
  } else {
    screenWidthFlag.value = false;
  }
})
</script>

<style lang="less" scoped>
.header {
  position: sticky;
  top: 0;
  z-index: 999;
  color: red;
  height: 1.125rem;
  padding: 0 10%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: #fff;
  box-shadow: 0px 5px 15px -5px rgba(0, 0, 0, 0.5);

  .left,
  .right,
  .center {
    flex: 1;
    height: 100%;
    display: flex;
    align-items: center;
  }

  .left {
    text-align: right;

    .logoImg {
      object-fit: cover;
      width: 1rem;
      height: 1rem;
      border-radius: 50%;
    }

    .logoImg:hover {
      transform: scale(1.1);
    }
  }

  .right {
    flex: 1;
    transition: all .3s;

    .input-with-select {
      background: #e6e6e6;
      height: .5rem;
    }

    :deep(.el-input-group__append, .el-input-group__prepend) {
      padding: 0 .1875rem;
    }

    :deep(.el-input__inner) {
      font-size: .2rem;
    }
  }

  .active {
    flex: 3;
  }

  .center {
    flex: 5;
    font-size: .225rem;
    color: black;
    border-left: .0063rem solid #ccc;
    padding-left: .25rem;

    .routerTab {
      margin-left: .25rem;
      height: 1.0625rem;
      line-height: 1.0625rem;
      border-bottom: 2px solid transparent;
    }

    .routerItem {
      padding: 0 .25rem;
    }

    .routerItem:hover {
      color: #409eff;
    }

    .routerActive {
      border-color: #409eff;
      color: #409eff;
    }
  }
}

@media (max-width:400px) {
  .header {
    padding: 0 15px;
  }
}
</style>