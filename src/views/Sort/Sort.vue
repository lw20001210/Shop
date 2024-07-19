<template>
  <div class="containerSort">
    <div class="cardBox">
      <el-card shadow="always" body-class="elCard">
        <div class="tagBox">
          <div class="titleBox">
            <div class="title">
              <el-icon>
                <CollectionTag color="#919191" />
              </el-icon>标签
            </div>
          </div>
          <div class="content">
            <div class="tagItem" @click="changTagActive(index)" :class="{ activeTag: index == activeTagIndex }"
              v-for="(item, index) in tagArr" :key="index">{{
                item.text }}</div>
          </div>
        </div>
        <div class="priceBox">
          <div class="titleBox">
            <div class="title">
              <el-icon>
                <PriceTag color="#919191" />
              </el-icon>价格
            </div>
          </div>
          <div class="content">
            <div class="tagItem" @click="changPriceActive(index)" :class="{ activeTag: index == activePriceIndex }"
              v-for="(item, index) in priceArr" :key="index">{{ item.text }}</div>
          </div>
        </div>
        <div class="pageBox">
          <div class="titleBox">
            <div class="title">
              <el-icon>
                <Management color="#919191" />
              </el-icon>页数
            </div>
          </div>
          <div class="content">
            <div class="pageItem">
              <el-input-number v-model="num1" size="small" />
              <el-icon class="iconStyle">
                <ChromeFilled />
              </el-icon>
              <el-input-number v-model="num2" size="small" />
            </div>
          </div>
        </div>
      </el-card>
    </div>
    <main>
      <div class="mainContent">
        <ShopList></ShopList>
      </div>
    </main>
  </div>
</template>

<script setup lang='ts'>
import { ref, onMounted } from 'vue'
let obj = { text: '全部' };
let tagArr = ref<any[]>([]);
let priceArr = ref<any[]>([]);//价格数组
let activeTagIndex = ref(0);
let activePriceIndex = ref(0);
let num1 = ref(0);
let num2 = ref(0);
onMounted(() => {
  for (let i = 1; i < 30; i++) {
    tagArr.value.push(obj);
  }
  for (let i = 1; i < 20; i++) {
    priceArr.value.push(obj);
  }
})

const changTagActive = (index: number) => {
  activeTagIndex.value = index
}
const changPriceActive = (index: number) => {
  activePriceIndex.value = index
}
</script>

<style lang='less' scoped>
.containerSort {
  //因为scoper是基于组件隔离而非路由,所以这里写container会和外面container冲突
  margin: 0 auto .625rem;
  padding: 0 10%;

  .cardBox {
    margin: .5rem 0;
    font-size: .2rem;

    :deep(.elCard) {
      padding: .25rem;

      .tagBox,
      .priceBox,
      .pageBox {
        color: #919191;
        display: flex;

        .titleBox {
          height: 100%;

          .title {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #dadada;
            padding: 3px 8px;
            border: 1px solid transparent;
            border-radius: .0625rem;
          }
        }

        .content {
          flex: 1;
          font-size: .175rem;
          display: grid;
          margin-left: .1875rem;
          gap: .0375rem .15rem;
          grid-template-columns: repeat(auto-fill, minmax(40px, 1fr));

          /* 调整列的最小宽度 */
          .tagItem {
            box-sizing: border-box;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 3px 5px;
            border-radius: 5px;
            border: 1px dotted transparent;
          }

          .tagItem:hover {
            border-color: #dadada;
            background-color: #f1f1f1;
          }

          .activeTag {
            background-color: #f1f1f1;
          }

          .pageItem {
            display: flex;
            align-items: center;

            .el-input__wrapper {
              height: 15px;
              width: 1rem;
            }

            .iconStyle {
              margin: 0 .25rem;
              font-size: 20px;
            }
          }
        }
      }

      .priceBox,
      .pageBox {
        margin-top: .25rem;
      }
    }
  }

}

@media (max-width:400px) {
  .containerSort {
    padding: 0 15px;

    .cardBox {
      font-size: 13px;
      margin: 10px 0;
    }

    .content {
      grid-template-columns: repeat(auto-fill, minmax(70px, 1fr));
      font-size: 12px !important;
    }

    .pageItem {
      :deep(.el-input-number--small) {
        width: 90px !important;
      }
      :deep(.el-input__wrapper){
        height: 23px !important;
      }

      .iconStyle {
        margin: 0 .25rem;
        font-size: 18px !important;
      }
    }
  }
}
</style>