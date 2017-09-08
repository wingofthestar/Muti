<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/individual_space.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/warp.css" />
<title>个人空间</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("#btn").click(function(){
  $("#box").toggle();
  });
});
var btn1=document.getElementById('btn');

function btn(){
	 if(btn1.value=="点击显示更多信息"){
		btn1.value="点击隐藏";
 }
 else{btn1.value="点击显示更多信息";
}
};
</script>
</head>
<body>
    <div class="content">
		<div class="left-side">
			<div class="l-main">
				<a href="${pageContext.request.contextPath}/index"><img id="img1" src="${pageContext.request.contextPath}/img/img3.jpg" /></a>
				<div id="img2">
					<img src="${pageContext.request.contextPath}/img/img1.jpg" />
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
				<form action="#" method="post">
					<div class="r-title">
						<%--<button type="submit" id="r-button">发表</button>--%>
						<img src="${pageContext.request.contextPath}/img/logo2.png">
					</div>
					<div class="r-div1">
						<div class="artical">
							<input type="text" id="r-input" placeholder="标题"/>
							<img id="artical-img" src="${pageContext.request.contextPath}/img/img1.jpg" />
							<textarea id="r-area" placeholder="文章"></textarea>
						</div>
						<div class="artical2">
							<input type="text" id="r-input" placeholder="标题"/>
							<img id="artical-img" src="${pageContext.request.contextPath}/img/img1.jpg" />
							<textarea id="r-area" placeholder="文章"></textarea>
						</div>
					</div>
					<div class="picture">
						<div id="my-mask" class="mask-wrapper" style="margin-top:0">
							<img src="${pageContext.request.contextPath}/img/picture1.jpg" style="margin-top:0"/>
							<div class="mask-inner">
									<p>图片信息</p>
							</div>
						</div>
						<div id="my-mask" class="mask-wrapper">
							<img src="${pageContext.request.contextPath}/img/picture2.jpg" />
							<div class="mask-inner">
									<p>图片信息</p>
							</div>
						</div>
						<div id="my-mask" class="mask-wrapper">
							<img src="${pageContext.request.contextPath}/img/picture3.jpg" />
							<div class="mask-inner">
									<p>图片信息</p>
							</div>
						</div>
						<input name="" type="button"  value="点击显示更多信息"  id="btn" onclick="btn()"  >
						<div id="box">
							<div id="my-mask" class="mask-wrapper" >
								<img src="${pageContext.request.contextPath}/img/picture1.jpg"/>
								<div class="mask-inner">
									<p>图片信息</p>
								</div>
							</div>
							<div id="my-mask" class="mask-wrapper">
								<img src="${pageContext.request.contextPath}/img/picture2.jpg" />
								<div class="mask-inner">
									<p>图片信息</p>
								</div>
							</div>
						</div>
					</div>
				</form>
		</div>
    </div>
</body>
</html>
