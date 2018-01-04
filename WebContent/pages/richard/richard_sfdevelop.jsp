<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wc.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" type="text/css" href="../../style.css">
<script type="text/javascript" src="../../jquery-3.2.1.js"></script>
<title>文档系统</title>

</head>
<body>
<div id="wrapper">


<div id="header">
<div id="header_first">
<a href="../../index.jsp" target="_blank"><img src="../../images/bg_header.jpg"/></a>
</div>
<div id="header_second">
<h1 style="color:#000000;text-align:center;padding-top:25px"><b><a href="../../index.jsp">文档系统</a></b></h1>

</div>

</div>


<div id="navfirst">
<ul id="menu">
<li id="family"><a href="../family/family_index.jsp" title="Family">Family</a></li>
<li id="richard"><a href="richard_index.jsp" title="Richard">Richard</a></li>
<li id="henry"><a href="../henry/henry_index.jsp" title="Henry">Henry</a></li>
<li id="shirley"><a href="../shirley/shirley_index.jsp" title="Shirley">Shirley</a></li>
</ul>
</div>



<div id="navsecond">
<div id="sidebar">

<h2>Richard</h2>
<ul>
<li><a href="richard_pftesting.jsp" title="Performance Testing">Performance Testing</a></li>
<!--  
<li><a href="richard_sfdevelop.jsp" title="Software Develop">Software Develop</a>
-->
<li class="sfdevelop"><a>Software Develop</a>
<ul class="sfdevelop1" >
<li><a href="richard_sfdevelop.jsp">Jquery</a></li>
<li><a href="richard_sfdevelop.jsp">Angular</a></li>
<li><a href="richard_sfdevelop.jsp">React</a></li>
<li><a href="richard_sfdevelop.jsp">Java Server Page</a></li>
</ul>
</li>
<li><a href="richard_plist.jsp" title="Project List">Project List</a></li>
<li><a href="richard_photo.jsp" title="Richard Photos">Richard Photos</a></li>
</ul>

</div>
</div>

<div id="maincontent">
<div id="m1">
<h2>Jquery Animate</h2>
<div class="imageRotation">
<div class="imageBox">
<a href="richard_sfdevelop.jsp" ><img src="../../images/photos/richard/1.jpg" /></a>
<a href="richard_sfdevelop.jsp" ><img src="../../images/photos/richard/2.jpg" /></a>
<a href="richard_sfdevelop.jsp" ><img src="../../images/photos/richard/3.jpg" /></a>
<a href="richard_sfdevelop.jsp" ><img src="../../images/photos/richard/4.jpg" /></a>
<a href="richard_sfdevelop.jsp" ><img src="../../images/photos/richard/5.jpg" /></a>
</div>
<div class="icoBox">
<span class="active" rel="1">1</span>
<span rel="2">2</span>
<span rel="3">3</span>
<span rel="4">4</span>
<span rel="5">5</span>
</div>
</div>

<script type="text/javascript">
//$(document).ready(function(){
//	$("div.imageBox").animate({left:'-570px'},1000);
//});

$(document).ready(function(){	

	$(".imageRotation").each(function(){
	//获取参数
	var imageRotation=this,
	    imageBox=$(imageRotation).children(".imageBox")[0],    //获取图片容器
	    icoBox=$(imageRotation).children(".icoBox")[0],    //获取图标容器
	    icoArr=$(icoBox).children(),       //获取图标
		imageWidth=$(imageRotation).width(),                 //图片宽度
//		imageNum=$(imageBox).children().size(), 			//图片数量
        imageNum=5,
		activeID=parseInt($($(icoBox).children(".active")[0]).attr("rel")),   //当前图片ID
		nextID=0,										//下一个图片ID
		intervalTime=3000,								//间隔时间
		setIntervalID,
		speed=500,										//速度
		imageReelWidth=imageWidth*imageNum;				//图片卷的宽度
		
	//设置图片容器的宽度
		
	$(imageBox).css({'width':imageReelWidth+"px"});

		
	//图片轮转函数	
	
	var rotate=function(clickID){
		if(clickID){nextID=clickID}
		else{nextID=activeID<=4?activeID+1:1}
		
		$(icoArr[activeID-1]).removeClass("active");
		$(icoArr[nextID-1]).addClass("active");		
		$(imageBox).animate({left:"-"+(nextID-1)*imageWidth+"px"},speed);
		
		activeID=nextID;
	}

	 setIntervalID=setInterval(rotate,intervalTime);
	
	 

	$(icoArr).click(function(){
		clearInterval(setIntervalID);
		var clickID=parseInt($(this).attr("rel"));
		rotate(clickID);
		
		setIntervalID=setInterval(rotate,intervalTime);
	});
	
	
	$(imageBox).hover(
			function(){clearInterval(setIntervalID);},
			function(){setIntervalID=setInterval(rotate,intervalTime);}
			);
 
	
	});
	
});


</script>
</div>
<div id="m2">
<h2>Video</h2>
<p>
<video  width="320"  height="320" controls="controls">
<source src="../../media/video1.MP4" type="video/MP4"></source>
Your browser does not support HTML5 video.
</video>
</p>
<h2>Audio</h2>
<p>
<span>Until you:</span>
<audio controls="controls">
<source src="../../media/audio1.mp3" type="audio/mpeg"></source>
Your browser does not support HTML5 video.
</audio>
</p>
</div>
<div id="m3"></div>
<div id="m4"></div>
<div id="m5">
<h1>TestPlan Document</h1>
<p>
<br/><br/>
</p>
</div>
</div>

<div id="footer">
        Richard &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
<script>
document.write(Date());
</script>
</div>



</div>

<script>
$(document).ready(function(){
    
	$(".sfdevelop").click(function(){
		$(".sfdevelop1").slideToggle("slow");
	});

});
</script>


</body>
</html>