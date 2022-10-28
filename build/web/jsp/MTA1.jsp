<%@page import="java.sql.*"%>
<html>
	<head>
		<title>ioms</title>
		<link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<style>
			
				
				
				.lg1
				{
					float:right;
					padding-right:150px;
					padding-bottom:10px;
					padding-left:10px;
					overflow:hidden;
					width:25%;
					margin-bottom:10px;
				}
				#ad
				{
					width:150px;
					text-align:center;
					font-size:15px;
					font-family:tahoma;
					color:white;
					font-weight:bold;
					text-decoration:none;
					
					
					
				}
				#ad:hover
				{
					text-decoration:underline;
					font-size:20px;
				}
				.lg2
				{
					text-align:center;
					background-color:green;
					height:10px;
					width:100px;
					padding-left:2px;
					padding-right:2px;
					padding-top:2px;
					padding-bottom:2px;
					border-radius:2px;
					margin-right:2px;
					border-radius:10px;
				}
				.lg2:hover
				{
					box-shadow:black;
					text-decoration:none;
				
				}
				#lk
				{
					width:250px;
					font-size:35px;
					font-family:italic;
					color:white;
					text-decoration:none;	
				}
				
				
				
				
				
				
				
				
				#pro
				{
					display:none;
					background-color:black;
					float:right;
					height:200px;
					width:200px;
					margin-top:100px;
				}
				
                                .hrzline input[type=text]
{
	width:100%;
	padding:10px 0;
	font-size:16px;
	color:#fff;
	margin-bottom:30px;
	border: none;
	border-bottom:2px solid #fff;
	outline:none;
	background:transparent;
    font-size:20px;
    font-style:italic;
    font-weight:bold;
    font-family:tahoma;
}

.hrzline textarea
{
	width:100%;
    min-height:100px;
	padding:10px 0;
	font-size:16px;
	color:#fff;
	margin-bottom:30px;
	border: none;
	border-bottom:2px solid #fff;
	outline:none;
	background:transparent;
    font-size:20px;
    font-style:italic;
    font-family:tahoma;
    resize:none;
}
				
			</style>
		
	</head>
	<body>
	<%
        String id,schname,uname,idt,ctid,clas,sect;
        int c1,c2,c3,c4,c5,i;
        
        id=String.valueOf(session.getAttribute("ID"));
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        Connection con;
        PreparedStatement ps,ps1,ps2,ps3;
        ResultSet rs,rs1,rs2,rs3;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from school where SchoolID=?");
			ps.setString(1,id);
			rs=ps.executeQuery();
			rs.next();
            
            ps1=con.prepareStatement("select * from user where UserID=?");
			ps1.setString(1,ctid);
			rs1=ps1.executeQuery();
			rs1.next();
            
            schname=rs.getString("SchoolName");
            uname=rs1.getString("name");
            clas=rs1.getString("class");
            sect=rs1.getString("section");
    
    %>
    <div class="bg">
	<div id="headschnm">
            <table>
		<tr>
                    <td><i class="fa fa-university" aria-hidden="true" style="font-size:80px; color:#330011;"></i></td>
                    <td style="font-size:40px;"><b><i style="margin-left:40px;color:#000;"><%=schname%></i></b></td>
		</tr>
            </table>
	</div>
	<div id="hd1">
            <table id="headtxt" style="float:left;">
		<tr>
                    <td><%=uname%>(<%=clas%>-<%=sect%>)</td>
		</tr>
            </table>
            <table id="headtxt" style="float:right;right-margin:50px;">
		<tr>
                    <td style="align:center;padding-left:50px;padding-right:50px;"><a href="/IoMS/jsp/ClassTeacherJSP.jsp"><i class="fa fa-home fa-lg" style="color:white"></i></td>
                    
                    <td style="align:center;padding-left:50px;padding-right:50px;"><a href="#"><i class="fa fa-gears fa-lg" style="color:white"></i>
					<div class="priemaildrop-cont">
					<a href="#">Link 1</a>
					<a href="#">Link 2</a>
					<a href="#">Link 3</a>
					</div>
					</td>
                    <td style="align:center;" class="lg2"><a href="/IoMS/jsp/LogOutJSP.jsp" id="lk">logout</td>
		</tr>
            </table>
	</div>
			
	<div class="hd3">
            <span class="textanim">Lighten To Enlighten Others</span>
	</div>
            
	<div class="hd2" id="mainwork">
            	<%
                    String body;
                    body=request.getParameter("body");
                    ps2=con.prepareStatement("insert into mails(sender,body,receiver) values(?,?,?)");
                    ps2.setString(1, ctid);
                    ps2.setString(2, body);
                    ps2.setString(3, "admin");
                    ps2.executeUpdate();
                    %>Mail Sent
                <a href="/IoMS/jsp/ClassTeacherJSP.jsp"><button class="stadd">OK!</button></a>		
	</div>
			
	<div class="hd4" id="wh">
            <div class="hd5">
		<a href="#wh"  onclick="task24('Delete')"><div class="boxhov" style="border-color:#b30059">			
                    <div class="pic" style="background:#b30059;">
                        <i class="fa fa-trash" aria-hidden="true"></i>
                    </div>
                    <div class="boxcont">
			<h3>Delete student's data left class</h3>
                    </div>
		</div></a>
				
		<a href="#wh" onclick="task24('Guide')"><div class="boxhov" style="border-color:#336600">
                    <div class="pic" style="background:#336600">
			<i class="fa fa-book" aria-hidden="true"></i>
                    </div>
                    <div class="boxcont">
			<h3>Guidelines to use the portal</h3>
                    </div>
                    </div></a>
		<a href="#wh" onclick="task24('NoStu')"><div class="boxhov" style="border-color:#006666">
                    <div class="pic" style="background:#006666">
                        
                        <i class="fa fa-users" aria-hidden="true"></i>
                    </div>
                    <div class="boxcont">
			<h3>View Students</h3>
                    </div>
		</div></a>
		<a href="#wh" onclick="task24('TeacherProfile')"><div class="boxhov" style="border-color:#4d0026">
                    <div class="pic" style="background:#4d0026">
			<i class="fa fa-user fa-lg" style="color:white"></i>
                    </div>
                    <div class="boxcont">
			<h3>View Profile</h3>
                    </div>
                    </div></a>
            </div>
            <div class="hd6" id="wh1" style="color:white">
                                   
            </div>
	</div>
	<div class="hd7">
            CopyRights Reserved
	</div>
    </div>
    <script>
	window.onscroll = function() {myFunction();};

	var hd1 = document.getElementById("hd1");
	var sticky = hd1.offsetTop;

	function myFunction() {
	if (window.pageYOffset >= sticky) {
            hd1.classList.add("sticky");
	} else {
            hd1.classList.remove("sticky");
	}
	}
		
			

        function task23(x)
        {
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function()
            {
                if(this.readyState==4 && this.status==200)
                {
                    document.getElementById("mainwork").innerHTML=this.responseText;
                }
            };
    
            xhttp.open("GET","/IoMS/jsp/"+x+".jsp",true);
            xhttp.send();
    
        }
        
        function taskc(x)
        {
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function()
            {
                if(this.readyState==4 && this.status==200)
                {
                    document.getElementById("mainwork").innerHTML=this.responseText;
                }
            };
    
            xhttp.open("GET","/IoMS/jsp/"+x+".jsp?q=2",true);
            xhttp.send();
    
        }
        
        function task24(x)
        {
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function()
            {
                if(this.readyState==4 && this.status==200)
                {
                    document.getElementById("wh1").innerHTML=this.responseText;
                }
            };
    
            xhttp.open("GET","/IoMS/jsp/"+x+".jsp#wh",true);
            xhttp.send();
    
        }
    </script>
</body>
	<%
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
</html>