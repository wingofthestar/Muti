<style type="text/css">
*{margin:0;padding:0;}
body{font-size:12px;color:#222;font-family:Verdana, Arial, Helvetica, sans-serif;background:#f0f0f0;}
.clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
.clearfix{zoom:1;}
ul, li{list-style:none;}
img{border:0;}
.wrapper{width:800px;margin:0 auto;padding-bottom:50px;}
/* 核心代码 */
.focus{width:800px;height:280px;overflow:hidden;position:relative;}
.focus ul{height:380px;position:absolute;}
.focus ul li{float:left;width:800px;height:280px;overflow:hidden;position:relative;background:#000;}
.focus ul li div{position:absolute;overflow:hidden;}
.focus .btn{position:absolute;width:780px;height:10px;padding:5px 10px;right:0;bottom:5px;text-align:center;}
.focus .btn span{display:inline-block;_display:inline;_zoom:1;width:13px;height:13px;_font-size:0;margin-left:5px;cursor:pointer;background:#fff;border-radius:50%;}
.focus .btn span.on{background:yellow;}
.focus .preNext{width:45px;height:100px;position:absolute;top:90px;background:url(img/sprite.png) no-repeat 0 0;cursor:pointer;display:none;}
.focus .pre{left:0;}
.focus .next{right:0;background-position:right top;}
</style>