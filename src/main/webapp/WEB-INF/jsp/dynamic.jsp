<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>动态</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//dynamic.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//tc.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//fb.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.min.css">
	<script src="${pageContext.request.contextPath}//js//jquery-1.7.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}//js//tc.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}//js//dynamic.js"></script>
</head>
<body>
    <c:set var="jspi" value="0"></c:set>
    <div id="container">
        <div id="fade" class="black_overlay"></div> 
        <div id="header">
            <img src="${pageContext.request.contextPath}//img//dynamic_header.png" style="z-index: 1;position: absolute;">
            <a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}//img//dynamic_home.png" style="z-index: 3;position: absolute;"></a>
            <img src="${pageContext.request.contextPath}//img//dynamic_logo.png" style="z-index: 2;position: absolute;margin-left: 970px;margin-top: 3px;">
        </div>
        <!--左侧-->
        <div id="left" style="background-image: url(${pageContext.request.contextPath}//img//dynamic_white_left.png);">
            <img src="${pageContext.request.contextPath}//img//dynamic_selfphoto.png" class="img-circle" id="self_photo">
            <p id="username" name="username"><b>用户名</b></p><!--用户名-->
            <a href="#"><p id="dynamic" name="dynamic"><b>动态(7)</b></p></a><!--动态更新的数量-->
            <a href="#"><p id="collection" name="collection"><b>收藏(5)</b></p></a><!--收藏的数量-->
        </div>
        <!--button 打开小窗口-->
            <a class="btn btn-default" id="btn"  type="button" onclick="ShowDiv('MyDiv','fade')">发表</a>  
                <div id="MyDiv" class="white_block">
                    <div id="triangle-bottomright"></div>
                    <div class="header">
                        <p style="font-size: 16px;font-weight:600;cursor:pointer;color:#7DB0BC;float: left;text-indent:5px;letter-spacing: 7px;margin:10px 0px 0px 420px;" class="close" onclick="CloseDiv('MyDiv','fade')">关闭</p>
                    </div>
                    <form action="###" enctype="multipart/form-data" method="post">
                        <input type="txt" value="" class="form-control" name="biaoti" id="biaoti" style="background-image: url(${pageContext.request.contextPath}//img//dynamic_biaoti.png);">
                        <textarea type="txt" value="" class="form-control" name="zhengwen" id="zhengwen" resize:none style="background-image: url(${pageContext.request.contextPath}//img//dynamic_zhengwen.png);">
                        </textarea>
                        <div style="width: 350px;height: 250px;margin-left: 50px;margin-top: 20px;">
                            <input id="f" type="file" name="f" value="选择图片" onchange="change()"/>
                            <br>
                            <div class="upload"></div>
                                <p>
                                    <img id="preview" style="width: auto;height: 150px;" alt="" name="pic"/>
                                </p>
                        </div>
                        <input type="submit" value="发送" name="fasong" class="btn btn-info" style="background-color: #7DB0BC;margin-left: 378px;
                        margin-top:-90px;position:absolute;">
                    </form>
                </div>
        <div id="right">
            <div id="table">
            <table>
                <thead></thead>
                <tbody>
                    <c:forEach var="content" items="${CONTENT_LIST}">
                        <c:set var="jspi" value="${jspi+1}"></c:set>
                    <tr>
                        <td>
                            <div id="message">
                                <img src="${pageContext.request.contextPath}//img//dynamic_message_selfphoto.png" id="dynamic_message_selfphoto">
                                <img src="${pageContext.request.contextPath}//img//dynamic_messagediv.png" id="dynamic_messagediv">
                                <p id="message_name"><b>${content.userInfoWrapper.userName}</b></p>
                                <a href="${pageContext.request.contextPath}/article/${content.userArticle.articleId}"><p id="title"><b>${content.userArticle.articleTitle}</b></p></a>
                                <div id="message_box">
                                    <p>${content.userArticle.articleContent}</p>
                                </div>
                                <dl>
                                    <a class="comment"  type="button" onclick="ShowDiv('MyDiv_${jspi}','fade','${jspi}')">查看评论</a>
                                </dl>
                                <p id="message_collection">收藏（${content.userArticle.articleFavorNumber}）</p>
                                <p id="message_comment">评论（${content.userArticle.articleCommentNumber}）</p>
                                <img src="${pageContext.request.contextPath}//img//dynamic_star.png" onclick="colorchange(1)" id="star" name="star">
                            </div>
                            <div id="MyDiv_${jspi}" class="white_content">
                                <div class="header">
                                    <p style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;margin:20px 0px 0px 20px;"><b>留言</b></p>
                                    <p style="font-size: 12px;color:#2F6966;float: left;text-indent:5px;letter-spacing: 7px;margin:-13px 0px 0px 420px;" class="close" onclick="CloseDiv('MyDiv_${jspi}','fade')">关闭</p>
                                </div>
                                <form action="###" method="post">
                                    <input type="txt" class="form-control" name="Sendout" id="Sendout" style="background-image: url(${pageContext.request.contextPath}//img//dynamic_input.png);">
                                    <input type="submit" value="发送" class="btn btn-dafluat" id="btn_Sendout">
                                    <div id="detail_table">
                                        <table>
                                            <thead></thead>
                                            <tbody>
                                                <c:forEach var="artcleCommentWrapper" items="${content.articleCommentWrapperList}">
                                                    <tr>
                                                        <td>
                                                            <img src="${pageContext.request.contextPath}//img//dynamic_detail_pic_1.png" id="table_pic">
                                                            <a href="#">
                                                                <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">${artcleCommentWrapper.userInfoWrapper.userName}</b>
                                                            </a>
                                                                <div id="detail_txt">${artcleCommentWrapper.articleComment.articleCommentContent}</div>
                                                            <%--<a href="#">--%>
                                                                <%--<b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>--%>
                                                            <%--</a>--%>
                                                            <div id="gary_line"></div>
                                                        </td>
                                                    </tr>
                                                    <%--<tr>--%>
                                                        <%--<td>--%>
                                                            <%--<img src="${pageContext.request.contextPath}//img//dynamic_detail_pic_2.png" id="table_pic">--%>
                                                            <%--<a href="#">--%>
                                                                <%--<b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>--%>
                                                            <%--</a>--%>
                                                            <%--<div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>--%>
                                                            <%--<a href="#">--%>
                                                                <%--<b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>--%>
                                                            <%--</a>--%>
                                                            <%--<div id="gary_line"></div>--%>
                                                        <%--</td>--%>
                                                    <%--</tr>--%>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--<div id="message">--%>
                                <%--<img src="${pageContext.request.contextPath}//img//dynamic_message_selfphoto.png" id="dynamic_message_selfphoto">--%>
                                <%--<img src="${pageContext.request.contextPath}//img//dynamic_messagediv.png" id="dynamic_messagediv">--%>
                                <%--<p id="message_name"><b>用户名</b></p>--%>
                                <%--<p id="title"><b>标题</b></p>--%>
                                <%--<div id="message_box">--%>
                                    <%--<p>--%>
                                        <%--<img src="${pageContext.request.contextPath}//img//dynamic_messagediv_pic.png" style="float: left;margin-right:10px;">--%>
                                        <%--日前，中共中央印发了《关于修改〈中国共产党巡视工作条例〉的决定》，并全文发布了修改后的《中国共产党巡视工作条例》。政治巡视是十八届中央巡视工作重大理论和实践创新成果。把政治巡视要求写入《条例》，是这次修改工作的重点和亮点。--%>
                                    <%--</p>--%>
                                <%--</div>--%>
                                <%--<dl>--%>
                                    <%--<a class="comment"  type="button" onclick="ShowDiv('MyDiv_2','fade','2')">查看评论</a>  --%>
                                <%--</dl>--%>
                                <%--<p id="message_collection">收藏(2)</p>--%>
                                <%--<p id="message_comment">评论(5)</p>--%>
                                <%--<img src="${pageContext.request.contextPath}//img//dynamic_star.png" onclick="colorchange(2)" id="star" name="star">--%>
                            <%--</div>--%>
                            <%--<div id="MyDiv_2" class="white_content">--%>
                                <%--<div class="header">--%>
                                    <%--<p style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;margin:20px 0px 0px 20px;"><b>留言</b></p>--%>
                                    <%--<p style="font-size: 12px;color:#2F6966;float: left;text-indent:5px;letter-spacing: 7px;margin:-13px 0px 0px 420px;" class="close" onclick="CloseDiv('MyDiv_2','fade')">关闭</p>--%>
                                <%--</div>--%>
                                <%--<form action="###" method="post">--%>
                                    <%--<input type="txt" class="form-control" name="Sendout" id="Sendout" style="background-image: url(${pageContext.request.contextPath}//img//dynamic_input.png);">--%>
                                    <%--<input type="submit" value="发送" class="btn btn-dafluat" id="btn_Sendout">--%>
                                    <%--<div id="detail_table">--%>
                                        <%--<table>--%>
                                            <%--<thead></thead>--%>
                                            <%--<tbody>--%>
                                                <%--<tr>--%>
                                                    <%--<td>--%>
                                                        <%--<img src="${pageContext.request.contextPath}//img//dynamic_detail_pic_1.png" id="table_pic">--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>--%>
                                                        <%--</a>--%>
                                                            <%--<div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>--%>
                                                        <%--</a>--%>
                                                        <%--<div id="gary_line"></div>--%>
                                                    <%--</td>--%>
                                                <%--</tr>--%>
                                                <%--<tr>--%>
                                                    <%--<td>--%>
                                                        <%--<img src="${pageContext.request.contextPath}//img//dynamic_detail_pic_2.png" id="table_pic">--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>--%>
                                                        <%--</a>--%>
                                                            <%--<div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>--%>
                                                        <%--</a>--%>
                                                        <%--<div id="gary_line"></div>--%>
                                                    <%--</td>--%>
                                                <%--</tr>--%>
                                                <%--<tr>--%>
                                                    <%--<td>--%>
                                                        <%--<img src="${pageContext.request.contextPath}//img//dynamic_detail_pic_3.png" id="table_pic">--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>--%>
                                                        <%--</a>--%>
                                                            <%--<div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>--%>
                                                        <%--</a>--%>
                                                        <%--<div id="gary_line"></div>--%>
                                                    <%--</td>--%>
                                                <%--</tr>--%>
                                                <%--<tr>--%>
                                                    <%--<td>--%>
                                                        <%--<img src="${pageContext.request.contextPath}//img//dynamic_detail_pic_4.png" id="table_pic">--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>--%>
                                                        <%--</a>--%>
                                                            <%--<div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>--%>
                                                        <%--<a href="#">--%>
                                                            <%--<b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>--%>
                                                        <%--</a>--%>
                                                        <%--<div id="gary_line"></div>--%>
                                                    <%--</td>--%>
                                                <%--</tr>--%>
                                            <%--</tbody>--%>
                                        <%--</table>--%>
                                    <%--</div>--%>
                                <%--</form>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--<div id="message">--%>
                                <%--<img src="${pageContext.request.contextPath}//img//dynamic_message_selfphoto.png" id="dynamic_message_selfphoto">--%>
                                <%--<img src="${pageContext.request.contextPath}//img//dynamic_messagediv.png" id="dynamic_messagediv">--%>
                                <%--<p id="message_name"><b>用户名</b></p>--%>
                                <%--<p id="title"><b>标题</b></p>--%>
                                <%--<div id="message_box">--%>
                                    <%--<p>中共中央政治局6月28日召开会议，审议《关于巡视31所中管高校党委情况的专题报告》。中共中央总书记习近平主持会议。会议指出，我国高校肩负着培养社会主义事业建设者和接班人的重大任务，是巩固和发展马克思主义的重要阵地。巡视对31所中管高校进行了全面政治体检，加强了党对高校的领导，促进了高校管党治党、办学治校各项工作，发挥了标本兼治作用。会议强调，办好中国特色社会主义高等教育，必须旗帜鲜明坚持党对高校工作的领导。高校党委要增强“四个意识”，落实管党治党、办学治校主体责任，坚定“四个自信”，贯彻党的教育方针政策，坚持社会主义办学方向，把立德树人作为根本任务，以实际行动维护党中央权威和集中统一领导。</p>--%>
                                <%--</div>--%>
                                <%--<dl>--%>
                                    <%--<a class="comment"  type="button" onclick="ShowDiv('MyDiv_3','fade','3')">查看评论</a>  --%>
                                <%--</dl>--%>
                                <%--<p id="message_collection">收藏(2)</p>--%>
                                <%--<p id="message_comment">评论(5)</p>--%>
                                <%--<img src="${pageContext.request.contextPath}//img//dynamic_star.png" onclick="colorchange(3)" id="star" name="star">--%>
                            <%--</div>--%>
                            <%--<div id="MyDiv_3" class="white_content">--%>
                                <%--<div class="header">--%>
                                    <%--<p style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;margin:20px 0px 0px 20px;"><b>留言</b></p>--%>
                                    <%--<p style="font-size: 12px;color:#2F6966;float: left;text-indent:5px;letter-spacing: 7px;margin:-13px 0px 0px 420px;" class="close" onclick="CloseDiv('MyDiv_3','fade')">关闭</p>--%>
                                <%--</div>--%>
                                <%--<form action="###" method="post">--%>
                                    <%--<input type="txt" class="form-control" name="Sendout" id="Sendout" style="background-image: url(${pageContext.request.contextPath}//img//dynamic_input.png);">--%>
                                    <%--<input type="submit" value="发送" class="btn btn-dafluat" id="btn_Sendout">--%>
                                    <%--<div id="detail_table">--%>
                                        <%--<table>--%>
                                            <%--<thead></thead>--%>
                                            <%--<tbody>--%>
                                            <%--<tr>--%>
                                                <%--<td>--%>
                                                    <%--<img src="${pageContext.request.contextPath}//img//dynamic_detail_pic_1.png" id="table_pic">--%>
                                                    <%--<a href="#">--%>
                                                       <%--<b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>--%>
                                                    <%--</a>--%>
                                                    <%--<div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>--%>
                                                    <%--<a href="#">--%>
                                                       <%--<b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>--%>
                                                    <%--</a>--%>
                                                    <%--<div id="gary_line"></div>--%>
                                                <%--</td>--%>
                                            <%--</tr>--%>
                                            <%--</tbody>--%>
                                        <%--</table>--%>
                                    <%--</div>--%>
                                <%--</form>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                </tbody>
            </table>
            </div>
        </div>
    </div>
</body>
</html>