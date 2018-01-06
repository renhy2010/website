<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wc.org/TR/html4/loose.dtd">

<html>
<head>
<title>文档系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="jquery-3.2.1.js"></script>
<script type="text/javascript" src="script.js"></script>
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
<h2>Form</h2>
<form name="input" action="index.jsp" target="_blank" style="margin-left:100px">
<fieldset style="width:450px">
<legend style="font-weight:bold;">Personal Information</legend>
<p>First Name:<input type="text" name="first_name" value="Richard" readonly /></p>
<p>Last Name:<input type="text" name="last_name" ></input></p>
<p>Adrress:<input type="text" name="address" autofocus></input></p>
<p>TelNumber:<input type="text" name="address"></input><p>
<p>Password:<input type="password" name="password"></input></p>
<p>City:
<select name="city">
<option value="1">North York</option>
<option value="2">Scrouboug</option>
</select>
</p>
<p>TextArea:<textarea name="textarea" rows="3" cols="10"></textarea></p>
<p>
<button type="button" onclick="">button</button>
<button type="button" onclick="alert('Please input Last Name and TelNumber')">alert</button>
<button type="reset" name="reset">reset</button>
<input type="submit" name="button" value="submit" style="margin-left:100px;font-weight:bold;font-size:16px;color:#000;background:#ccc;width:80px;height:30px;"></input>
</p>
</fieldset>
</form>

</div>
<div id="m2">
<h2>Animation</h2>
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


</div>

<div id="m3">

<h2>Audio</h2>
<p style="text-indent:100px">
<span>Until you:</span>
<audio style="margin-left:10px" controls="controls">
<source src="media/audio1.mp3" type="audio/mpeg"></source>
Your browser does not support HTML5 video.
</audio>
</p>

<h2>Video</h2>
<p style="text-indent:100px"><span>Bear1:</span></p>
<p>
<video   style="margin-left:100px" width="320"  height="240" controls="controls">
<source src="media/movie.ogg" type="video/ogg"></source>
Your browser does not support HTML5 video.
</video>

</p>

<p style="text-indent:100px"><span>Bear2:</span></p>
<p>
<video  style="margin-left:100px" width="320"  height="240" controls="controls">
<source src="media/mov_bbb.ogg" type="video/ogg"></source>
Your browser does not support HTML5 video.
</video>
</p>

</div>
<div id="m4">
</div>
<div id="m5">
<p>
<button type="button" onclick="alert('alert for m...')" >alert</button>
<button type="button" onclick="confirm_m()" >confirm</button>
<button type="button" onclick="prompt_m()">prompt</button>
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

<script type="text/javascript">
/* output m5 and m4*/

//show_m4();

function show_m5(){
	document.getElementById("m5").innerHTML="Test for m5...";
}

</script>


</body>
</html>