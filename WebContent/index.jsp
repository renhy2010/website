<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wc.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript" src="jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" type="text/css" href="style.css">
<title>文档系统</title>

</head>
<body>
<div id="wrapper">


<div id="header">
<div id="header_first">
<a href="index.jsp" target="_blank"><img src="images/bg_header.jpg"/></a>
</div>
<div id="header_second">
<h1 style="color:#000000;text-align:center;padding-top:25px"><b><a href="index.jsp">文档系统</a></b></h1>
</div>

</div>


<div id="navfirst">
<ul id="menu">
<li id="family"><a href="pages/family/family_index.jsp" title="Family">Family</a></li>
<li id="richard"><a href="pages/richard/richard_index.jsp" title="Richard">Richard</a></li>
<li id="henry"><a href="pages/henry/henry_index.jsp" title="Henry">Henry</a></li>
<li id="shirley"><a href="pages/shirley/shirley_index.jsp" title="Shirley">Shirley</a></li>
</ul>
</div>



<div id="navsecond">
<div id="sidebar">
<h2>Family</h2>
<ul>
<li><a href="pages/family/family_photo.jsp" title="Family Photos">Family Photos</a></li>
<li><a href="pages/family/family_reading.jsp" title="Family Reading">Family Reading</a></li>
<li><a href="pages/family/family_radio.jsp" title="family radio">Family Radio</a></li>
<li><a href="pages/family/family_video.jsp" title="family video">Family Video</a></li>
</ul>
<h2>Richard</h2>
<ul>
<li><a href="pages/richard/richard_pftesting.jsp" title="Performance Testing">Performance Testing</a></li>
<li><a href="pages/richard/richard_sfdevelop.jsp" title="Software Develop">Software Develop</a></li>
<li><a href="pages/richard/richard_plist.jsp" title="Project List">Project List</a></li>
<li><a href="pages/richard/richard_photo.jsp" title="Richard Photos">Richard Photos</a></li>
</ul>
<h2>Henry</h2>
<ul>
<li><a href="pages/henry/henry_photo.jsp" title="Henry Photos">Henry Photos</a></li>
<li><a href="pages/henry/henry_reading.jsp" title="Henry Reading">Henry Reading</a></li>
<li><a href="pages/henry/henry_radio.jsp" title="Henry Radio">Henry Radio</a></li>
<li><a Href="pages/henry/henry_video.jsp" title="Henry video">Henry Video</a></li>
</ul>
<h2>Shirley</h2>
<ul>
<li><a href="pages/shirley/shirley_photo.jsp" title="Shirley Photos">Shirley Photos</a></li>
<li><a href="pages/shirley/shirley_document.jsp" title="Shirley Document">Shirley Documents</a></li>
</ul>
<h2>Others</h2>
<ul>
<li><a href="pages/others/others_photo.jsp" title="Others Photo">Others Photos</a></li>
<li><a href="pages/others/others_document.jsp" title="Others Documents">Others Documents</a></li>
</ul>
</div>
</div>

<div id="maincontent">
<div id="m1">
<h2>Family</h2>
<div class="imageRotation">
<div class="imageBox">
<a href="index.jsp" target="_blank"><img src="images/photos/family/1.jpg" /></a>
<a href="index.jsp" target="_blank"><img src="images/photos/family/2.jpg" /></a>
<a href="index.jsp" target="_blank"><img src="images/photos/family/3.jpg" /></a>
<a href="index.jsp" target="_blank"><img src="images/photos/family/4.jpg" /></a>
<a href="index.jsp" target="_blank"><img src="images/photos/family/5.jpg" /></a>
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
		intervalTime=4000,								//间隔时间
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
<div id="m2"></div>
<div id="m3"></div>
<div id="m4"></div>
<div id="m5">
<h1>TestPlan Document</h1>
<p>
<br/><br/>
项目应用
根据项目系统架构，性能测试覆盖的系统项目应用主要包括以下子系统（模块）：
地址搜索，业务接口，业务配置,接口平台；
流程平台，流程应用； 
Telant资源应用；
管线资源应用；
缓存服务，消息服务，文件服务，日志服务，单点登录；

其中，接入型自配，资源管理，接口平台，缓存服务为必测项；其他服务可以监测受必测服务所影响的情况；

项目数据库
每个应用都对应独立或者共用的数据库schema;数据库和资源项目生产环境共用服务器主机（P595），但为不同分区，应相互不影响。
</p>
<%
   String name=request.getParameter("name");
   String pwd=request.getParameter("password");   
   out.print("name:"+name+",password:"+pwd);

%>
<button onclick="myFunction()">查询</button>


</div>

</div>

<div id="footer">
        Richard &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
<script>
document.write(Date());
</script>
</div>



</div>
</body>
</html>