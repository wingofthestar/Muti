<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>article</title>
	<link rel="stylesheet" type="text/css" href="..//css//dynamic.css">
	<link rel="stylesheet" type="text/css" href="..//css//tc.css">
	<link rel="stylesheet" type="text/css" href="..//css//bootstrap.css">
	<link rel="stylesheet" type="text/css" href="..//css//bootstrap.min.css">
	<script src="..//js//jquery-1.7.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="..//js//tc.min.js"></script>
    <script type="text/javascript" src="..//js//dynamic.js"></script>
</head>
<body>
    <div id="container">
        <div id="header">
            <img src="..//img//dynamic_header.png" style="z-index: 1;position: absolute;">
            <a href="#"><img src="..//img//dynamic_home.png" style="z-index: 3;position: absolute;"></a>
            <img src="..//img//dynamic_logo.png" style="z-index: 2;position: absolute;margin-left: 970px;margin-top: 3px;">
        </div>
        <!--左侧-->
        <div id="left" style="background-image: url(..//img//dynamic_white_left.png);">
            <img src="..//img//dynamic_selfphoto.png" class="img-circle" id="self_photo">
            <p id="username" name="username"><b>用户名</b></p><!--用户名-->
            <a href="#"><p id="dynamic" name="dynamic"><b>动态(7)</b></p></a><!--动态更新的数量-->
            <a href="#"><p id="collection" name="collection"><b>收藏(5)</b></p></a><!--收藏的数量-->
        </div>
        <!--button 打开小窗口-->
        <button class="btn btn-default" id="btn"><p><em></em>发表</p></button>
        <div id="right">
            <div id="table">
            <table>
                <thead></thead>
                <tbody>
                    <tr>
                        <td>
                            <div id="message">
                                <img src="..//img//dynamic_message_selfphoto.png" id="dynamic_message_selfphoto">
                                <img src="..//img//dynamic_messagediv.png" id="dynamic_messagediv">
                                <p id="message_name"><b>用户名</b></p>
                                <p id="title"><b>标题</b></p>
                                <div id="message_box">
                                    <p>7月11日是第十三个中国航海日，主题是“船·港·人——互联互通”。当日上午，中国航海日主论坛在浙江宁波举办。此外，中国国际海员论坛、海丝港口国际合作论坛等8个专题论坛也同期召开。活动组委会还将向全社会发布《2017年中国航海日公告》。</p>
                                </div>
                                <dl>
                                    <dt>
	                                    <a id="t1" class="comment" style="text-decoration: none;">查看评论</a>
	                                </dt>
                                </dl>
                                <p id="message_collection">收藏(2)</p>
                                <p id="message_comment">评论(5)</p>
                                <img id="star" onclick="colorchange(1)" src="..//img//dynamic_star.png" name="star"></a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="message">
                                <img src="..//img//dynamic_message_selfphoto.png" id="dynamic_message_selfphoto">
                                <img src="..//img//dynamic_messagediv.png" id="dynamic_messagediv">
                                <p id="message_name"><b>用户名</b></p>
                                <p id="title"><b>标题</b></p>
                                <div id="message_box">
                                    <p>
                                        <img src="..//img//dynamic_messagediv_pic.png" style="float: left;margin-right:10px;">
                                        日前，中共中央印发了《关于修改〈中国共产党巡视工作条例〉的决定》，并全文发布了修改后的《中国共产党巡视工作条例》。政治巡视是十八届中央巡视工作重大理论和实践创新成果。把政治巡视要求写入《条例》，是这次修改工作的重点和亮点。
                                    </p>
                                </div>
                                <dl>
                                    <dt>
	                                    <a id="t2" class="comment" style="text-decoration: none;">查看评论</a>
	                                </dt>
                                </dl>
                                <p id="message_collection">收藏(2)</p>
                                <p id="message_comment">评论(5)</p>
                                <img src="..//img//dynamic_star.png" onclick="colorchange(2)" id="star" name="star">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="message">
                                <img src="..//img//dynamic_message_selfphoto.png" id="dynamic_message_selfphoto">
                                <img src="..//img//dynamic_messagediv.png" id="dynamic_messagediv">
                                <p id="message_name"><b>用户名</b></p>
                                <p id="title"><b>标题</b></p>
                                <div id="message_box">
                                    <p>中共中央政治局6月28日召开会议，审议《关于巡视31所中管高校党委情况的专题报告》。中共中央总书记习近平主持会议。会议指出，我国高校肩负着培养社会主义事业建设者和接班人的重大任务，是巩固和发展马克思主义的重要阵地。巡视对31所中管高校进行了全面政治体检，加强了党对高校的领导，促进了高校管党治党、办学治校各项工作，发挥了标本兼治作用。会议强调，办好中国特色社会主义高等教育，必须旗帜鲜明坚持党对高校工作的领导。高校党委要增强“四个意识”，落实管党治党、办学治校主体责任，坚定“四个自信”，贯彻党的教育方针政策，坚持社会主义办学方向，把立德树人作为根本任务，以实际行动维护党中央权威和集中统一领导。</p>
                                </div>
                                <dl>
                                    <dt>
	                                    <a id="t3" class="comment" style="text-decoration: none;">查看评论</a>
	                                </dt>
                                </dl>
                                <p id="message_collection">收藏(2)</p>
                                <p id="message_comment">评论(5)</p>
                                <img src="..//img//dynamic_star.png" onclick="colorchange(3)" id="star" name="star">
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>
    <div id="detail">
        <div class="header">
            <p style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;margin:20px 0px 0px 20px;"><b>留言</b></p>
            <p style="font-size: 12px;color:#2F6966;float: left;text-indent:5px;letter-spacing: 7px;margin:-13px 0px 0px 420px;" class="close">关闭</p>
        </div>
        <form action="###" method="post">
            <input type="txt" class="form-control" name="Sendout" id="Sendout" style="background-image: url(..//img//dynamic_input.png);">
            <input type="submit" value="发送" class="btn btn-dafluat" id="btn_Sendout">
            <div id="detail_table">
                <table>
                    <thead></thead>
                    <tbody>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_1.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_2.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_3.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_4.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_1.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_2.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_3.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_4.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_1.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_2.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_3.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_4.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
    <div id="detail2">
        <div class="header">
            <p style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;margin:20px 0px 0px 20px;"><b>留言</b></p>
            <p style="font-size: 12px;color:#2F6966;float: left;text-indent:5px;letter-spacing: 7px;margin:-13px 0px 0px 420px;" class="close">关闭</p>
        </div>
        <form action="###" method="post">
            <input type="txt" class="form-control" name="Sendout" id="Sendout" style="background-image: url(..//img//dynamic_input.png);">
            <input type="submit" value="发送" class="btn btn-dafluat" id="btn_Sendout">
            <div id="detail_table">
                <table>
                    <thead></thead>
                    <tbody>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_1.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_2.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_3.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_4.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
        <div id="detail3">
        <div class="header">
            <p style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;margin:20px 0px 0px 20px;"><b>留言</b></p>
            <p style="font-size: 12px;color:#2F6966;float: left;text-indent:5px;letter-spacing: 7px;margin:-13px 0px 0px 420px;" class="close">关闭</p>
        </div>
        <form action="###" method="post">
            <input type="txt" class="form-control" name="Sendout" id="Sendout" style="background-image: url(..//img//dynamic_input.png);">
            <input type="submit" value="发送" class="btn btn-dafluat" id="btn_Sendout">
            <div id="detail_table">
                <table>
                    <thead></thead>
                    <tbody>
                        <tr>
                            <td>
                                <img src="..//img//dynamic_detail_pic_1.png" id="table_pic">
                                <a href="#">
                                    <b style="font-size: 12px;color:#7DB0BB;float: left;text-indent:5px;letter-spacing: 7px;">用户名</b>
                                </a>
                                    <div id="detail_txt">留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言</div>
                                <a href="#">
                                    <b style="font-size: 12px;color:#9D9D9D;float: left;letter-spacing:7px;margin-left: 10px;">回复</b>
                                </a>
                                <div id="gary_line"></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
    <script type="text/javascript">
	$("#t1").click(function(){
			popWin("detail");
	});
	$("#t2").click(function(){
			popWin("detail2");
	});
	$("#t3").click(function(){
			popWin("detail3");
	});
    </script>
</body>
</html>