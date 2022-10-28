<%-- 
    Document   : Progress
    Created on : 25 Mar, 2019, 3:27:43 PM
    Author     : Dell
--%>

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
			
			.grid7
			{
				height:30%;
				width:50%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
			.grid8
			{
				height:30%;
				width:40%;
				background:red;
				color:white;
				margin:5px 5px;
				float:left;
			}
	</style>
        
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
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
                        <center><div class="admin-grid-txt">
            Progress of Portal
        </div></center>
                           <%
        String schools="0",CTs,students;
        int i,schregwithCT=0,totalsch=10,schnotreg=0,schregnoCT=0,CTwithstu=0,CTwithnostu=0;
        
        Connection con;
        PreparedStatement ps,ps1;
        ResultSet rs,rs1;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select count(*) from school;");
            rs=ps.executeQuery();
            rs.next();
            schools=rs.getString("count(*)");
            schnotreg=totalsch-Integer.parseInt(schools);
            
            ps=con.prepareStatement("select count(*) from user where UserType='CT';");
            rs=ps.executeQuery();
            rs.next();
            CTs=rs.getString("count(*)");
            
            ps=con.prepareStatement("select count(*) from student;");
            rs=ps.executeQuery();
            rs.next();
            students=rs.getString("count(*)");
        
        %>
    <center>
        <div class="prog" style="float: left;width: 30%;">
            <h1><%=schools%></h1></br>
            <p style="font-size:20px">Number of Schools Registered</p>
        </div>
        <div class="prog" style="float: left;width: 30%">
            <h1><%=CTs%></h1></br>
            <p style="font-size:20px">Total Number of Class Teachers</p>
        </div>
        <div class="prog" style="float: right;width: 30%;">
            <h1><%=students%></h1></br>
            <p style="font-size:20px">Total Number of Students</p>
        </div>
    </center>
    <center>
        <div class="pie" id="piech1" style="float: left;width: 50%;background: transparent">
            
            <%
                ps=con.prepareStatement("select SchoolID from school");
                rs=ps.executeQuery();
                rs.next();
            for(i=0;i<Integer.parseInt(schools);i++)
            {
                ps1=con.prepareStatement("select count(*) from user where UserType=? and school=?");
                ps1.setString(1, "CT");
                ps1.setString(2, rs.getString("SchoolID"));
                rs1=ps1.executeQuery();
                rs1.next();
                if(Integer.parseInt(rs1.getString("count(*)"))!=0)
                {
                    schregwithCT++;
                }
                rs.next();
            }
            schregnoCT=Integer.parseInt(schools)-schregwithCT;
            %>
        </div>
        <div class="pie" id="piech2" style="float: right;width: 50%">
            
            <%
            
                ps1=con.prepareStatement("select count(*) from student group by class,section;");
                rs1=ps1.executeQuery();
                while(rs1.next())
                {
                if(Integer.parseInt(rs1.getString("count(*)"))!=0)
                {
                    CTwithstu++;
                }
                }
            
            CTwithnostu=Integer.parseInt(CTs)-CTwithstu;
            %>
        </div>
    </center>
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
        <%
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
		
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
        
        
        // Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Task', 'Number of Schools'],
  ['Schools not Registered', <%=schnotreg%>],
  ['Schools Registered but Class Teachers not added', <%=schregnoCT%>],
  ['Schools Registered and Class Teachers added', <%=schregwithCT%>]
]);

 var data1 = google.visualization.arrayToDataTable([
  ['Task', 'Number of Schools'],
  ['Class Teachers who have updated students data', <%=CTwithstu%>],
  ['Class Teachers who have not updated students data', <%=CTwithnostu%>]
  
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'School Statistics','width':500, 'height':450, backgroundColor:'transparent',titleTextStyle:{color:'white', fontSize:20},legend:{position:'right',textStyle:{color:'white',fontSize:15}}};
  var options1 = {'title':'Class Teacher Statistics','width':500, 'height':450, backgroundColor:'transparent',titleTextStyle:{color:'white', fontSize:20},legend:{position:'right',maxLines:'50',textStyle:{color:'white',fontSize:15}}};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piech1'));
  chart.draw(data, options);
  
  var chart = new google.visualization.PieChart(document.getElementById('piech2'));
  chart.draw(data1, options1);
}
		</script>
		



		
	
	</body>
</html>
