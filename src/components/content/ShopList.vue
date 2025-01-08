<template>
    <div class="container">
        <div class="shopList">
            <div class="shopItem" v-for="(item, index) in shopList" :key="index">
                <div class="imgBox"><img class="img" :src="shopPng" alt=""></div>
                <div class="money"> ￥ {{ item.money }}</div>
                <div class="content">
                    <div class="top">
                        <div class="left">
                            <el-tag class="elTag" type="primary" v-for="(itemChild, i) in formatDate(item.skill)"
                                :key="i">{{ itemChild }}</el-tag>
                        </div>
                        <div class="right">{{ item.page }}页</div>
                    </div>
                    <div class="center">
                        {{ item.dec }}
                    </div>
                    <div class="bottom">
                        <div class="left"><el-icon>
                                <Folder />
                            </el-icon>{{ item.size }}M</div>
                        <div class="right">{{ item.btnContent }}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pagination">
            <el-pagination size="small" background layout="prev, pager, next" :total="20" />
        </div>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from "vue"
import shopPng from "@/assets/shop/shop.png";
let shopList = ref<any[]>([

])
let shopObj = {
    money: 10,
    img: shopPng,
    dec: '保护环境湿地保护',
    page: 6,
    size: 17.49,
    skill: 'html,css',
    btnContent: '查看详情'
}
onMounted(() => {
    for (let i = 0; i < 9; i++) {
        shopList.value.push(shopObj);
    }
})
const formatDate = (data: string) => {
    return data.split(',')
}

</script>

<style lang="less" scoped>
.container {
    margin-top: .1875rem;

    .shopList {
        display: grid;
        grid-gap: .375rem .25rem;
        grid-template-columns: repeat(2, 1fr);

        .shopItem {
            position: relative;
            display: flex;
            flex-direction: column;
            background: #fff;
            border-radius: 5px;
            overflow: hidden;

            .imgBox {
                flex: 1;

                .img {
                    width: 100%;
                    height: 100%;
                }
            }

            .money {
                position: absolute;
                top: 0;
                left: 0;
                padding: .025rem .125rem;
                color: red;
                background-color: #fcca02;
                font-size: 12px;
                border-top-left-radius: 5px;
            }

            .content {
                padding: .125rem .1875rem .25rem;

                .top {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    color: #919191;
                    font-size: .15rem;

                    .left {
                        flex: 1;
                        white-space: nowrap;
                        overflow: hidden;
                        text-overflow: ellipsis;

                        .elTag {
                            margin-right: 5px;
                            font-size: .15rem;
                            height: 12px;
                        }
                    }

                    .right {
                        width: .5rem;
                        text-align: right;
                    }

                }

                .center {
                    margin: .1875rem 0;
                    font-weight: 600;
                    font-size: .175rem;
                }

                .bottom {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    padding: 5px 0;
                    font-size: .15rem;

                    .left {
                        color: #919191;
                        display: flex;
                        align-items: center;
                    }

                    .right {
                        background: #34495e;
                        color: #fff;
                        padding: 3px .125rem;
                        border-radius: 5px;
                    }
                }
            }
        }

        .shopItem:hover {
            transform: scale(1.01);
        }
    }


    @media (min-width: 300px) {
        .money {
            padding: 2px 8px !important;
            background-color: #fcca02;
            font-size: 10px !important;
        }

        .top {
            font-size: 11px !important;

            .elTag {
                font-size: 11px !important;
                height: 18px !important;
            }

        }

        .center {
            font-size: 13px !important;
        }

        .bottom {
            font-size: 11px !important;

        }
    }

    /* 当屏幕宽度大于450px时，每行显示3个 */
    @media (min-width: 450px) {
        .shopList {
            grid-template-columns: repeat(3, 1fr);
        }
    }

    /* 当屏幕宽度大于60px时，每行显示4个 */
    @media (min-width: 600px) {
        .shopList {
            grid-template-columns: repeat(4, 1fr);
        }

        .money {
            font-size: 8px !important;
        }

        .top {
            font-size: 8px !important;

            .elTag {
                font-size: 8px !important;
                height: 13px !important;
            }

        }

        .center {
            font-size: 10px !important;
        }

        .bottom {
            font-size: 8px !important;

        }
    }

    /* 当屏幕宽度大于750px时，每行显示5个 */
    @media (min-width: 750px) {
        .shopList {
            grid-template-columns: repeat(5, 1fr);

            .money {
                font-size: 12px !important;
            }

            .top {
                font-size: 12px !important;

                .elTag {
                    font-size: 12px !important;
                    height: 15px !important;
                }

            }

            .center {
                font-size: 12px !important;
            }

            .bottom {
                font-size: 12px !important;
            }
        }
    }

    .pagination {
        margin-top:.1875rem;
        display: flex;
        justify-content: center;
        align-items: center;
    }
}
</style>
