	
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

	