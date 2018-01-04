<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wc.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript" src="../../jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" type="text/css" href="../../style.css">
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
<li><a href="richard_sfdevelop.jsp" title="Software Develop">Software Develop</a></li>
<li><a href="richard_plist.jsp" title="Project List">Project List</a></li>
<li><a href="richard_photo.jsp" title="Richard Photos">Richard Photos</a></li>
</ul>

</div>
</div>

<div id="maincontent">
<div id="m1"></div>
<div id="m2">

<h2>Audio</h2>
<p>
<span>Until you:</span>
<audio controls="controls">
<source src="../../media/audio1.mp3" type="audio/mpeg"></source>
Your browser does not support HTML5 video.
</audio>
</p>

<h2>Video</h2>
<p><span>Bear1:</span></p>
<p>
<video  width="320"  height="240" controls="controls">
<source src="../../media/movie.ogg" type="video/ogg"></source>
Your browser does not support HTML5 video.
</video>
</p>

<p><span>Bear2:</span></p>
<p>
<video  width="320"  height="240" controls="controls">
<source src="../../media/mov_bbb.ogg" type="video/ogg"></source>
Your browser does not support HTML5 video.
</video>
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
</body>
</html>