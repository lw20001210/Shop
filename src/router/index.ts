import { createWebHistory, createRouter } from "vue-router";

import HomeView from "../views/Home/Home.vue";
import SortView from "../views/Sort/Sort.vue";
import NotFound from "../views/NotFound/NotFound.vue";
const routes = [
  { path: "/", redirect: "/home" },
  { path: "/home", component: HomeView },
  { path: "/sort", component: SortView },
  { path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound }
];

export const router = createRouter({
  history: createWebHistory(),
  routes,
});
