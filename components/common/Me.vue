<template>
    <div class="meStyle">
        <!-- 显示个用户名 -->
        <div class="portrait">
            <div>
                <p>Tom</p>
            </div>
            <div class="zhaopian"><img src="@/assets/ic_emoji.png" alt="" width="70%" style="margin-top:6px;"></div>
        </div>
        <div class="clearFix"></div>
        <!-- 显示一个余额框 -->
        <div class="particulars">
            <div class="yue">
                <p class="numbe">3000.00</p>
                <p class="word">余额</p>
            </div>
            <div class="yue">
                <p class="numbe">2000</p>
                <p class="word">积分</p>
            </div>
            <div class="yue">
                <p class="numbe">1</p>
                <p class="word">卡</p>
            </div>
            <div class="yue">
                <p class="numbe">0</p>
                <p class="word">优惠券/码</p>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="small">
            <div class="task">
                <span class="tas">任务中心</span>
                <span class="sign">></span>
            </div>
            <div class="task">
                <span class="tas">赠品详情</span>
                <span class="sign">></span>
            </div>
        </div>
        <div class="clearFix"></div>
        <div class="small">
            <div class="task">
                <span class="tas">购物车</span>
                <a href="#"><span class="sign">></span></a>
            </div>
            <div class="task">
                <span class="tas">收货地址</span>
                <span class="sign">></span>
            </div>
        </div>
        <div class="clearFix"></div>
        <div class="small">
            <div class="task">
                <span class="tas">个人信息</span>
                <span class="sign">></span>
            </div>
            <div class="task">
                <span class="tas">账号设置</span>
                <span class="sign">></span>
            </div>
        </div>
        <div class="clearFix"></div>
        <!-- <div><img src="@/assets/1948.png" alt=""></div> -->
    </div>
</template>
<script>
export default {
    data(){
        return{
            // imgUrl:require("/assets/touxiang.jpg"),
            val:true,
        }
    }
}

</script>
<style>
.clearFix{
	width: 0;
	height: 0;
	clear: both;
}
.meStyle{
    display: flex;
    flex-wrap: wrap ;
    position: relative;
}
.portrait{
    width: 100%;
    text-align: center;
    margin-bottom: 10%;
    padding-top: 10%;
    /* background-image: url("@/assets/beijing.png"); */
}
.portrait .zhaopian{
    width: 50px;
    height: 50px;
    border-radius: 50%;
    border: 2px solid #ccc;
    margin-left: 44%;
    margin-top: 10px;
}
.particulars{
    width: 90%;
    text-align: center;
    margin-left: 5%;
    background-color: #ffffff;
}
.yue{
    position: relative;
    float: left;
    margin-left: 10%;
}
.numbe{
    font-size: 14px;
    font-weight: bold;
}
.word{
    font-size: 12px;
    color: #9b9b9b;
}
.small{
    width: 90%;
    margin-left: 5%;
    margin-top: 5%;
    background-color: #ffffff;
}
.task{
    font-size: 14px;
    width: 100%;
    padding-top: 3%;
    padding-bottom: 3%;
    border-bottom: 1px solid #d9d9d9;
}
.tas{
    margin-left: 10%
}
.sign{
    margin-left: 63%;
}
</style>