<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>文章</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//article.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//bootstrap.min.css">
</head>
<body>
    <div id="container">
        <div id="header">
            <img src="${pageContext.request.contextPath}//img//article_white.png" style="z-index: 1;position: absolute;">
            <img src="${pageContext.request.contextPath}//img//article_ahp.png"  style="z-index: 2;position: absolute;">
            <img src="${pageContext.request.contextPath}//img//article_logo.png"  style="z-index: 3;position: absolute;">
            <a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}//img//article_home.png"  style="z-index: 3;position: absolute;"></a>
        </div>
        <div id="txt">
            <img src="${pageContext.request.contextPath}//img//article_photo.jpg" class="img-circle" id="self_photo">
            <img src="${pageContext.request.contextPath}//img//article_txt.png" id="txt_pic">
            <img src="${ARTICLE.articlePicture}" id="article_pic">
            <img src="${pageContext.request.contextPath}//img//article_pic_tm.png" id="article_pic_tm">
            <div id="name" name="name">${WRITTER.userName}</div>
            <div id="title" name="title">${ARTICLE.articleTitle}</div>
            <div id="date" name="date">${ARTICLE.dateTime}</div>
        </div>
        <div id="white_block">
            <div id="txt_div">
                <p>${ARTICLE.articleContent}</p>
                <%--<p>人民日报社19日发布的《融合平台——中国媒体融合发展年度报告(2016-2017)》(以下简称《报告》)称，媒体融合发展的趋势特征愈发明显。搭乘“互联网”的快车，传媒业深入转型，在内容、技术等多方面深度融合，传统媒体与新兴媒体融合发展的广度拓宽、速度加快、力度增加。《报告》指出，传统媒体与新兴媒体融合的最重要途径，是进行传媒平台的搭建，通过构建媒体生态圈来获得更多用户青睐。无论管理部门还是业界和学界，都认识到了平台化在媒体融合进程中的重要意义。《报告》以平台融合为钥匙，描绘传统媒体在融合发展中的创新图景，探求体制机制、盈利模式、人才培养等方面问题及可能的解决方案，为未来融合发展的政策决策、实践探索和理论研究提供有价值的参考。</p>--%>
                <%--<p>中共中央政治局常委、全国政协主席俞正声22日在北京会见了出席国务院侨办专家咨询委员会大会的全体代表，并发表讲话。俞正声充分肯定了海内外的专家学者长期以来积极投身中国改革开放和现代化建设所发挥的重要作用。他指出，实现中华民族伟大复兴的中国梦离不开智力和人才的支撑，当前中国特色社会主义进入新的发展阶段，更加需要依靠人才、依靠创新引领经济社会发展。俞正声表示，国务院侨办整合组建“专家咨询委员会”很有意义，为海内外的专家学者参与中国经济社会发展、贡献智慧和力量提供了一个很好的平台。</p>--%>
            </div>
            <div id="white_line"></div>
            <div id="Interaction">评论&nbsp;&nbsp;(${ARTICLE.articleCommentNumber})&nbsp;&nbsp;&nbsp;点赞&nbsp;&nbsp;(${ARTICLE.articleFavorNumber})</div>
        </div>
    </div>
    <script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>