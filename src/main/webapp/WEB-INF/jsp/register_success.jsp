<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//register_success.css">
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
    <title>跳转页面</title>
    <style>
        /*body{*/
              /*background-color: #0da5d6;*/
          /*}*/
    </style>
</head>
<body>
    <div id="register_success_container">
        <img src="${pageContext.request.contextPath}//img//register_success_header.png" style="z-index: 1;position: absolute;">
        <a href="${pageContext.request.contextPath}/index">
            <img src="${pageContext.request.contextPath}//img//register_success_home.png" style="z-index: 3;position: absolute;">
        </a>
        <img src="${pageContext.request.contextPath}//img//register_success_logo.png" style="z-index: 2;position: absolute;margin-left: 970px;margin-top: 3px;">
        <img src="${pageContext.request.contextPath}//img//register_success_miku.png" style="z-index: 2;position: absolute;">
        <img src="${pageContext.request.contextPath}//img//register_success_count.png" style="z-index: 2;position: absolute;">
        <div style="position: absolute;margin-left: 414px;margin-top: 477px;font-size: 24px;color: #7DB0BB;font-weight: 600;">
            <span id="showtime"></span>
        </div>
    </div>
    <script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>