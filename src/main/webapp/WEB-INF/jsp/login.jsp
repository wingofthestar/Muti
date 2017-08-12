<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="..//css//login.css">
    <link rel="stylesheet" href="..//css//bootstrap.css">
    <script type="text/javascript" src="../js/login.js"></script>
    <meta charset="utf-8">
    <title>登录界面</title>
</head>
<body>
<div class="warp">


    <div class="up" style="background:url(..//img//login_background.png)">
        <div class="black">

            <a href="#">加入收藏</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#">了解更多</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" style="margin-left:30px">项目合作</a>
        </div>

        <img src="..//img//logo2.png" id="logo">
        <div id="div_login">
            <form action="${pageContext.request.contextPath}/login" method="post" id="loginForm">
                <div style="height:60px;"></div>
                <div class="col " style="margin:0 auto;height:30px;width:155px">
                    <div class="icon1"><img src="../img/man.png"></div>
                    <input type="text" class="form" name="email" placeholder=" 用户名 或 邮 箱" required autofocus>

                </div>
                <div style="height:30px"></div>
                <div class="col " style="margin:0 auto ;height:30px;width:155px">
                    <div class="icon2"><img src="../img/key.png"></div>
                    <input type="password" class="form" name="password" placeholder=" 密 码" required autofocus/>
                </div>
            </form>
            <div style="height:20px"></div>
            <div class="mid">
                <input type="checkbox" class="box" style="float:left ;margin-top:0"></input>&nbsp;&nbsp;&nbsp;&nbsp;<p
                    id="mid-left"> 记住密码</p>
                <a href="#">忘记密码？</a>

            </div>
            <div style="width:100px;height:auto;margin:0 auto;font-size:smaller;color:white">@美丽乡村</div>
            <div class="button">
                <div class="button-left">
                    <button type="button" class="b-left" id="loginButton" onclick="login()"> 登 录</button>
                </div>
                <div class="button-right">
                    <button type="button" class="b-right" id="registerButton" onclick="register()"> 注 册</button>
                </div>
            </div>
        </div>
        <div id="text_under">美丽乡村|纵览美景</div>
    </div>
    <div class="down">
        <div id="mid" style="margin:0 auto;">
            <img src="..//img//circle_1.jpg" class="img-circle" id="image_radius_1" style="overfloat:hidden;">
            <img src="..//img//circle_2.jpg" class="img-circle" id="image_radius_2" style="overfloat:hidden;">
            <img src="..//img//circle_3.jpg" class="img-circle" id="image_radius_3" style="overfloat:hidden;">
            <img src="..//img//circle_4.jpg" class="img-circle" id="image_radius_4" style="overfloat:hidden;">
            <img src="..//img//circle_5.jpg" class="img-circle" id="image_radius_5" style="overfloat:hidden;">
        </div>

    </div>
    <footer>
        <div class="picture" style=" float:left;margin-left:80px; margin-top:10px">
            <p id="p-word" style="color:#415A8F">合作网站</p>
            <img src="../img/公司1.jpg"
                 style="width:200px; height:95px; display:inline-block;padding-right:20px;border-right:medium solid #BCAE92">
            <img src="../img/公司2.jpg" style="width:200px; height:95px; display:inline-block; margin-left:20px">
            <p id="p-word" style="padding-top:5px">客服电话 400 1234xx</p>
        </div>
        <div class="last" style="float:left; margin-left:250px; margin-top:35px">
            <div id="div_leaf">
                <a href="#">版权声明 </a>|<a href="#"> 用户服务协议 </a>|<a href="#"> 隐私声明</a>

            </div>
            <div id="l-p"><img src="../img/微信.jpg">
                <p>微 信</p></div>
            <div id="l-p" style="margin-right:30px"><img src="../img/微博.jpg">
                <p>微 博</p></div>
        </div>
        <footer>
</div>

</body>
</html>