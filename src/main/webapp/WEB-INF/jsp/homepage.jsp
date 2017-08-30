<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>homepage</title>
    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css//homepage.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css//picture_homepage.css">
	<style type="text/css">
        *{margin:0;padding:0;}
        body{font-size:12px;color:#222;font-family:Verdana, Arial, Helvetica, sans-serif;background:#f0f0f0;}
        .clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
        .clearfix{zoom:1;}
        ul, li{list-style:none;}
        img{border:0;}
        .wrapper{width:1024px;margin:0 auto;padding-bottom:50px;}
        .focus {width:1024px;height:512px;overflow:hidden;position:absolute;z-index: 6;float:left;margin-top: 0;}
        .focus ul{height:512px;position:absolute;}
        .focus ul li{float:left;width:1024px;height:512px;overflow:hidden;position:relative;background:#000;}
        .focus ul li div{position:absolute;overflow:hidden;}
        .focus .btn{position:absolute;width:1024px;height:10px;right:0;bottom:85px;text-align:center;}
        .focus .btn span{display:inline-block;_display:inline;_zoom:1;width:10px;height:10px;_font-size:0;margin-left:5px;cursor:pointer;background:#fff;border-radius:50%;}
        .focus .btn span.on{background:#3697EF;}
        .focus .pre{left:0;}
        .focus .next{right:0;background-position:right top;}
    </style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js//jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js//Tony_Tab.js"></script>
</head>
<body>
    <div id="container" style="background:url(${pageContext.request.contextPath}/img//background.png) repeat-y;">
            <div id="box">
	            <div id="focus" class="focus">
		        <ul>
			        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/img/01.png"/></a></li>
			        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/img/02.png"/></a></li>
			        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/img/03.png"/></a></li>
			        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/img/04.png"/></a></li>
			        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/img/05.png"/></a></li>
		        </ul>
	            </div>
            </div>
            <script type="text/javascript">
                $(function() {
                	$('#focus').slideFocus();
                	$('#focus2').slideFocus();
                	$('#focus3').slideFocus();
            });
            </script>    
            <img src="${pageContext.request.contextPath}/img//logo.png" id="logo">
            <img src="${pageContext.request.contextPath}/img//denglu.png" id="denglu">
            <img src="${pageContext.request.contextPath}/img//meilixiangcun.png" id="meilixiangcun">
            <div id="nav">
                <a href="#">首页</a>
                <%--<a href="#">创业</a>--%><%--<a href="#">旅游</a>--%>
                <a href="${pageContext.request.contextPath}/showpage">美丽乡村建设</a>
                <a href="${pageContext.request.contextPath}/dynamic">浏览</a>
                <%--<a href="#">更多</a>--%>
            </div>
            <c:choose>
                <c:when test="${USER_CONTEXT != null}">
                    <div id="nav_1">
                        欢迎&nbsp${USER_CONTEXT.userName}&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/user/userSpace">个人中心</a>&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/logout">注销</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div id="nav_1">
                        <a href="${pageContext.request.contextPath}/userlogin">注册|登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <%--<a href="">个人中心</a>--%>
                    </div>
                </c:otherwise>
            </c:choose>

            <div id="box_1">
                <div id="box_1_1">
                    <a href="#"><img src="${pageContext.request.contextPath}/img//white.png" id="white"></a>
                    <img src="${pageContext.request.contextPath}/img//blue.png" id="blue">
                    <!--<img src="#" id="PC">-->
                    <p id="p">${HOME_INFO_MAP["1"]}</p>
                </div>
                <div id="box_1_2">
                    <img src="${pageContext.request.contextPath}/img//white.png" id="white">
                    <img src="${pageContext.request.contextPath}/img//blue.png" id="blue">
                    <a href="#"><img src="${pageContext.request.contextPath}/img//PC2.jpg" id="PC"></a>
                    <p id="p"></p>
                </div>
                <div id="box_1_3">
                    <a href="#"><img src="${pageContext.request.contextPath}/img//white.png" id="white"></a>
                    <img src="${pageContext.request.contextPath}/img//blue.png" id="blue">
                    <!--<img src="#" id="PC">-->
                    <p id="p">${HOME_INFO_MAP["2"]}</p>
                </div>
                <div id="box_1_4">
                    <img src="${pageContext.request.contextPath}/img//white.png" id="white">
                    <img src="${pageContext.request.contextPath}/img//blue.png" id="blue">
                    <a href="#"><img src="${pageContext.request.contextPath}/img//PC4.jpg" id="PC"></a>
                    <p id="p"></p>
                </div>
                <div id="box_1_5">
                    <a href="#"><img src="${pageContext.request.contextPath}/img//white.png" id="white"></a>
                    <img src="${pageContext.request.contextPath}/img//blue.png" id="blue">
                    <!--<img src="#" id="PC">-->
                    <p id="p">${HOME_INFO_MAP["3"]}</p>
                </div>
                <div id="box_1_6">
                    <img src="${pageContext.request.contextPath}/img//white.png" id="white">
                    <img src="${pageContext.request.contextPath}/img//blue.png" id="blue">
                    <a href="#"><img src="${pageContext.request.contextPath}/img//PC6.jpg" id="PC"></a>
                    <p id="p"></p>
                </div>
            </div>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.sliphover.min.js"></script>
            <script type="text/javascript">
            $(document).ready(function(e) {
                $('#box_1').sliphover({
		            backgroundColor:'rgba(8,92,118,0.6)'
	            });
            });
            </script>
            <div id="box_2">
                <div id="box_2_1">
                    <%--<img src="${pageContext.request.contextPath}/img//znxx.png" id="znxx">--%>
                    <span class="add1">风景展示</span>
                </div>
                <div id="box_2_2">
                    <div id=demo style="overflow:hidden;width:750;" align=center>
	                <table border=0 align=center cellpadding=1 cellspacing=1 cellspace=0 >
		                <tr><td valign=top bgcolor=ffffff id=marquePic1>
	                    <table width='100%' border='0' cellspacing='0'>
	                    <tr>
	                        <td align=center><div id="blue_line"></div><a href='#'><img src="${pageContext.request.contextPath}/img//r//r1.jpg"; width=410px; height=240px; border=0></a></td>
	                        <td align=center><a href='#'><img src="${pageContext.request.contextPath}/img//r//r2.jpg"; width=204px; height=270px; border=0></a></td>
	                        <td align=center><a href='#'><img src="${pageContext.request.contextPath}/img//r//r3.jpg"; width=410px; height=240px; border=0><div id="blue_line"></div></a></td>
	                        <td align=center><div id="blue_line"></div><a href='#'><img src="${pageContext.request.contextPath}/img//r//r4.jpg"; width=410px; height=240px; border=0></a></td>
	                        <td align=center><a href='#'><img src="${pageContext.request.contextPath}/img//r//r5.jpg"; width=204px; height=270px; border=0></a></td>
	                        <td align=center><a href='#'><img src="${pageContext.request.contextPath}/img//r//r6.jpg";width=410px; height=240px; border=0><div id="blue_line"></div></a></td>
	                    </tr></table></td><td id=marquePic2 valign=top></td></tr>
	                </table></div>
                    <script type="text/javascript">
                    var speed=50 
                    marquePic2.innerHTML=marquePic1.innerHTML 
                    function Marquee(){ 
                        if(demo.scrollLeft>=marquePic1.scrollWidth){ 
                        demo.scrollLeft=0 
                        }
                        else{ 
                            demo.scrollLeft++ 
                        } 
                    } 
                    var MyMar=setInterval(Marquee,speed) 
                    demo.onmouseover=function() {clearInterval(MyMar)} 
                    demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)} 
                </script>
                </div>

            </div>
        <div id="box_2_3">
            <img src="${pageContext.request.contextPath}/img//logo.png" id="logo_1">
        </div>
            <%--<div id="box_3">--%>
                <%--<div id="box_3_1">--%>
                    <%--<img src="${pageContext.request.contextPath}/img//tg.png" id="tg">--%>
                <%--</div>--%>
                <%--<div id="box_3_2">--%>
                    <%--<a href="WEB-INF/content/jsp/video.html" target="_blank">--%>
                        <%--<img src="${pageContext.request.contextPath}/img//G1.gif" style="height: 270px;width:550px;margin-left:237px;">--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>--%>
                <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.sliphover.min.js"></script>--%>
                <%--<script type="text/javascript">--%>
                <%--$(document).ready(function(e) {--%>
                    <%--$('#box_3_2').sliphover({--%>
		                <%--backgroundColor:'rgba(60,60,60,0.5)'--%>
	                <%--});--%>
                <%--});--%>
                <%--</script>--%>
                <%--<div id="box_3_3">--%>
                    <%--<img src="${pageContext.request.contextPath}/img//logo.png" id="logo_1">--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<img src="${pageContext.request.contextPath}/img//mlxc.png" id="mlxc">--%>
            <a href="#container"><h3 id="h3">返回顶部</h3></a>
            <script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
    </div>
</body>
</html>