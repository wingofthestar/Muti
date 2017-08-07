<%--
  Created by IntelliJ IDEA.
  User: star
  Date: 2017/8/6
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="${pageContext.request.contextPath}/user/login" method="post">
        name: <input type="text" name="userName"><br>
        password: <input type="password" name="password"><br>
        <input type="submit" value="登录">
        <input type="reset" value="重置">
    </form>
    <a href="${pageContext.request.contextPath}/user/login">测试</a>
</body>
</html>
