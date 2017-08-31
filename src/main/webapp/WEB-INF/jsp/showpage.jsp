<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>展示页</title>
	<meta charset="utf-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}//css//showpage.css">
</head>
<body>
    <div id="container">
        <div id="column">
            <div id="Navigation">
                <a href="${pageContext.request.contextPath}/user/userSpace">个人中心</a>&nbsp;
                <!--<a href="#">进入论坛</a>&nbsp;-->
                <a href="${pageContext.request.contextPath}/index">回到首页&nbsp;</a>
                <!--<img src="${pageContext.request.contextPath}//img//showpage_login.png" id="pc_1">-->
            </div>
        </div>
        <div id="box_1">
            <ul id="nav"> 
                <li><a href="#">科学种植指导</a></li> 
                <li><a href="#">农产项目融资</a></li> 
                <li><a href="#">乡村旅游资讯</a></li> 
            </ul> 
        </div>
        <div id="box_2">
            <div id="item_1"><a href="#"><img src="${pageContext.request.contextPath}//img//showpage_box_item1_1.jpg" id="img1" name="img" title="朝朝琼树后庭花，步步金莲潘丽华，龙蟠虎踞山如画。<br>
            伤心诗句多，危城落日寒鸦。<br>凤不至空台上，燕飞来百姓家，恨满天涯。"></a></div>
            <div id="item_2"><a href="#"><img src="${pageContext.request.contextPath}//img//showpage_box_item2_1.jpg" id="img2" name="img" title="苍苍金陵月，空悬帝王州。<br>天文列宿在，霸业大江流。<br>绿水绝驰道，青松摧古丘。<br>台倾鳷鹊观，宫没凤凰楼。<br>别殿悲清暑，芳园罢乐游。<br>一闻歌玉树，萧瑟后庭秋。<br>"></a></div>
            <div id="item_3"><a href="#"><img src="${pageContext.request.contextPath}//img//showpage_box_item3_1.jpg" id="img3" name="img" title="上吞巴汉控潇湘，怒似连山静镜光。<br>魏帝缝囊真戏剧，苻坚投棰更荒唐。<br>千秋钓舸歌明月，万里沙鸥弄夕阳。<br>范蠡清尘何寂寞，好风唯属往来商。<br>"></a></div>
            <div id="item_6"><a href="#"><img src="${pageContext.request.contextPath}//img//showpage_box_item4_1.jpg" id="img6" name="img" title="问从来谁是英雄？<br>一个农夫，一个渔翁。<br>晦迹南阳，栖身东海，一举成功。<br>八阵图名成卧龙，六韬书功在飞熊。<br>霸业成空，遗恨无穷。<br>蜀道寒云，渭水秋风。"></a></div>
            <div id="item_4"><a href="#"><img src="${pageContext.request.contextPath}//img//showpage_box_item5_1.jpeg" id="img4" name="img" title="先君怀圣德，灵庙肃神心。<br>草合人踪断，尘浓鸟迹深。<br>流沙丹灶灭，关路紫烟沉。<br>独伤千载后，空余松柏林。<br>"></a></div>
            <div id="item_5"><a href="#"><img src="${pageContext.request.contextPath}//img//showpage_box_item6_1.jpg" id="img5" name="img" title="襄阳太守沉碑意，身后身前几年事。<br>湘江千岁未为陵，水底鱼龙应识字。<br>"></a></div>
        </div>
        <script>
            var img = document.getElementsByName("img");
            var i=0;
            function change() 
            {   
            	for(j=0;j<img.length;j++){
                    img[j].src="${pageContext.request.contextPath}//img//showpage_box_item"+(j+1)+"_"+(i+1)+".jpg"
                }
                setTimeout('change()',Math.random()*5000);
                i++;
                if (i==2) i=0;
            } 
            change();
        </script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.sliphover.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function(e) {
            $('#box_2').sliphover({
		        backgroundColor:'rgba(60,60,60,0.5)'
	        });
        });
        </script>
        <img src="${pageContext.request.contextPath}//img//showpage_logo.png" id="logo">
        <div id="tell_more"><a href="${pageContext.request.contextPath}/dynamic">了解更多</a></div>
    </div>
    <script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>