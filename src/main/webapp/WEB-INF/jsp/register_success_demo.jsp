<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/register_success.css">
    <script type="text/javascript">
        //设定倒数秒数
        var t = 5;
        //显示倒数秒数
        function showTime() {
            t -= 1;
            document.getElementById('showtime').innerHTML = t;
            if(t == 0){
                location.href = '${pageContext.request.contextPath}/userlogin';
            }

            //每秒执行一次，showTime()
            setTimeout(showTime, 1000);
        }

        window.onload = showTime;

    </script>
    <title>New Tab</title>
    <style>
        /*body{*/
              /*background-color: #0da5d6;*/
          /*}*/
    </style>
</head>
<body>
    <div id="register_success_container">
        注册成功，<span id="showtime"></span>秒钟后跳转至登录页
    </div>
</body>
</html>