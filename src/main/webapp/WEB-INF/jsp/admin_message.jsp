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
</head>
<body>
    <div id="container"> 
        <div id="header">
            <img src="${pageContext.request.contextPath}//img//administrator_header.png" style="z-index: 1;position: absolute;">
            <a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}//img//administrator_home.png" style="z-index: 2;position: absolute;"></a>
            <img src="${pageContext.request.contextPath}//img//administrator_logo.png" style="z-index: 2;position: absolute;margin-left: 970px;margin-top: 3px;">
        </div>
        <div id="log_of"><a href="${pageContext.request.contextPath}/logout">注销</a></div>
        <h4 id="h4">Administrator'System</h4>
        <h5 id="h5">welcome to the manager'system</h4>
        <h4 id="text_data">text<br><br>data</h4>
        <a href="${pageContext.request.contextPath}/admin/manage"><div id="triangle-left"></div></a>
        <div id="white_block_1">
            <table class="table table-striped table-hover table-bordered">
                <tr id="txt_tr">
                    <td id="txt_name">txtarea_1</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/admin/updatemessage" method="post">
                            <input type="hidden" value="1" name="textId">
                            <textarea class="form-control" id="txtarea" rows="2" name="homeText"></textarea>
                        <input type="submit" class="btn btn-info" id="submit">
                        </form>
                    </td>
                </tr>
                <tr id="txt_tr">
                    <td id="txt_name">txtarea_2</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/admin/updatemessage" method="post">
                            <input type="hidden" value="2" name="textId">
                            <textarea class="form-control" id="txtarea" rows="2" name="homeText"></textarea>
                        <input type="submit" class="btn btn-info" id="submit">
                        </form>
                    </td>
                </tr>
                <tr id="txt_tr">
                    <td id="txt_name">txtarea_3</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/admin/updatemessage" method="post">
                            <input type="hidden" value="3" name="textId">
                            <textarea class="form-control" id="txtarea" rows="2" name="homeText"></textarea>
                        <input type="submit" class="btn btn-info" id="submit">
                        </form>
                    </td>
                </tr>
                </table>
        </div>
        <div id="line"></div>
    </div>
    <script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>