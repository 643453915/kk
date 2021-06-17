<template>
    <div>
        <!-- <h3>MessageList.vue 临时改变全局组件</h3> -->
        <!-- 3:调用子组件 -->
        <!-- :imgurl="require('@/assets/1.png')"
        title="健康小窍门"
        subtitle="每天喝十杯水"
        sendtime="10:00" -->
        <!-- :imgurl="require('@/assets/a_7.png')"  直接指定了一个固定的图片不是变量-->
        <!-- :imgurl="require(`@/assets/`+item.img)" json中之需要写文件名即可 -->
        <div class="daohang">
            <span>消息</span>
        </div>
        <div style="padding-top:48px;">
        <message1
        class="itemstyle"
        v-for="(item,i) of rows "
        :key="i"
        :imgurl="require(`@/assets/`+item.img)"
        :title="item.title"
        :subtitle="item.subtitle"
        :sendtime="item.time"
        ></message1>
        <!-- <message></message> -->
        </div>
    </div>
</template>
<script>
//1:引入子组件
import Message1 from "./Message1.vue"
// 1.1引入json文件
import Messagelistjson from "@/assets/json/messagelist1.json"
export default {
    data(){
        return{
            //赋值：将json数组赋值变量rows
            rows:Messagelistjson.data
        }
    },
    created(){
        console.log(this.rows);
    },
    //2:注册子组件
    components:{
        "message1":Message1
    }
}
</script>

<style scoped>
/* 一条消息底部添加一条 灰色的下划线 */
.itemstyle{
    padding: 5px;
    border-bottom: 1px solid #d9d9d9;
}
.daohang{
    display: flex;/*指定布局方式为弹性布局*/
    position: fixed;/*固定定位*/
    z-index:999;/*显示在元素上方*/
    width:100%;/*填满父元素*/
    justify-content: space-between;/*子元素两端对齐*/
    align-items: center;/*子元素垂直居中*/
    /* background-color: #3e3a39; */
    font-weight:bold;
    padding-left: 7px;
    padding-right: 7px;
    height:48px;
    /* color:#fff; */
    font-size:18px;
    background-color: #fdfdfd;
}

</style>