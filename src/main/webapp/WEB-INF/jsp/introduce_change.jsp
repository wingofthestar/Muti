
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>修改信息</title>
	<meta charset="utf-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//introduce_change.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css/font-awesome.4.6.0.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}//css//amazeui.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}//css//amazeui.cropper.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}//css//custom_up_img.css">
    <style type="text/css">
	    .up-img-cover {width: 100px;height: 100px;}
	    .up-img-cover img{width: 100%;}
    </style>
</head>
<body>
    <div>
        <div class="container">
            <div class="header">
                <a href="${pageContext.request.contextPath}/user/userSpace" style="margin-left: 10px;text-decoration:none;">返回</a>
                <font style="margin-left: 420px;">编辑资料</font>
            </div>
            <div class="background">
                <img src="${pageContext.request.contextPath}//img//individual_header.png" style="position: absolute;">
                <img src="${pageContext.request.contextPath}//img//individual_mf.png" style="position: absolute; z-index: 2;">
                <img src="${pageContext.request.contextPath}//img//individual_back.png" style="position: absolute;margin-top:328px;z-index: 2;">
                <img src="${pageContext.request.contextPath}//img//individual_title.png" style="position: absolute;margin-top:328px;margin-left:300px;z-index:2;">
            </div>
            <div class="up-img-cover"  id="up-img-touch" style="position: absolute;">
	            <img src="${pageContext.request.contextPath}//img//individual_selfphoto.png" class="img-circle" style="border-radius:50%;width: 120px;height: 120px;position: absolute;z-index: 4;margin-left: 50px;margin-top: 50px;" class="am-circle" alt="点击图片上传" src="img/hu.jpg" data-am-popover="{content: '点击上传', trigger: 'hover focus'}" >
            </div>
            <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
                <div class="input">
                    <input type="txt" name="userName" style="font-size: 16px;color:#444444;width:264px;height: 30px;margin-left: 140px;margin-top: 52px;z-index:3;position: absolute;">
                    <textarea type="txt" name="userIntroduce" style="font-size: 16px;color:#444444;width:264px;resize: none;height:100px;margin-left: 140px;margin-top: 130px;z-index: 3;position: absolute;border:1px solid #59CBCC;">
                    </textarea>
                    <input type="txt" name="userEmail" style="font-size: 16px;color:#444444;width:264px;height: 30px;margin-left: 140px;margin-top:250px;z-index: 3;position: absolute;">
                    <input type="txt" name="password" style="font-size: 16px;color:#444444;width:264px;height: 30px;margin-left: 140px;margin-top: 320px;z-index: 3;position: absolute;">
                    <c:if test="${ERROR != null}">
                        <a href="#" style="font-size: 16px;color: #DD5044;text-decoration:none;margin-top:325px;margin-left: 426px;position: absolute;font-weight: 600;">${ERROR}</a>
                    </c:if>
                    <input type="submit" value="保存" style="width:80px;height: 30px; font-size: 16px;color: #66AEAD;text-decoration:none;margin-top:370px;margin-left: 326px;position: absolute;font-weight: 600;"></a>
                </div>
            </form>
        </div>
</center>
                <div><a style="text-align: center; display: block;"  id="pic"></a></div>
                <div class="am-modal am-modal-no-btn up-frame-bj " tabindex="-1" id="doc-modal-1">
                  <div class="am-modal-dialog up-frame-parent up-frame-radius">
                	<div class="am-modal-hd up-frame-header">
                	   <label>修改头像</label>
                	  <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                	</div>
                	<div class="am-modal-bd  up-frame-body">
                	  <div class="am-g am-fl">
                		<div class="am-form-group am-form-file">
                		  <div class="am-fl">
                			<button type="button" class="am-btn am-btn-default am-btn-sm">
                			  <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
                		  </div>
                		  <input type="file" id="inputImage">
                		</div>
                	  </div>
                	  <div class="am-g am-fl" >
                		<div class="up-pre-before up-frame-radius">
                			<img alt="" src="" id="image" >
                		</div>
                		<div class="up-pre-after up-frame-radius">
                		</div>
                	  </div>
                	  <div class="am-g am-fl">
                		<div class="up-control-btns">
                			<span class="am-icon-rotate-left"  onclick="rotateimgleft()"></span>
                			<span class="am-icon-rotate-right" onclick="rotateimgright()"></span>
                			<span class="am-icon-check" id="up-btn-ok" url="admin/user/upload.action"></span>
                		</div>
                	  </div>
                	  
                	</div>
                  </div>
                </div>
                
                <!--加载框-->
                <div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
                  <div class="am-modal-dialog">
                	<div class="am-modal-hd">正在上传...</div>
                	<div class="am-modal-bd">
                	  <span class="am-icon-spinner am-icon-spin"></span>
                	</div>
                  </div>
                </div>
                
                <!--警告框-->
                <div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
                  <div class="am-modal-dialog">
                	<div class="am-modal-hd">信息</div>
                	<div class="am-modal-bd"  id="alert_content">
                			  成功了
                	</div>
                	<div class="am-modal-footer">
                	  <span class="am-modal-btn">确定</span>
                	</div>
                  </div>
                </div>
        <script src="${pageContext.request.contextPath}//js//jquery-1.8.3.min.js"></script>
        <script src="${pageContext.request.contextPath}//js//amazeui.min.js" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}//js//cropper.min.js" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}//js//custom_up_img.js" charset="utf-8"></script>
    </div>
</body>
</html>