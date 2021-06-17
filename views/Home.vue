<template>
  <div class="page-tabbar">
    <div class="page-wrap">
      <!--1 调用我们顶部的标题子组件 -->
      <!-- <titlebar
            leftTitle="微信(100)"
            :rightFirstImg="require('@/assets/ic_search.png')"
            :rightSecondImg="require('@/assets/ic_add.png')"
      ></titlebar>-->
      <!-- 2:调整布局:保存标题子组件高度 -->
      <!-- <div style="margin-top:48px"></div> -->
      <!-- 3：消息列表面板 -->
      <mt-tab-container v-model="active">
        <!-- 面板父元素-->
        <mt-tab-container-item id="message">
          <!--消息列表面板 -->
          <messagelist></messagelist>
        </mt-tab-container-item>
        <mt-tab-container-item id="me">
          <!--我的列表面板 -->
          <melist></melist>
        </mt-tab-container-item>
        

        <mt-tab-container-item id="product">
          <!--商品列表 -->
          <product></product>
        </mt-tab-container-item>



        <mt-tab-container-item id="cart">
          <!--购物车列表面板 -->
          <cart :key="timer"></cart>
        </mt-tab-container-item>
      </mt-tab-container>
      <!-- 4：底部导航条 -->
      <mt-tabbar v-model="active" fixed>
        <!--fixed:固定底部导航条 -->
        <!-- 按钮二：通讯录 -->
        <mt-tab-item id="product" @click.native="changeState(1)">
          <tabbaricon
            :focused="list[1].isSelect"
            :selectedImage="require('@/assets/shangping1.png')"
            :normalImage="require('@/assets/shangping2.png')"
          ></tabbaricon>商品
        </mt-tab-item>
        <!-- 按钮一：微信 -->
        <mt-tab-item id="message" @click.native="changeState(0)">
          <tabbaricon
            :focused="list[0].isSelect"
            :selectedImage="require('@/assets/ic_weixin_selected.png')"
            :normalImage="require('@/assets/ic_weixin_normal.png')"
          ></tabbaricon>消息
        </mt-tab-item>
        <!-- 按钮三：发现 -->
        <mt-tab-item id="cart" @click.native="changeState(2)">
          <tabbaricon
            :focused="list[2].isSelect"
            :selectedImage="require('@/assets/cart2.png')"
            :normalImage="require('@/assets/cart1.png')"
          ></tabbaricon>购物车
        </mt-tab-item>
        <!-- 按钮四：我 -->
        <mt-tab-item id="me" @click.native="changeState(3)">
          <tabbaricon
            :focused="list[3].isSelect"
            :selectedImage="require('@/assets/ic_me_selected.png')"
            :normalImage="require('@/assets/ic_me_normal.png')"
          ></tabbaricon>我的
        </mt-tab-item>
      </mt-tabbar>
    </div>
  </div>
</template>
<script>
// 1：引入顶部标题子组件
import TitleBar from "@/components/common/TitleBar.vue";
//1.1 引入消息列表子组件
import MessageList1 from "@/components/common/MessageList1.vue";
//1.3 引入商品列表
import Product from "@/views/xz/Product.vue";
//引入购物车
import Cart1 from "@/views/xz/Cart1.vue";
//1.2 引入底部图片组件
import TabBarIcon from "@/components/common/TabbarIcon.vue";

import MeList from "@/components/common/MeList.vue";
export default {
  data() {
    return {
      timer: "",
      active: "product",
      list: [
        { isSelect: false }, //第一个按钮的状态 0
        { isSelect: true }, //1
        { isSelect: false }, //第三个按钮的状态 2
        { isSelect: false } //3
      ]
    };
  },
  methods: {
    changeState(idx) {
      //    功能：完成点击按钮切换图片的任务
      // 参数idx按钮的下标0 1 2 3
      // console.log(idx);
      //1:创建一个变量size 表示数组的长度
      var size = this.list.length;
      //2创建循环遍历数据list每个元素
      for (var i = 0; i < size; i++) {
        //3判断如果参数下载idx与当前按钮下标相同
        if (i == idx) {
          this.list[i].isSelect = true;
        } else {
          this.list[i].isSelect = false;
        }
        //4：当前元素选中状态true
        //5:其他元素默认状态false
        this.timer = new Date().getTime();
        // console.log(123);
      }
    }
  },
  // 2：注册顶部标题子组件
  components: {
    titlebar: TitleBar, //顶部标题子组件
    messagelist: MessageList1, //中间消息列表子组件
    tabbaricon: TabBarIcon, //底部导航条图片子组件
    melist: MeList,
    product: Product,
    cart: Cart1
  }
};
</script>
<style scoped>
.page-tabbar {
  overflow: hidden;
}
.page-wrap {
  overflow: auto;
  padding-bottom: 60px;
}
/* 3:覆盖mint-ui组件原有样式-他粑粑人按钮中文字选中样式*/
.mint-tabbar > .mint-tab-item.is-selected {
  background-color: transparent;
  color: #45c018;
}
/*4：覆盖mint-ui组件原有样式-tabbar按钮中文字默认的样式 */
.mint-tabbar > .mint-tab-item {
  color: #999999;
}
</style>>