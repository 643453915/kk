import Vue from 'vue'
import VueRouter from 'vue-router'

import TitleBar from "@/components/common/TitleBar.vue"
// import MessageList from "@/components/common/MessageList.vue"
import MessageList1 from "@/components/common/MessageList1.vue"
// import Login from "@/views/xz/Login.vue"
import Login1 from "@/views/xz/Login1.vue"
// import Product from "@/views/xz/Product.vue"
// import Cart from "@/views/xz/Cart.vue"
import Cart1 from "@/views/xz/Cart1.vue"
import zhuce from "@/views/xz/zhuce.vue"
import lunbo from "@/views/xz/lunbo.vue"
import lunbo1 from "@/views/xz/lunbo1.vue"
import Home from "@/views/Home.vue"

Vue.use(VueRouter)

const routes = [
  { path: '/zhuce', component: zhuce },
  // {path:'/Home',component:Home},
  { path: '/Home', component: Home },
  { path: '/TitleBar', component: TitleBar },
  // {path:'/MessageList',component:MessageList},
  { path: '/MessageList1', component: MessageList1 },
  // {path:"/Login",component:Login},
  { path: "/", component: Login1 },
  // {path:'/Product',component:Product},
  // {path:'/Cart',component:Cart}
  { path: '/Cart1', component: Cart1 },
  { path: '/lunbo', component: lunbo },
  { path: '/lunbo1', component: lunbo1 }
]

const router = new VueRouter({
  routes
})

export default router