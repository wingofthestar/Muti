<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}//css//bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}//css//jsperror.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
<link href="${pageContext.request.contextPath}/css/login2.css" rel="stylesheet" type="text/css" />
<meta charset="utf-8">
<title>登录/注册</title>
	<script>
		<c:if test="${REGIST_ERROR != null}">
			window.onload = function () {
                $('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
                $('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
                $('#switch_bottom').animate({left:'102px',width:'70px'});

                $('#qlogin').css('display','block');
                $('#web_qr_login').css('display','none');
            }
		</c:if>
	</script>
</head>
<body>
<div class="warp">
		<div class="up"style="background:url(${pageContext.request.contextPath}//img//background2.png);">
				<div class="black">
						<a href="mailto:caihonghai2011@sina.com">联系我们</a>
				</div>
				<img src="${pageContext.request.contextPath}//img//logo2.png" id="logo">
				<div class="login" style="margin-top:50px;background-color:rgba(225,225,225,0.5);height:auto;">
						<div class="header" >
								<div class="switch" id="switch">
										<a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">登录</a>
										<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">注册</a>
										<div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
								</div>
						</div>
						<div class="web_qr_login" id="web_qr_login" style="display: block; height:auto;">
								
								<!--登录-->
								<div class="web_login" id="web_login" style="height:auto;">
										<div class="login-box">
												<div class="login_form">
														<form action="${pageContext.request.contextPath}/login" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post">
																<%--<input type="hidden" name="did" value="0"/>--%>
																<%--<input type="hidden" name="to" value="log"/>--%>
																<c:if test="${LOGIN_ERROR != null}">
																	<div id="userCue" class="login-error">${LOGIN_ERROR}</div>
																</c:if>
																<div class="uinArea" id="uinArea">
																		<div class="inputOuter" id="uArea" style="height:30px;width:auto;margin:0 auto">
																				<div class="icon1"><img src="${pageContext.request.contextPath}/img/man.png"></div>
																				<input type="text" id="u" name="email" class="inputstyle" placeholder=" 用户名 或 邮 箱"style="height:30px;border:none;background-color:rgba(225,225,225,0.3);float:left"/>
																		</div>
																</div>
																<div class="pwdArea" id="pwdArea">
																		<div class="inputOuter" id="pArea" style="height:30px;width:auto;margin:0 auto">
																				<div class="icon2"><img src="${pageContext.request.contextPath}/img/key.png"></div>
																				<input type="password" id="p" name="password" class="inputstyle"placeholder=" 密 码" style="height:30px;border:none;background-color:rgba(225,225,225,0.3)"/>
																		</div>
																</div>
																<div class="mid">
																		<input type="checkbox" class="box" style="float:left ;margin-top:0">
																		</input>
																		&nbsp;&nbsp;&nbsp;&nbsp;
																		<p id="mid-left"> 记住密码</p>
																		<a  href="#">忘记密码？</a>
																</div>
																<div style="width:100px;height:auto;margin:0 auto;font-size:smaller;color:white">@美丽乡村</div>
																<div style="padding-left:50px;margin-top:20px;">
																		<input type="submit" value="登 录"  class="button_blue" />
																</div>
														</form>
												</div>
										</div>
								</div>
								<!--登录end-->
						</div>
						
						<!--注册-->
						<div class="qlogin" id="qlogin" style="display: none; ">
								<div class="web_login">
										<form name="form2" id="regUser" accept-charset="utf-8"  action="${pageContext.request.contextPath}/regist" method="post">
												<input type="hidden" name="to" value="reg"/>
												<input type="hidden" name="did" value="0"/>
												<ul class="reg_form" id="reg-ul">
														<div id="userCue" class="cue">
															<c:choose>
																<c:when test="${REGIST_ERROR != null}">
																	${REGIST_ERROR}
																</c:when>
																<c:otherwise>
																	注册请注意格式
																</c:otherwise>
															</c:choose>
														</div>
														<li>
																<label for="user"  class="input-tips2">用户名：</label>
																<div class="inputOuter2">
																		<input type="text" id="user" name="userName" maxlength="16" class="inputstyle2" style="height:30px;border:none;background-color:rgba(225,225,225,0.5);"/>
																</div>
														</li>
														<li>
																<label for="passwd" class="input-tips2">密码：</label>
																<div class="inputOuter2">
																		<input type="password" id="passwd"  name="password" maxlength="16" class="inputstyle2" style="height:30px;border:none;background-color:rgba(225,225,225,0.5);"/>
																</div>
														</li>
														<li>
																<label for="passwd2" class="input-tips2" style="width:auto">确认密码：</label>
																<div class="inputOuter2">
																		<input type="password" id="passwd2" name="" maxlength="20" class="inputstyle2" style="height:30px;border:none;background-color:rgba(225,225,225,0.5);" />
																</div>
														</li>
														<li>
																<label for="qq" class="input-tips2">邮箱：</label>
																<div class="inputOuter2">
																		<input type="text" id="qq" name="userEmail" maxlength="35" class="inputstyle2" style="height:30px;border:none;background-color:rgba(225,225,225,0.5);"/>
																</div>
														</li>
														<li>
																<div class="inputArea" style="padding-left:80px;margin-top:20px;">
																		<input type="button" id="reg"  style="width:150px;" class="button_blue" value="注册"/>
																</div>
														</li>
														<div class="cl"></div>
												</ul>
										</form>
								</div>
						</div>
						<!--注册end-->
				</div>
				<div id="text_under">美丽乡村|纵览美景</div>
		</div>
		<div class="down">
				<div id="mid" style="margin:0 auto;">
						<img src="${pageContext.request.contextPath}//img//circle_1.jpg" class="img-circle" id="image_radius_1" style="overfloat:hidden;">
						<img src="${pageContext.request.contextPath}//img//circle_2.jpg" class="img-circle" id="image_radius_2" style="overfloat:hidden;">
						<img src="${pageContext.request.contextPath}//img//circle_3.jpg" class="img-circle" id="image_radius_3" style="overfloat:hidden;">
						<img src="${pageContext.request.contextPath}//img//circle_4.jpg" class="img-circle" id="image_radius_4" style="overfloat:hidden;">
						<img src="${pageContext.request.contextPath}//img//circle_5.jpg" class="img-circle" id="image_radius_5" style="overfloat:hidden;">
				</div>
		</div>
		<div class="foot">
				<div style="height:50px;width:1024px;"></div>
				<div id="div_leaf">
						<a href="#" >版权声明 </a>
						|
						<a href="#"> 用户服务协议 </a>
						|
						<a href="#"> 隐私声明</a>
				</div>
				<div class="l-div">
						<div id="l-p"><img src="${pageContext.request.contextPath}/img/weixin.jpg">
								<p>微 信</p>
						</div>
						<div id="l-p" style="margin-right:30px"><img src="${pageContext.request.contextPath}/img/weibo.jpg">
								<p>微 博</p>
						</div>
				</div>
		</div>
</div>
<script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>