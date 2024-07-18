import { createWebHistory, createRouter } from "vue-router";
const routes = [
  { path: "/", redirect: "/home" },
  { path: "/home", component:()=>import("@/views/Home/Home.vue") },
  { path: "/sort", component:()=>import("@/views/Sort/Sort.vue") },
  { path: '/:pathMatch(.*)*', name: 'NotFound',  component:()=>import("@/views/NotFound/NotFound.vue") }
];

export const router = createRouter({
  history: createWebHistory(),
  routes,
});
