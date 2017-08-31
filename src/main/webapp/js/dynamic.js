function　colorchange(obj){
	element = document.getElementsByName("star")
	if(!element[obj-1].src.match("yellow")){
	    element[obj-1].src=".//img//dynamic_yellowstar.png";
    }
    else{
    	element[obj-1].src=".//img//dynamic_star.png";
    }
}