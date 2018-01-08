	
function b_test(){
	document.getElementById("b_test").onclick=function(){
		document.getElementById("demo").innerHTML="hello...";
	};
	
}


function show_m4(){
	document.getElementById("m4").innerHTML="Testing from script.cs!";
}

function alert_m5(){
	alert("alert for m5\nalert for test...");
}


function confirm_m(){
	var x=confirm("conform for m...");
	if(x==true)
		{document.getElementById("m4").innerHTML="you click confirm...";
		}
	else document.getElementById("m4").innerHTML="you click cancel...";
	}


function prompt_m(){
	var x=prompt("Please input you name","");
	if(x!=null&&x!=""){
		document.getElementById("m4").innerHTML="Hello<br>"+x+"\nHow are you..";
	}
}


function for_out(){
	var out="",i;
	for(i=1;i<=6;i++){
		
		out=out+"<h"+i+">Richard"+"<h"+i+">";
		document.getElementById("demo").innerHTML=out;
		i++;
		if(i==3)continue;
		}

}


function for_in(){
	var k;
	var person=new Array();
	person[0]="Richard";
	person[1]="Henry";
	person[2]="Shirley";
	
	for(k in person)
		{
		document.write(person[k]+"<br>");
		}
	
}

	

function setCookie(cname,cvalue,expdays){
	var c=cname+"="+cvalue;
	var d=new Date();
	d.setTime(d.getTime()+(expdays*24*60*60*1000));
	var e="expires="+d.toGMTString();
	document.cookie=c+";"+e;	
	
}

function getCookie(cname){
	var c,name;
	name=cname+"=";
	c=document.cookie;
	var ca=c.split(";");
	
	for(var i=0;i<ca.length;i++)
		{   ct=ca[i].trim();
			if(ct.indexOf(name)==0) return ct.substring(name.length,ct.length);
		}
			return "";	
}


function checkCookie(){
	var user=getCookie("username");
	if(user!=""){
		alert("Welcome,"+user);
	}
	else{
		user=prompt("Please input your name:","Richard");
		if(user!=""&&user!=null)
			{
				setCookie("username",user,1);
			}
			
	}
	
}


function timedTxt(){
	var x=document.getElementById("txt");
	setTimeout(function(){x.value=2;},2000);
	setTimeout(function(){x.value=4;},4000);
	setTimeout(function(){x.value=6},6000);
}
