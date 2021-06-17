<template>
    <div class="img">
        <div class="img1">
            <div style="padding-top:50%;">
         <h1 style="text-align:center;font-size:28px;color:white;margin-bottom:30px;">注册</h1>
        <!-- 添加两个输入框 用户名和密码 -->
        <mt-field label="用户名" placeholder="请输入用户名" v-model="uname">
            
        </mt-field>
        <mt-field label="密码" placeholder="请输入密码" v-model="upwd">
            
        </mt-field>
        <!-- 添加一个按钮 -->
        <mt-button size="large" @click="zc">注册</mt-button>
        </div>
        </div>
        <!-- 底部 -->
        <div class="bottom">
            <h6>帮助</h6>
            <p>已阅读并同意以下协议：</p>
            <p class="p1">平台服务协议、隐私权政策、法律声明、客户端服务条款。</p>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            uname:"",
            upwd:"",
        }
    },
    methods:{
        zc(){
            // 1：创建一个正则表达式用于验证用户名和密码
            var reg=/^[0-9a-z]{3,12}$/i;
            // 2：获取用户名和密码
            var u =this.uname;
            var p =this.upwd;
            // console.log(u+"_"+p);
            // 3：用户名如果格式不正确，提示错误信息
            if(!reg.test(u)){
                this.$messagebox("消息","用户名格式不正确");
                return;
            }
            // 4：验证用户密码如果格式不正确，提示错误信息
            if(!reg.test(p)){
                this.$messagebox("消息","密码格式不正确");
                return;
            }
            // 5：创建url变量，保存请求服务器地址
            var url = "zhuce";
            // 6：创建obj变量，保存请求时参数
            var obj = {uname:u,upwd:p};
            this.axios.get(url,{params:obj}).then(res=>{
                // console.log(res);
            
            // 8：接收服务器返回结果 
            // 9：如果-1 提示用户名和密码有误
            // 10：如果1 跳转商品列表组件 /Product
            if(res.data.code==-1){
                this.$messagebox("消息","注册失败");
            }else{
                this.$toast("注册成功");
                this.$router.push("/login1");
            }
            });
        }
    }
}
</script>
<style scoped>
      .img{
          /* width: 100%; */
          /* height: 100%; */
          background: url(../../assets/343.jpeg);
          background-size:cover;
       }
      .img1{
          margin-left: 10%;
          width: 80%;
          height: 666px;
          /* border: 2px solid #ccc; */
          /* margin-top:30%; */
          /* background: white; */
      }
      .bottom{
          padding-bottom: 80px;
      }
      .bottom h6{
          text-align: center;
          color: white;
      }
      .bottom p{
          color: white;
          text-align: center;
      }
      .bottom .p1{
          font-size:18px;
          color: #f12121;
      }
</style>
