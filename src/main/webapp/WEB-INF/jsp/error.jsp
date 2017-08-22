<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>error</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//error.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.css">
</head>
<body>
    <div id="container">
        <img src="${pageContext.request.contextPath}//img//error_txt.png" id="error_txt">
        <img src="${pageContext.request.contextPath}//img//error_page.png" id="error_page">
        <img src="${pageContext.request.contextPath}//img//error_404.png" id="error_404">
        <img src="${pageContext.request.contextPath}//img//error_left.png" id="error_left">
        <img src="${pageContext.request.contextPath}//img//error_right.png" id="error_right">
        <img src="${pageContext.request.contextPath}//img//error_under.png" id="error_under">
        <img src="${pageContext.request.contextPath}//img//error_plus.png" id="error_plus">
        <img src="${pageContext.request.contextPath}//img//error_message.png" id="error_message">
        <button class="btn btn-info btn-lg" id="btn" onclick="window.location.href='${pageContext.request.contextPath}/index'">返回页面</button>
        <div id="blue_block"></div>
    </div>
</body>
</html>