<template>
    <div>
        <div class="wd">
            <p>我的</p>
        </div>
        <div style="height:20px;"></div>
        <me></me>
    </div>
</template>
<script>
//1:引入子组件
import Me from "./Me.vue"
export default {

    created(){
        console.log(this.rows);
    },
    //2:注册子组件
    components:{
        "me":Me
    }
}
</script>
<style>
/* body{
    background-color: #f0f0f0;
} */
.wd{
    display: flex;/*指定布局方式为弹性布局*/
    position: fixed;/*固定定位*/
    z-index:999;/*显示在元素上方*/
    width:100%;/*填满父元素*/
    justify-content: space-between;/*子元素两端对齐*/
    align-items: center;/*子元素垂直居中*/
    font-weight:bold;
    height:48px;
    background-color: #fdfdfd;
    padding-left: 7px;
    padding-right: 7px;
    height:48px;
    font-size:18px;
}
</style>