<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wc.org/TR/html4/loose.dtd">

<html>
<head>
<title>文档系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" type="text/css" href="../../style.css">
<script type="text/javascript" src="../../jquery-3.2.1.js"></script>
<script type="text/javascript" src="../../script.js"></script>
</head>
<body>
<div id="wrapper">


<div id="header">
<div id="header_first">
<a href="../../index.jsp" target="_blank"><img src="../../images/bg_header.jpg"></a>
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
<div id="m1">
<script>
onerror=myhandleErr;
function myhandleErr(msg,url,l,m,n,p){
	var txt="";
	txt=msg+"\n"+url+"\n"+l+"\n"+m+"\n"+n+"\n"+p;
	alert(txt);
    return true;
	
}

function myalert()
{
/*	var val;

	try{
		val=5;
		if(val<=10) throw  "x is too large...";

	}
	catch(err){
		
		alert("Error happened...");
		
	}
*/	
	alert("Error happened...");
	}




</script>

<p id="demo">test:
<img src="../../images/photos/richard/1.jpg" style="width:300px;height:300px;"></img>
<button type="button" onclick="for_out()">For output</button>
<button id="b_test" type="button">b_test</button>
<button type="button" onclick="myalert()">onerror</button>
</p>
显示时间:<input type="text" id="txt"></input>
<p>
Cookie:
<script>
setCookie("username","Richard",1);

document.write(document.cookie);

document.write(getCookie("username"));

// setTimeout(function(){checkCookie()},3000);

timedTxt();

</script>
</p>

<script>

function oo(){
var o="",j;
for(j=1;j<=6;j++)
	{
	o="<h"+j+">Henry<h"+j+">";
	document.write(o);
	}
}
oo();

for_in();

</script>
</div>


<div id="m2">

<h2>Audio</h2>
<p style="text-indent:30px">
<span>Until you:</span>
<audio style="margin-left:30px" controls="controls">
<source src="../../media/audio1.mp3" type="audio/mpeg"></source>
Your browser does not support HTML5 video.
</audio>
</p>

<h2>Video</h2>
<p style="text-indent:30px"><span>Bear1:</span></p>
<p>
<video   style="margin-left:30px" width="320"  height="240" controls="controls">
<source src="../../media/movie.ogg" type="video/ogg"></source>
Your browser does not support HTML5 video.
</video>
</p>

<p style="text-indent:30px"><span>Bear2:</span></p>
<p>
<video  style="padding-left:30px" width="320"  height="240" controls="controls">
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

<script>
function myerr()
{
 
    
    function handleErr(msg,url,l){
    	var txt="";
    	txt=msg+url+l;
    	alert(txt);
        return true;
    	
    }
    
   handleErr("error:",document.location.href,96);
    
}
</script>

<script type="text/javascript">
try{
	b_test();
	}
	catch(err){
		var msg="one err happend";
		if(confirm(msg)){
			document.location.href="http://localhost:8080/rweb/index.jsp";
		}
	}

</script>

</body>
</html>