<template>
    <div class="page-head">
        <!-- 左侧文字 -->
        <span>{{leftTitle}}</span>
        <!-- 右侧两张图片 -->
        <div class="right-head">
            <div class="searchdiv">
                <img :src="rightFirstImg" style="width:25px" @click='shousou'> 
            </div>
            <div class="searchdiv" style="margin-left:20px;">
                <img :src="rightSecondImg" style="width:25px;margin-right:20px;" @click='tianjia'> 
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props:{//声明接收父组件数据
    //左侧的标题
    leftTitle:{default:""},
    //右侧的图片
    rightFirstImg:{default:""},
    rightSecondImg:{default:""}
    },
    methods:{
        shousou(){
            console.log("搜索");
        },
        tianjia(){
            console.log("添加");
        }
    }
}
</script>
<style scoped>
/* 1:外层父元素弹性布局 */
.page-head{
    display: flex;/*指定布局方式为弹性布局*/
    position: fixed;/*固定定位*/
    z-index:999;/*显示在元素上方*/
    width:100%;/*填满父元素*/
    justify-content: space-between;/*子元素两端对齐*/
    align-items: center;/*子元素垂直居中*/
    background-color: #3e3a39;
    padding-left: 7px;
    padding-right: 7px;
    height:48px;
    color:#fff;
    font-size:18px;
}
.right-head{
    display: flex;
}
/* 2：右侧元素弹性布局 */
</style>