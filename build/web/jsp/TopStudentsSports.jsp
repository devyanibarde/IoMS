<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
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
                                overflow-y: scroll;
                                overflow: -moz-scrollbars-none;
                                -ms-overflow-style: none;
			
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
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
			.grid2
			{
				height:30%;
				width:30%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
			.grid3
			{
				height:30%;
				width:30%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
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
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
			.grid6
			{
				height:30%;
				width:30%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
			.grid7
			{
				height:30%;
				width:30%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
			.grid8
			{
				height:30%;
				width:30%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
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
                    <div class="ad-grid" id="Disp" style="color:white">
                       <center> <form id="sim" method="post" action="/IoMS/jsp/TopStudentsSports.jsp" style="margin: 20px;">
        <div class="admin-grid-txt">
            Meritorious Students List In Sports
        </div>
            <h1 style="color:#e6ccff;">Select Standard</h1></br></br>
            <div class="hrzline">
        <select name="cla" style="width: 30%;padding: 20px;background-color: #ffb3ff;border-color: #660066;border-width: 2px;color: #330033;font-weight: bold">
            <option value=<%=request.getParameter("cla")%>><%=request.getParameter("cla")%></option>
            <option value="1" selected>1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
                </div></br></br></br>
                <div class="hrzline" style="width:50%">
        <input type="text" name="number" value="<%=request.getParameter("number")%>" required>
        <label>Number of Top Students</label>
        </div>
        
        </br>
        
        
        <input class="stadd" type="submit" value="Show List">
        </form></br>
                        <a href="#" onclick="show('TopSpo','4',<%=request.getParameter("cla")%>,<%=request.getParameter("number")%>)"><button class="stadd" style="background-color:#006666">Inter-School</button></a>
                        <a href="#" onclick="show('TopSpo','5',<%=request.getParameter("cla")%>,<%=request.getParameter("number")%>)"><button class="stadd" style="background-color:#006666">District Level</button></a>
                        <a href="#" onclick="show('TopSpo','6',<%=request.getParameter("cla")%>,<%=request.getParameter("number")%>)"><button class="stadd" style="background-color:#006666">State Level</button></a><div id="Disp1"></div></center>
                        
                        
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
        
        function show(x,y,z,w)
        {
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function()
            {
                if(this.readyState==4 && this.status==200)
                {
                    document.getElementById("Disp1").innerHTML=this.responseText;
                }
            };
    
            xhttp.open("GET","/IoMS/jsp/"+x+".jsp?a="+y+"&z="+z+"&w="+w,true);
            xhttp.send();
    
        }
		</script>
		



		
	
	</body>
</html>