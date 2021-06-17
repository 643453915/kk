<template>
    <div>
        <div class="slider-stage">
            <ul ref='sli' class="slider">
                <li>
                    <img src="/assets/1.jpg" alt="">
                </li>
                <li>
                    <img src="/assets/2.jpg" alt="">
                </li>
                <li>
                    <img src="/assets/3.jpg" alt="">
                </li>
                <li>
                    <img src="/assets/4.jpg" alt="">
                </li>
                <li>
                    <img src="/assets/5.jpg" alt="">
                </li>
                <li>
                    <img src="/assets/1.jpg" alt="">
                </li>
            </ul>
        </div>
 
    </div>
 
</template>
 
<script>
    export default {
        name: "slider",
        data() {
            return {
                index: 1,
            }
        },
        created() {
            this.autoLoop()
 
        },
        methods: {
            autoLoop() {
                setInterval(()=>{
                    this.$refs.sli.style.left = -200*this.index + 'px'
                    this.$refs.sli.style.transition= "all 0.5s"
                    this.index++
 
                    if(parseInt(this.$refs.sli.style.left) <= -1000){
                        setTimeout(()=>{
                            //这个setTimeout是因为left=-600px，transition有0.5s执行动画，需要等它执行完成后，再设置left=0，
                            //否则，直接跳到left=0,动画生硬，
                            this.$refs.sli.style.left = 0 + 'px'
                            this.$refs.sli.style.transition= "all 0s"
                            this.index = 1
                        },1000)
                    }
                },1000)
 
            }
        }
    }
</script>
 
<style>
    html {
        color: #000;
        background: #FFF;
    }
 
    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form,
    fieldset, input, textarea, p, blockquote, th, td {
        margin: 0;
        padding: 0;
    }
 
    table {
        border-collapse: collapse;
        border-spacing: 0;
    }
 
    fieldset, img {
        border: 0;
    }
 
    address, caption, cite, code, dfn, em, strong, th, var {
        font-style: normal;
        font-weight: normal;
    }
 
    ol, ul {
        list-style: none;
    }
 
    caption, th {
        text-align: left;
    }
 
    h1, h2, h3, h4, h5, h6 {
        font-size: 100%;
        font-weight: normal;
    }
 
    q:before, q:after {
        content: '';
    }
 
    abbr, acronym {
        border: 0;
    }
 
    * {
        margin: 0px;
        padding: 0px;
 
    }
 
    a {
        text-decoration: none;
        color: #000000;
        font-size: 15px;
        /*字体*/
    }
 
    li {
        list-style: none;
    }
 
    input, img {
        border: none;
    }
</style>
<style>
    .slider-stage {
        width: 200px;
        height: 100px;
        background-color: rgba(134, 134, 134, 0.33);
        border: 10px grey solid;
 
        margin: 200px auto;
        position: relative;
        overflow: hidden;
    }
 
    .slider {
        position: absolute;
        width: 500%;
        height: 100px;
        left: 0px;
        top: 0;
    }
    .slider li {
        list-style: none;
        float: left;
    }
    .slider img {
        width: 200px;
        height: 100px;
    }
 
</style>