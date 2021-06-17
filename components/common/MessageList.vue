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
        <message
        class="itemstyle"
        v-for="(item,i) of rows "
        :key="i"
        :imgurl="require(`@/assets/`+item.img)"
        :title="item.title"
        :subtitle="item.subtitle"
        :sendtime="item.time"
        ></message>
        <!-- <message></message> -->
    </div>
</template>
<script>
//1:引入子组件
import Message from "./Message.vue"
// 1.1引入json文件
import Messagelistjson from "@/assets/json/messagelist.json"
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
        "message":Message
    }
}
</script>

<style scoped>
/* 一条消息底部添加一条 灰色的下划线 */
.itemstyle{
    padding: 5px;
    border-bottom: 1px solid #d9d9d9;
}
</style>