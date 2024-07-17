import { createWebHistory, createRouter } from "vue-router";

import HomeView from "../views/Home/Home.vue";
import SortView from "../views/Sort/Sort.vue";

const routes = [
  { path: "/", redirect: "/home" },
  { path: "/home", component: HomeView },
  { path: "/sort", component: SortView },
];

export const router = createRouter({
  history: createWebHistory(),
  routes,
});
