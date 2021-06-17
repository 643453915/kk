<template>
  <!--1:弹性布局:外层元素-->
  <div class="product_app">    
    <mt-swipe :auto="4000" class="height">
      <mt-swipe-item><img :src="require('@/assets/lining1.jpg')" width="100%"/></mt-swipe-item>
      <mt-swipe-item><img :src="require('@/assets/lining2.jpg')" width="100%"/></mt-swipe-item>
      <mt-swipe-item><img :src="require('@/assets/lining3.jpg')" width="100%"/></mt-swipe-item>
      <mt-swipe-item><img :src="require('@/assets/lining4.jpg')" width="100%"/></mt-swipe-item>
      <mt-swipe-item><img :src="require('@/assets/lining5.jpg')" width="100%"/></mt-swipe-item>
    </mt-swipe>
    <!-- <div style="width:100%;height:50px"></div> -->
    <!-- 一个商品 -->
    <div class="goods-item" v-for="(item,i) of list" :key="i">
      <!-- 商品图片 -->
        <img :src="`${axios.defaults.baseURL}/${item.pic}`"/>
      <!-- 商品名称 -->
      <h4>{{item.lname}}</h4>
      <!-- 商品价格 -->
      <h5>{{item.price}}</h5>
      <!-- 加入购物车 -->
      <mt-button @click="addcart(item.lid,item.lname,item.price)">加入购物车</mt-button>
    </div>
    <!-- 查看购物车按钮 -->
    <!-- <mt-button size="large" @click="findCart">查看购物车</mt-button> -->
    <!-- 加载更多按钮 -->
    <mt-button size="large" @click="loadMore">加载更多</mt-button>
  </div>
</template>
<script>
export default {
  name: "slider",
  data() {
    return {
      list: [], //商品列表
      pno: 0, //页码
      index: 1
    };
  },
  created() {
    //组件创建成功
    this.loadMore(); //加载数据
    //this.autoLoop();
  },
  methods: {
    // findCart(){
    //   this.$router.push("/Cart1");
    // },
    addcart(lid, lname, price) {
      console.log(1);
      console.log(lid + "_" + lname + "_" + price);
      //功能:将商品信息添加到购物车
      //1.创建变量url保存请求服务器地址
      var url = "addcart";
      //2.创建变量obj请求时数据 lid lname price
      var obj = { lid, lname, price };
      //3.发送ajax请求
      this.axios.get(url, { params: obj }).then(res => {
        //if (res.data.code == -2) {
        if(!localStorage.getItem("uname")){
          this.$toast("请登录");
          this.$router.push("/Login1");
        } else {
          this.$toast("登录成功");
        }
      });
      //4.接收服务器返回数据
      //5.判断code==-2 提示请登录 跳转 /Login组件
      //6.判断code==1 提示添加成功
    },
    loadMore() {
      //console.log(123);
      //功能:发送ajax请求获取服务器返回商品列表
      //并且把数据保存data list:[]
      //node GET /product pno pageSize
      //1.创建变量url保存请求地址
      var url = "product";
      //1.1.修改页码值加1
      this.pno++;
      //2.创建obj 请求服务器参数
      var obj = { pno: this.pno, pageSize: 20 };
      //3.发送ajax请求
      this.axios.get(url, { params: obj }).then(res => {
        //4.获取服务器端返回商品列表数据
        //console.log(res.data);
        //5.在data添加属性list:[]保存商品列表
        //this.list = res.data.data;
        //多页数据追加
        var rows = this.list.concat(res.data.data);
        this.list = rows;
        console.log(this.list);
        //6.将返回数据保存list结束
      });
    },    
  }
};
// $(function() {
//     $('.banner').unslider();
// });
</script>
<style scoped>
/*1.最外层父元素弹性布局*/
.product_app {
  width: 100%;
  display: flex; /*弹性布局*/
  flex-wrap: wrap; /*子元素换行*/
  justify-content: space-between; /*子元素两端对齐*/
  padding: 4px; /*内边距*/
}
/*2.一个商品*/
.goods-item {
  width: 48%; /*占用屏幕一半*/
  border: 1px solid #ccc; /*边框*/
  border-radius: 5px; /*圆角*/
  margin: 2px 0; /*外边距*/
  padding: 2px;
  display: flex; /*子元素设置弹性布局*/
  flex-direction: column; /*按列排放*/
  min-height: 275px;
}
/*3.一张图片*/
.goods-item img {
  width: 100%;
}
.height{
   height: 190px;
   padding-bottom: 10px;
   width: 100%;
}
</style>