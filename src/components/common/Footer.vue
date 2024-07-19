<template>
    <div class="container">
        <nav>
            <h1>有聊网页展示♢文件展示</h1>
            <div class="searchBox">
                <div class="btnLink">联系本网站</div>
            </div>
        </nav>
        <section>
            <div class="dec">
                <img class="img" src="@/assets/logos/logo.jpg" alt="" />
                <ul>
                    <li>有聊网页制作展示网站</li>
                    <li>有问题请及时联系本网站</li>
                    <li>欢迎收藏网站</li>
                </ul>
            </div>
            <div class="dec">
                <div class="title">本站导航</div>
                <ol>
                    <li @click="routerPage('/sort')">成品分类</li>
                    <li @click="routerPage('/shareware')">共享软件</li>
                </ol>
            </div>
            <div class="dec">
                <div class="title">友情链接</div>
            </div>
            <div class="dec">
                <div class="title">快速搜索</div>
                <div class="search">
                    <el-input placeholder="关键词" v-model="inputText" class="input-with-select">
                        <template #append><el-icon>
                                <Search />
                            </el-icon></template>
                    </el-input>
                </div>
            </div>
        </section>
        <div class="divice">
            <el-divider />
        </div>
        <div class="footer">
            <p>本站资源，仅供大家做交流学习之用！获取后请与24小时内删除！如有版权问题，请联系，本站将应您的要求删除！</p>
            <p>开发者：有聊网页制作 豫ICP备2023027273号-1</p>
        </div>
    </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
import { useRouter } from 'vue-router'
const router = useRouter()
let inputText = ref("");
const routerPage = (path: string) => {
    router.push(path);
}
</script>

<style lang="less" scoped>
.container {
    nav {
        display: flex;
        flex-direction: column;
        align-items: center;
        background: skyblue;
        height: 2.5rem;
        background: url("@/assets/swiper/swiper1.jpg") no-repeat;
        background-size: 100%;
        text-align: center;
        color: white;

        h1 {
            margin-top: 0.625rem;
            font-size: 0.35rem;
        }

        .btnLink {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0.0625rem 0.25rem;
            color: #fff;
            font-size: 0.25rem;
            border: 1px solid #fff;
            border-radius: 0.0625rem;
            margin-top: 0.25rem;
        }
    }

    section {
        padding: 0 10%;
        display: flex;
        justify-content: space-between;
        margin: .375rem auto;

        .dec {
            display: flex;
            flex-direction: column;
            align-items: center;
            font-size: .1875rem;

            .img {
                object-fit: cover;
                width: 1rem;
                height: 1rem;
                border-radius: 50%;
            }

            .img:hover {
                transform: scale(1.1);
            }

            ul {
                text-align: center;
                margin-top: 0.25rem;
                color: #919191;
                font-size: .15rem;
                line-height: .375rem;
            }

            .title {
                font-weight: 600;
                margin-bottom: 0.25rem;
            }

            .search {
                .input-with-select {
                    height: 20px;
                    font-size: 8px;
                }

                :deep(.el-input-group__append,
                    .el-input-group__prepend) {
                    padding: 0 5px !important;
                }

            }

            ol {
                line-height: .4375rem;
            }
        }

        .dec:last-child {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
    }

    @media screen and (max-width: 700px) {
        section {
            justify-content: center;

            .dec:nth-child(n+2) {
                display: none;
            }
        }
    }

    @media screen and (max-width: 380px) {
        section {
            margin: 5px auto;
        }

        ul {
            font-size: 11px !important;
            margin-top: 3px !important;
        }

        :deep(.el-divider--horizontal) {
            margin: 5px 0 !important;
        }

        p {
            padding: 0 10px;
            font-size: 10px !important;
        }
    }

    .divice {
        padding: 0 10%;

        :deep(.el-divider--horizontal) {
            margin: .25rem 0;
        }
    }

    .footer {
        padding-bottom: .25rem;

        p {
            text-align: center;
            color: #919191;
            font-size: .1875rem;
        }
    }

}
</style>
