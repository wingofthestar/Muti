function　colorchange(obj){
	element = document.getElementsByName("star")
	if(!element[obj-1].src.match("yellow")){
	    element[obj-1].src=".//img//dynamic_yellowstar.png";
	    document.getElementById(obj).submit();
    }
    // else{
    // 	element[obj-1].src=".//img//dynamic_star.png";
    // }
}
function changeStyle(n) {
    var obj = document.getElementById("btnB");
    obj.style.margin= "black";
}
function ShowDiv(show_div,bg_div,n){  
	document.getElementById(show_div).style.marginTop = (-329-(n-1)*291)+'px';
    document.getElementById(show_div).style.display='block';
    document.getElementById(bg_div).style.display='block' ;  
}
function CloseDiv(show_div,bg_div){  
    document.getElementById(show_div).style.display='none';
    document.getElementById(bg_div).style.display='none';   
}
function change() {
    var pic = document.getElementById("preview"),
        file = document.getElementById("f");
    var ext=file.value.substring(file.value.lastIndexOf(".")+1).toLowerCase();
     // gif在IE浏览器暂时无法显示
     if(ext!='png'&&ext!='jpg'&&ext!='jpeg'){
         alert("图片的格式必须为png或者jpg或者jpeg格式！"); 
         return;
     }
     var isIE = navigator.userAgent.match(/MSIE/)!= null,
         isIE6 = navigator.userAgent.match(/MSIE 6.0/)!= null;
     if(isIE) {
        file.select();
        var reallocalpath = document.selection.createRange().text;
        // IE6浏览器设置img的src为本地路径可以直接显示图片
         if (isIE6) {
            pic.src = reallocalpath;
         }else {
            // 非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现
             pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
             // 设置img的src为base64编码的透明图片 取消显示浏览器默认图片
             pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';
         }
     }else {
        html5Reader(file);
     }
}
function html5Reader(file){
    var file = file.files[0];
    var reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = function(e){
        var pic = document.getElementById("preview");
        pic.src=this.result;
    }
}