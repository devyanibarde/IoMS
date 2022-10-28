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
                    <div class="ad-grid" id="Disp">
                           <%
        String q,clas,b,body,sendto1,sendto2,attach,to="";
        int num;
        
        q=request.getParameter("q");
        
        body=request.getParameter("body");
        sendto1=request.getParameter("HM");
        sendto2=request.getParameter("CT");
        
        if(sendto2==null)
        {
            to="HM";
        }
        else if(sendto1==null)
        {
            to="CT";
        }
        else
        {
            to=null;
        }
            
        
        Connection con;
	PreparedStatement ps,ps1;
	ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            if(q.equals("1"))
            {
                //Academics
                //b=1 term1 b=2 term2 b=3 avg it goes in type3
                
                clas=request.getParameter("clas");
        b=request.getParameter("b");
        num=Integer.parseInt(request.getParameter("num"));
        attach=request.getParameter("Attachment");
                
                if(b.equals("1"))
                {
                    ps=con.prepareStatement("select school from student where class=? group by school order by termIper desc limit ?");
                    ps.setString(1,clas);
                    ps.setInt(2,num);
                    rs=ps.executeQuery();
                   
                }
                else if(b.equals("2"))
                {
                    ps=con.prepareStatement("select school from student where class=? group by school order by termIIper desc limit ?");
                    ps.setString(1,clas);
                    ps.setInt(2,num);
                    rs=ps.executeQuery();
                    
                }
                else
                {
                    ps=con.prepareStatement("select school from student where class=? group by school order by ((termIper+termIIper)/2) desc limit ?");
                    ps.setString(1,clas);
                    ps.setInt(2,num);
                    rs=ps.executeQuery();
                        
                }
                
                while(rs.next())
                {
                if(attach==null)
                {
                    ps1=con.prepareStatement("insert into mails(sender,receiver,body,receivertype) values(?,?,?,?)");
                    ps1.setString(1, "admin");
                    ps1.setString(2, rs.getString("school"));
                    ps1.setString(3, body);
                    ps1.setString(4, to);
                    ps1.executeUpdate();
                }
                else
                {
                    
                    ps1=con.prepareStatement("insert into mails values(?,?,?,?,?,?,?)");
                    ps1.setString(1, "admin");
                    ps1.setString(2, rs.getString("school"));
                    ps1.setString(3, body);
                    ps1.setString(4, clas);
                    ps1.setString(5, String.valueOf(num));
                    ps1.setString(6, b);
                    ps1.setString(7, to);
                    ps1.executeUpdate();
                }
                }
                %><center style="margin:30px;"><h1 style="color:#e6ccff;">Mail Sent</h1>
                    <a href="/IoMS/jsp/AdminHomePageJSP.jsp"><button class="stadd">OK!</button></a></center>
                <%
            }
            else if(q.equals("2"))
            {
                //Sports
                //b=4 interschool b=5 district b=6 state it goes in type3

                clas=request.getParameter("clas");
        b=request.getParameter("b");
        num=Integer.parseInt(request.getParameter("num"));
attach=request.getParameter("Attachment");

                if(b.equals("4"))
                {
                    ps=con.prepareStatement("select school from student where class=? and sportslevel='interschool' group by school limit ?");
                    ps.setString(1,clas);
                    ps.setInt(2,num);
                    rs=ps.executeQuery();
                   
                }
                else if(b.equals("5"))
                {
                    ps=con.prepareStatement("select school from student where class=? and sportslevel='district' group by school limit ?");
                    ps.setString(1,clas);
                    ps.setInt(2,num);
                    rs=ps.executeQuery();
                    
                }
                else
                {
                    ps=con.prepareStatement("select school from student where class=? and sportslevel='state' group by school limit ?");
                    ps.setString(1,clas);
                    ps.setInt(2,num);
                    rs=ps.executeQuery();
                        
                }
                
                while(rs.next())
                {
                if(attach==null)
                {
                    ps1=con.prepareStatement("insert into mails(sender,receiver,body,receivertype) values(?,?,?,?)");
                    ps1.setString(1, "admin");
                    ps1.setString(2, rs.getString("school"));
                    ps1.setString(3, body);
                    ps1.setString(4, to);
                    ps1.executeUpdate();
                }
                else
                {
                    
                    ps1=con.prepareStatement("insert into mails values(?,?,?,?,?,?,?)");
                    ps1.setString(1, "admin");
                    ps1.setString(2, rs.getString("school"));
                    ps1.setString(3, body);
                    ps1.setString(4, clas);
                    ps1.setString(5, String.valueOf(num));
                    ps1.setString(6, b);
                    ps1.setString(7, to);
                    ps1.executeUpdate();
                }
                }
                %><center style="margin:30px;"><h1 style="color:#e6ccff;">Mail Sent</h1>
                    <a href="/IoMS/jsp/AdminHomePageJSP.jsp"><button class="stadd">OK!</button></a></center>
                <%
            }
            else if(q.equals("3"))
            {
                //To all schools
                ps1=con.prepareStatement("insert into mails(sender,body,receivertype) values(?,?,?)");
                    ps1.setString(1, "admin");
                    ps1.setString(2, body);
                    ps1.setString(3, to);
                    ps1.executeUpdate();
                    %><center style="margin:30px;"><h1 style="color:#e6ccff;">Mail Sent</h1>
                    <a href="/IoMS/jsp/AdminHomePageJSP.jsp"><button class="stadd">OK!</button></a></center>
                <%
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
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
		</script>
	
	</body>
</html>