<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>administrator</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//administrator.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}//js//bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}//js//bootstrap.min.js"></script>
</head>
<body>
    <div id="container"> 
        <div id="header">
            <h1>Administrator'System</h1>
            <h3>welcome to the manager'system</h3>  
            <div id="color_block"></div>                    
        </div>
        <div id="border_left"></div>
        <div id="border_right"></div>
            <div id="user">
                <table class="table table-striped table-hover table-bordered">
                <thead>
                    <tr>
                        <td id="td_name">用户名</td>
                        <td id="td_email">电子邮箱</td>
                        <td id="td_visit">最近访问时间</td>
                        <td id="td_ip">最近访问ip</td>
                        <td id="td_flag">用户状态</td>
                        <td id="td_button">操作</td>
                    </tr>
                </thead>
                    <tr>
                        <%--<td id="td_name">###</td>--%>
                        <%--<td id="td_email">###@###</td>--%>
                        <%--<td id="td_visit">###</td>--%>
                        <%--<td id="td_ip">####.####.###</td>--%>
                        <%--<td id="td_flag">#</td>--%>
                        <%--<td id="td_button">--%>
                            <%--<button class="btn btn-danger btn-sm" value="" onclick="sendValue_1(this)">封禁</button>--%>
                            <%--<button class="btn btn-success btn-sm" value="" onclick="sendValue_2(this)">解封</button>--%>
                        <%--</td>--%>
                    <%--</tr>--%>

                    <c:forEach var="user" items="${USER_LIST}">
                        <tr>
                            <td id="td_name">${user.userName}</td>
                            <td id="td_email">${user.userEmail}</td>
                            <td id="td_visit">${user.lastVisit}</td>
                            <td id="td_ip">${user.lastIp}</td>
                            <td id="td_flag"><c:if test="${user.flag}">封号</c:if><c:if test="${!user.flag}">正常</c:if></td>
                            <td id="td_button">
                                <button class="btn btn-danger btn-sm" value="" onclick="sendValue_1(this)">封禁</button>
                                <button class="btn btn-success btn-sm" value="" onclick="sendValue_2(this)">解封</button>
                            </td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
            <div id="blue_block_1">user data</div>
            <div id="blue_line_1"></div>
            <div id="search">
                <form action="###" method="post">
                <input type="txt"class="form-control" id="input_search" name="search">
                <input type="submit" value="搜索" class="btn btn-default" id="btn_search">
                </form>
            </div>
            <div id="user_detail">
                <table class="table table-striped table-hover table-bordered">
                    <tr>
                        <td id="td_name">${user.userName}</td>
                        <td id="td_email"${user.userEmail}</td>
                        <td id="td_visit">${user.lastVisit}</td>
                        <td id="td_ip">${user.lastIp}</td>
                        <td id="td_flag"><c:if test="${user.flag}">正常</c:if><c:if test="${!user.flag}">封号</c:if></td>
                        <td id="td_button">
                            <button class="btn btn-danger btn-sm" value="" onclick="sendValue_1(this)">封禁</button>
                            <button class="btn btn-success btn-sm" value="" onclick="sendValue_2(this)">解封</button>
                        </td>
                    </tr>
                </table>
            </div>
            <script>
                function sendValue_1(obj){
                    obj.value = 1;
                    alert("已封禁");
                }
                function sendValue_2(obj){
                    obj.value = 0;
                    alert("已解封");
                }
            </script>
            <div id="blue_line_2"></div>
            <div id="blue_block_2">text data</div>
            <div id="txt">
                <table class="table table-striped table-hover table-bordered">
                <tr id="txt_tr">
                    <td id="txt_name">txtarea_1</td>
                    <td>
                        <form action="###" method="post">
                        <textarea class="form-control" id="txtarea" rows="2" name="txtarea_1"></textarea>
                        <input type="submit" class="btn btn-info" id="submit">
                        </form>
                    </td>
                </tr>
                <tr id="txt_tr">
                    <td id="txt_name">txtarea_2</td>
                    <td>
                        <form action="###" method="post">
                        <textarea class="form-control" id="txtarea" rows="2" name="txtarea_2"></textarea>
                        <input type="submit" class="btn btn-info" id="submit">
                        </form>
                    </td>
                </tr>
                <tr id="txt_tr">
                    <td id="txt_name">txtarea_3</td>
                    <td>
                        <form action="###" method="post">
                        <textarea class="form-control" id="txtarea" rows="2" name="txtarea_3"></textarea>
                        <input type="submit" class="btn btn-info" id="submit">
                        </form>
                    </td>
                </tr>
                </table>
            </div>
        <div id="bottomer">
            <h3>@美丽乡村</h3>
            <div id="color_block"></div>
        </div>
    </div>
</body>
</html>