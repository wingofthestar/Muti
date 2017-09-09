<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/blank.css" />--%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//jsp_dynamic.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/individual_space.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/warp.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//tc.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//fb.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.css">
    <title>个人空间</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}//js//jquery-1.7.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}//js//tc.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}//js//dynamic.js"></script>
	<style type="text/css">
		.individual_blank{
			margin-left: 5px;
			margin-top: 50px;
		}
		.div_blank{
			width: 66px;
			height: 40px;
			background-color: #F2F2F2;
			margin-left: 335px;
			margin-top: -55px;
		}
		.div_blank a{
			text-decoration:underline;
			font-size: 32px;
			color: #77B5B4;"
		}
	</style>
</head>
<body>
    <div class="content">
		<div class="left-side">
			<div class="l-main">
				<a href="${pageContext.request.contextPath}/index"><img id="img1" src="${pageContext.request.contextPath}/img/img3.jpg" /></a>
				<div id="img2">
					<img src="${USER_INFO.userPhoto}" />
				</div>
				<div id="self_introduce">
                    <div class="name">${USER_CONTEXT.userName}</div>
                    <p class="jinajie">简介</p>
                    <p>${USER_INFO.userIntroduce}</p><br>
                    <div>
						文章 (${USER_INFO.userArticleNum})&nbsp;&nbsp;
						收藏 (${USER_INFO.userFavorNum})
                    </div><br>
                    <p>邮箱</p>
                    <p name="email">${USER_CONTEXT.userEmail}</p><br>
                    <p>
                        密码
                        <a href="${pageContext.request.contextPath}/user/introduceChange">【更改】</a></p>
                    <a href="${pageContext.request.contextPath}/user/introduceChange" >【编辑资料】</a>
				</div>
			</div>
		</div>
		<div class="right-side">
	        <div class="right-side-header">
	            <div id="fade" class="black_overlay"></div> 
	        	<a id="btn" onclick="ShowDiv('MyDiv','fade')">发表</a>  
                <div id="MyDiv" class="white_block">
                    <div id="triangle-bottomright"></div>
                    <div class="header"
                        <p style="font-size: 16px;font-weight:600;cursor:pointer;color:#7DB0BC;float: left;text-indent:5px;letter-spacing: 7px;margin:10px 0px 0px 420px;" class="close" onclick="CloseDiv('MyDiv','fade')">关闭</p>
                    </div>
                    <form action="${pageContext.request.contextPath}/publish/article" enctype="multipart/form-data" method="post">
                        <input type="txt" value="" class="form-control" name="title" id="biaoti" style="background-image: url(${pageContext.request.contextPath}//img//individual_biaoti.png);">
                        <textarea type="txt" value="" class="form-control" name="content" id="zhengwen" resize:none style="background-image: url(${pageContext.request.contextPath}//img//individual_zhengwen.png);">
                        </textarea>
                        <div style="width: 350px;height: 250px;margin-left: 50px;margin-top: 20px;">
                            <input id="f" type="file" name="pic" value="选择图片" onchange="change()"/>
                            <br>
                            <div class="upload"></div>
                                <p>
                                    <img id="preview" style="width: auto;height: 150px;" alt="" name="pic"/>
                                </p>
                        </div>
                        <input type="submit" value="发送" name="fasong" class="btn btn-info" style="background-color: #7DB0BC;margin-left: 378px;
                        margin-top:-90px;position:absolute;">
						<c:if test="${ERROR != null}">
							<div class="jsp_error">${ERROR}</div>
						</c:if>
                    </form>
                </div>
	        	<img src="${pageContext.request.contextPath}/img/logo2.png" style="margin-left: 600px;">
	        </div>
		<c:choose>
			<c:when test="${not empty USER_ARTICLE_LIST}">
				<div class="r-div1">
					<c:forEach var="userArticle" items="${USER_ARTICLE_LIST}">
						<a href="${pageContext.request.contextPath}/article/${userArticle.articleId}" style="text-decoration: none;color:#696969;">
							<div class="artical">
								<div class="title">${userArticle.articleTitle}</div>
								<img id="artical-img" src="${userArticle.articlePicture}" style="width: 300px;height: 150px;">
								<%--<div class="txt">文章内容简略</div>--%>
							</div>
						</a>
					</c:forEach>
				</div>
			</c:when>
			<c:otherwise>
				<div class="r-div1">
					<img src="${pageContext.request.contextPath}//img//individual_blank.jpg" class="individual_blank">
					<div class="div_blank">
						<a href="${pageContext.request.contextPath}/dynamic" class="blank_dynamic">动态</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
		</div>
    </div>
	<script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>
