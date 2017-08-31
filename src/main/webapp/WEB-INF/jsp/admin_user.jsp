<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>系统管理</title>
	<meta charset="utf-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//administrator.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}//js//bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}//js//bootstrap.min.js"></script>
    <style>

    </style>
</head>
<body>
    <div id="container"> 
        <div id="header">
            <img src="${pageContext.request.contextPath}//img//administrator_header.png" style="z-index: 1;position: absolute;">
            <%--<a href="${pageContext.request.contextPath}/index">--%>
                <%--<img src="${pageContext.request.contextPath}//img//administrator_home.png" style="z-index: 2;position: absolute;">--%>
            <%--</a>--%>
            <a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}//img//administrator_home.png" style="z-index: 2;position: absolute;"></a>
            <img src="${pageContext.request.contextPath}//img//administrator_logo.png" style="z-index: 2;position: absolute;margin-left: 970px;margin-top: 3px;">
        </div>
        <div id="log_of"><a href="${pageContext.request.contextPath}/logout">注销</a></div>
        <h4 id="h4">Administrator'System</h4>
        <h5 id="h5">welcome to the manager'system</h4>
        <h4 id="user_data">user<br><br>data</h4>
        <a href="${pageContext.request.contextPath}/admin/message"><div id="triangle-right"></div></a>
        <div id="white_block">
            <div id="table_1">
            <table >
                <thead>
                    <tr>
                        <td style="width: 90px;">用户名</td>
                        <td style="width: 170px;">电邮</td>
                        <td style="width: 130px;">最近访问时间</td>
                        <td style="width: 130px;">最近范文IP</td>
                        <td style="width: 90px;">用户状态</td>
                        <td style="width: 90px;">操作</td>
                        <td style="width: 17px;"></td>
                    </tr>
                </thead>
                <tbody>
                    <%--<tr>--%>
                        <%--<td id="user_name">###</td>--%>
                        <%--<td id="email">7941645631@163.com</td>--%>
                        <%--<td id="last_visit">2017 8 9 15:00</td>--%>
                        <%--<td id="last_ip">192.255.255.1</td>--%>
                        <%--<td id="state">正常</td>--%>
                        <%--<td id="action">--%>
                            <%--<button class="btn btn-danger btn-sm" id="btn" value="" onclick="sendValue_1(this)">封禁</button>--%>
                            <%--<button class="btn btn-success btn-sm" id="btn" value="" onclick="sendValue_2(this)">解封</button>--%>
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
                                <form action="${pageContext.request.contextPath}/admin/manage" id="usercount_flag" method="post">
                                    <input type="hidden" name="userName" value="${user.userName}">
                                    <button class="btn btn-danger btn-sm" value="1" name="flag" onclick="sendValue_1(this)">封禁</button>
                                    <button class="btn btn-success btn-sm" value="0" name="flag" onclick="sendValue_2(this)">解封</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </div>
            <div id="blue_line"></div>
            <div id="search">
                <form action="${pageContext.request.contextPath}/admin/search" method="post">
                <input type="txt"class="form-control" id="input_search" name="userName">
                <input type="submit" value="搜索" class="btn btn-dafluat" id="btn_search">
                </form>
            </div>
            <table id="table_2">
                <thead>
                    <tr>
                        <td style="width: 93px;">用户名</td>
                        <td style="width: 171px;">电邮</td>
                        <td style="width: 130px;">最近访问时间</td>
                        <td style="width: 130px;">最近范文IP</td>
                        <td style="width: 90px;">用户状态</td>
                        <td style="width: 90px;">操作</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td id="user_name" name="user_name">${SEARCH_RESULT.userName}</td>
                        <td id="email" name="email">${SEARCH_RESULT.userEmail}</td>
                        <td id="last_visit" name="last_visit">${SEARCH_RESULT.lastVisit}</td>
                        <td id="last_ip" name="last_ip">${SEARCH_RESULT.lastIp}</td>
                        <td id="state" name="state"><c:if test="${SEARCH_RESULT.flag == true}">封号</c:if><c:if test="${SEARCH_RESULT.flag == false}">正常</c:if></td>
                        <td id="action">
                            <button class="btn btn-danger btn-sm" id="btn" value="" onclick="sendValue_1(this)">封禁</button>
                            <button class="btn btn-success btn-sm" id="btn" value="" onclick="sendValue_2(this)">解封</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="line"></div>
    </div>
    <script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>