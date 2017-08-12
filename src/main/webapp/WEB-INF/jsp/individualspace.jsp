<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../css/individual space.css" />
<link rel="stylesheet" type="text/css" href="../css/warp.css" />
<title>个人空间</title>
<script src="../js/jquery-1.11.1.min.js"></script>
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
						<a href="#"><img id="img1" src="../img/img3.jpg" /></a>
						<div id="img2">
								<img src="../img/img1.jpg" />
						</div>
						<div id="l-text1">
								<p>用户名</p>
								<p style="margin-top:40px">www.xxx.com</p>
						</div>
						<div id="l-text2">
								<a style="margin-left:0" href="#">文章</a>
								<a href="#">图片</a>
								<a href="#">收藏</a>
						</div>
				</div>
		</div>
		<div class="right-side">
				<form action="#" method="post">
						<div class="r-title">
								<button type="submit" id="r-button">发表</button>
								<img src="../img/logo2.png">
						</div>
						<div class="r-div1">
								<div class="artical">
										<input type="text" id="r-input" placeholder="标题"/>
										<img id="artical-img" src="../img/img1.jpg" />
										<textarea id="r-area" placeholder="文章"></textarea>
								</div>
								<div class="artical2">
										<input type="text" id="r-input" placeholder="标题"/>
										<img id="artical-img" src="../img/img1.jpg" />
										<textarea id="r-area" placeholder="文章"></textarea>
								</div>
						</div>
						<div class="picture">
								<div id="my-mask" class="mask-wrapper" style="margin-top:0">
										<img src="../img/picture1.jpg" style="margin-top:0"/>
										<div class="mask-inner">
												<p>图片信息</p>
										</div>
								</div>
								<div id="my-mask" class="mask-wrapper">
										<img src="../img/picture2.jpg" />
										<div class="mask-inner">
												<p>图片信息</p>
										</div>
								</div>
								<div id="my-mask" class="mask-wrapper">
										<img src="../img/picture3.jpg" />
										<div class="mask-inner">
												<p>图片信息</p>
										</div>
								</div>
								<input name="" type="button"  value="点击显示更多信息"  id="btn" onclick="btn()"  >
								<div id="box">
										<div id="my-mask" class="mask-wrapper" >
												<img src="../img/picture1.jpg"/>
												<div class="mask-inner">
														<p>图片信息</p>
												</div>
										</div>
										<div id="my-mask" class="mask-wrapper">
												<img src="../img/picture2.jpg" />
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
