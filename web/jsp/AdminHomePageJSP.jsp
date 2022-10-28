<%@page import="java.util.*"%>
<html>
	<head>
	<meta charset="utf-8">
		<title>AdminIoMS</title>
		<link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		        
		<style>
			.adminbck
			{
				background-image:url("/IoMS/images/admin2.jpg");
				background-repeat:no-repeat;
				background-attachment:fixed;
				background-size:cover;
			}
			#d1
			{
				width:100%;
				height:50px;
				background:rgba(0,0,0,0.1);
				color:white;
				margin-bottom:40px;
				index:3000;
				overflow:hidden;
				
			}
			.d2
			{
				width:20%;
				height:700px;
				background:rgba(0,0,0,0.4);
				color:white;
			}
			*
			{
				margin:0;
				padding:0;
			}
			.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
			
			
			
			.ad-main
			{
				width:80%;
				height:100%;
				background:rgba(0,0,0,0.2);
				float:right;
			}
			.ad-grid
			{
				height:100%;
				width:70%;
				background:rgba(0,0,0,0.5);
				float:left;
			
			}
			.ad-pic
			{
				height:100%;
				width:30%;
				background:rgba(0,0,0,0.1);
				float:right;
			}
			.ad-pic1
			{
				height:50%;
				width:100%;
				background:rgba(255, 102, 217,0.2);
				text-align:center;
				font-size:20px;
				color:white;
				
			}
			.ad-pic2
			{
				height:50%;
				width:100%;
				background:rgba(102,102,51,0.1);
				
				color:#660033;
			}
			.ad-pic1pic
			{
				height:80%;
				width:90%;
				background:transparent;
				float:right;
				color:#660033;
				margin:10px 15px;
			}
			.grid1
			{
				height:30%;
				width:30%;
                                background:darkmagenta;
                                /*background:rgba(204, 81, 76,0.7);*/
				/*background:url('IoMS/images/grid1-1.jpg');*/
				color:white;
				margin:5px 5px;
				float:left;
                                animation:slide 16s infinite;
                              
			}
                         @keyframes  slide
                        {
                           5%
                            {
                                background:rgba(153, 0, 51,0.5);
                                /*background:url(IoMS/images/grid1-2.jpg);*/
                            }
                            15%
                            {
                                background:rgba(102, 25, 77,0.5);
                               /* background:url('IoMS/images/grid1-3.jpg');*/
                            }
                            25%
                            {
                                background:rgba(38, 38, 115,0.6);

                                /*background:url('IoMS/images/grid1-1.jpg');*/
                            }
                            40%
                            {
                                background:rgba(102, 0, 102,0.7);
                                /*background:url('IoMS/images/grid1-2.jpg');*/
                            }
                            65%
                            {
                                background:rgba(0, 122, 153,0.5);
                                /*background:url(IoMS/images/grid1-2.jpg);*/
                            }
                            80%
                            {
                                background:rgba(255, 153, 153,0.5);
                               /* background:url('IoMS/images/grid1-3.jpg');*/
                            }
                            90%
                            {
                                background:rgba(51, 0, 38,0.6);

                                /*background:url('IoMS/images/grid1-1.jpg');*/
                            }
                            100%
                            {
                                background:rgba(115, 38, 38,0.7);
                                /*background:url('IoMS/images/grid1-2.jpg');*/
                            }
                        }
			.grid2
			{
				height:30%;
				width:30%;
				background:transparent;
				color:white;
				margin:5px 5px;
				float:left;
                                
			}
			.grid3
			{
				height:30%;
				width:30%;
				background:rgba(179, 71, 0,0.5);
				color:white;
				margin:5px 5px;
				float:left;
                                animation:slide 19s infinite;
			}
                        @keyframes slide
                        {
                            5%
                            {
                                background:rgba(153, 0, 51,0.5);
                                /*background:url(IoMS/images/grid1-2.jpg);*/
                            }
                            15%
                            {
                                background:rgba(102, 25, 77,0.5);
                               /* background:url('IoMS/images/grid1-3.jpg');*/
                            }
                            25%
                            {
                                background:rgba(38, 38, 115,0.6);

                                /*background:url('IoMS/images/grid1-1.jpg');*/
                            }
                            40%
                            {
                                background:rgba(102, 0, 102,0.7);
                                /*background:url('IoMS/images/grid1-2.jpg');*/
                            }
                            65%
                            {
                                background:rgba(0, 122, 153,0.5);
                                /*background:url(IoMS/images/grid1-2.jpg);*/
                            }
                            80%
                            {
                                background:rgba(255, 153, 153,0.5);
                               /* background:url('IoMS/images/grid1-3.jpg');*/
                            }
                            90%
                            {
                                background:rgba(51, 0, 38,0.6);

                                /*background:url('IoMS/images/grid1-1.jpg');*/
                            }
                            100%
                            {
                                background:rgba(115, 38, 38,0.7);
                                /*background:url('IoMS/images/grid1-2.jpg');*/
                            }
                        }
			.grid4
			{
				height:30%;
				width:30%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
			.grid5
			{
				height:30%;
				width:60%;
				background:black;
				color:white;
				margin:5px 5px;
				float:left;
			}
			
			.grid7
			{
				height:30%;
				width:50%;
				background:rgb(179, 143, 0);
				color:white;
				margin:5px 5px;
				float:left;
                                animation:slide 15s infinite;
			}
                        @keyframes slide
                        {
                            5%
                            {
                                background:rgba(153, 0, 51,0.5);
                                /*background:url(IoMS/images/grid1-2.jpg);*/
                            }
                            15%
                            {
                                background:rgba(102, 25, 77,0.5);
                               /* background:url('IoMS/images/grid1-3.jpg');*/
                            }
                            25%
                            {
                                background:rgba(38, 38, 115,0.6);

                                /*background:url('IoMS/images/grid1-1.jpg');*/
                            }
                            40%
                            {
                                background:rgba(102, 0, 102,0.7);
                                /*background:url('IoMS/images/grid1-2.jpg');*/
                            }
                            65%
                            {
                                background:rgba(0, 122, 153,0.5);
                                /*background:url(IoMS/images/grid1-2.jpg);*/
                            }
                            80%
                            {
                                background:rgba(255, 153, 153,0.5);
                               /* background:url('IoMS/images/grid1-3.jpg');*/
                            }
                            90%
                            {
                                background:rgba(51, 0, 38,0.6);

                                /*background:url('IoMS/images/grid1-1.jpg');*/
                            }
                            100%
                            {
                                background:rgba(115, 38, 38,0.7);
                                /*background:url('IoMS/images/grid1-2.jpg');*/
                            }
                        }
			.grid8
			{
				height:30%;
				width:40%;
				background:black;
				color:white;
				margin:5px 5px;
				float:left;
			}
/*------------------------------------grid--------------------------------*/
.grid5 section
{
    height:100%;
    background:black;
}
.grid5 vedio
{
    object-fit:cover;
}
.grid5 h1
{
    margin: 0;
    padding: 0;
    position: absolute;
    top:50%;
    transform:translateY(-50%);
    width:100%;
    text-align: center;
    color:#ddd;
    font-family: sans-serif;
    letter-spacing: 0.1em;
}
.grid5 h1 span
{
    display:inline-block;
    animation: animate 1s linear infinite;
}
@keyframes animate
{
    0%
    {
        opacity:0;
        transform:rotateY(90deg);
        filter:blur(10px);
    }
    100%
    {
        opacity:1;
        transform:rotateY(0deg);
        filter:blur(10px);
    }
    
}
.grid5 h1 span:nth-child(1)
{
  animation-delay: 1s;  
    
}
.grid5 h1 span:nth-child(2)
{
  animation-delay: 1.5s;  
    
}
.grid5 h1 span:nth-child(3)
{
  animation-delay: 2s;  
    
}
.grid5 h1 span:nth-child(4)
{
  animation-delay: 2.5s;  
    
}
.grid5 h1 span:nth-child(5)
{
  animation-delay: 3s;  
    
}
.grid5 h1 span:nth-child(6)
{
  animation-delay: 3.5s;  
    
}

	</style>
	</head>
	<body class="adminbck">
            <div id="d1" style="position:fixed;">
                <!--<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>-->
			<table style="text-align:center;padding:10px;font-size:25px;color:white;float: right">
				<tr>
                                    <td style="width:200px;"><a href="/IoMS/jsp/AdminHomePageJSP.jsp" style="color: white;text-decoration: none">Home</a></td>
					
                                        <td style="width:200px;"><a href="/IoMS/jsp/LogOutJSP.jsp" style="color: white;text-decoration: none">Logout</a></td>
				</tr>
			</table>
		</div>
            </br></br></br></br></br></br>
		<!--<div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <p style="color:white">Progress Bar</p>
                </div>-->
                

            

<meta charset="UTF-8">
<style>
.rotaing-box
{
width:100px;
height:100px;
margin:100px auto;
perspective:1800;

}
.single-rb
{
width:100px;
animation:rotate 10s infinite;
-ms-transform-style:preserve-3d;
transform-style:preserve-3d;
/*margin-top:120px;*/

}
.single-rb img
{

}
.single-rb div
{
position:absolute;
width:100px;
height:100px;
}
.front-side
{
transform:translateZ(50px);
background:red;
opacity: 0.5;
border: 2px black solid;
}
.back-side
{
 transform:rotateY(180deg)
translateZ(50px);
background:yellow;
opacity: 0.5;
border: 2px black solid;
}
.left-side
{
transform: rotateY(90deg)
translateX(-50px);
transform-origin:left;
background:pink;
opacity: 0.5;
border: 2px black solid;
}
.right-side
{
 transform:rotateY(90deg) 
 translateX(50px);
transform-origin:right;
background:limegreen;
opacity: 0.5;
border: 2px black solid;
}
.top-side
{
transform: rotateX(-90deg) 
translateY(-50px);
transform-origin:top;
background:black;
opacity: 0.5;
border: 2px black solid;
}
.bottom-side
{
transform: rotateX(90deg)
 translateY(50px);
transform-origin:bottom;
background:peru;
opacity: 0.5;
border: 2px black solid;
}

@keyframes rotate
{
0%{transform:rotateY(0deg);}
5%{transform:rotateZ(95deg);}
25%{transform:rotateY(75deg);}
30%{transform:rotateX(150deg);}
40%{transform:rotateZ(180deg);}
55%{transform:rotateY(170deg);}
60%{transform:rotateZ(120deg);}
70%{transform:rotateX(110deg);}
80%{transform:rotateZ(120deg);}
90%{transform:rotateY(98deg);}
100%{transform:rotateY(100deg);}
}
</style>
<div  style="margin-left:80px;margin-top: 200px;float: left">
<div class="rotating-box">
	<div class="single-rb">
		<div class="front-side">
		
		</div>
		<div class="back-side">
		
		</div>
		<div class="left-side">
		
		</div>
		<div class="right-side">
		
		</div>
		<div class="top-side">
		
		</div>
		<div class="bottom-side">
		
		</div>
	</div>
</div>
</div>

            
            
            
		<div class="ad-main">
                    <div class="ad-grid" id="Disp">
                            <a href="#" onclick="task25('TopStuAca')"><div class="grid1" style="font-size: 30px;color:whitesmoke">                              
                                    <h5 style="margin-top: 70px;text-align: center">Top Students in Academics</h5>
                                </div></a>
				<a href="#" onclick="task25('TopStuspo')"><div class="grid2" style="background:url('/IoMS/images/preview-29445PGKUDJdrhw-low_0005.jpg');background-repeat:no-repeat;opacity:0.7;font-size: 30px;color:whitesmoke">
                                        <h5 style="margin-left:100px;margin-right: 0px;margin-top: 70px;">Top Students in Sports</h5>
				</div></a>
				<a href="#" onclick="task25('MailsCT')"><div class="grid3" style="font-size: 30px;color:whitesmoke">
					<h5 style="margin-top: 70px;text-align: center">Mails from Class Teachers</h5>
				</div></a>
				<a href="#" onclick="task25('MailsHM')"><div class="grid4" style="background:url('/IoMS/images/ipapi.jpg');background-repeat:no-repeat;opacity:0.7;font-size: 50px;">
                                        <h5 style="margin-top: 30px;text-align: left;color: red">Mails from Principals</h5>
				</div></a>
				
				<a href="/IoMS/jsp/Progress.jsp"><div class="grid5" style="background:url('/IoMS/images/progress.png');background-repeat:no-repeat;opacity:0.9;font-size: 40px;">
                                        <h5 style="margin-left:20px;margin-right: 0px;margin-top: 30px;">View progress </br>of portal</h5>
				</div></a>
				
				<!--
				<a href="/IoMS/jsp/Progress.jsp">
				<div class="grid5">
				<video preload="auto" autoplay="autoplay" type="vedio/mp4" src="/IoMS/media/smoke.mp4" width="455px" height="195px" loop  muted>
				</video>
				</div>
				</a>
				-->
				<a href="#" onclick="task25('SendMail')"><div class="grid7" style="font-size: 30px;color:whitesmoke;">
					<h5 style="margin-top: 70px;text-align: center">Send Messages</h5>
				</div></a>
				<a href="/IoMS/jsp/OnGoingUpdate.jsp"><div class="grid8" style="background:url('/IoMS/images/BlackWallpapers1.jpg');background-repeat:no-repeat;opacity:0.8;font-size: 40px;">
                                        <h5 style="margin-top: 140px;">Update &#39On-going Schemes&#39 Section</h5>
                                       
                                            
				</div></a>
			</div>
			
			<div class="ad-pic">
				<div class="ad-pic1">
                                    <div class="ad-pic1pic" style="font-size:60px">
						<i class="fa fa-user fa-5x" style="color:#660033"></i>
					</div>
					
					<h2>Admin</h2>
					
				</div>
				<div class="ad-pic2">
                                    
                                        
                                        <%
                                        Date date=new Date();
                                        %>
                                        
                                        <h1 style="font-family: cursive;color: wheat;padding: 30px;padding-top: 80px;padding-left: 80px"><%=date.toString()%></h1>
				</div>
			</div>
		</div>
		
		<script>
		
		
		function openNav() {
  document.getElementById("mySidenav").style.width = "500px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
	
function task25(x)
        {
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function()
            {
                if(this.readyState==4 && this.status==200)
                {
                    document.getElementById("Disp").innerHTML=this.responseText;
                }
            };
    
            xhttp.open("GET","/IoMS/jsp/"+x+".jsp",true);
            xhttp.send();
    
        }
        
        
        
            var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);

        </script>
		
		



		
	
	</body>
</html>