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
				
				.hd3
				{	
					float:left;
					
					position:relative;
					overflow:hidden;
					
					width:400px;
					height:420px;
					background-color:rgba(13,13,13,0.1);
					padding-left:100px;
					padding-top:100px;
					padding-right:50px;
					padding-bottom:50px;
				}
				.flipdiv
				{
					height:230px;
					width:250px;
					background-color:rgba(13,13,13,0.2);
					margin-bottom:15px;
					margin-right:15px;
					margin-top:15px;
					margin-left:15px;
					padding-right:20px;
					border-radius:20px;
					color:white;
				}
				.flipdiv:hover
				{
					background-color:rgba(13,13,13,0.2);
					color:rgba(13,13,13,0.2);
				}
				.flipdiv:hover .i
				{
					background-color:rgba(13,13,13,0.2);
					color:rgba(13,13,13,0.2);
				}
				.F
				{
					height:230px;
					width:250px;
					background-color:rgba(13,13,13,0.2);
					margin-bottom:15px;
					margin-right:15px;
					margin-top:15px;
					margin-left:15px;
					padding-right:20px;
					border-radius:20px;
					position:absolute;
					-webkit-transform:perspective(600px) rotatey(0deg);
					transform:perspective(600px) rotatey(0deg);
					backface-visibility:hidden;
					-webkit-transition:-webkit-transform .3s linear 0s;
					transition:transform .3s linear 0s;
					
				}
				
				.B
				{
					/*opacity:0.5;*/
					height:230px;
					width:250px;
					background:linear-gradient(to top left, #ff9933 0%, #ff0066 100%);
					margin-bottom:15px;
					margin-right:15px;
					margin-top:15px;
					margin-left:15px;
					padding-right:20px;
					border-radius:20px;
					position:absolute;
					-webkit-transform:perspective(600px) rotatey(180deg);
					transform:perspective(600px) rotatey(180deg);
					color:white;
					font-size:30px;
					font-family:italic;
					text-align:center;
					font-weight:bold;
					backface-visibility:hidden;
					-webkit-transition:-webkit-transform .3s linear 0s;
					transition:transform .3s linear 0s;
					text-decoration:none;
				}
			
				.flipdiv:hover .F
				{
					-webkit-transform:perspective(600px) rotatey(-180deg);
					transform:perspective(600px) rotatey(0deg);
					
					
				}
				.flipdiv:hover .F .i
				{
					color:rgba(13,13,13,0.2);
				}

				.flipdiv:hover .B
				{
					-webkit-transform:perspective(600px) rotatey(0deg);
					transform:perspective(600px) rotatey(0deg);
				}
				.hd4
				{
					position:relative;
					overflow:hidden;
					font-style:italic;
					font-weight:blod;
					width:100%;
					height:300px;
					background-color:rgba(13,13,13,0.8);
					border-radius:20px;
					padding-left:50px;
					padding-right:150px;
					padding-top:10px;
					padding-bottom:50px;
					margin-bottom:10px;
					margin-top:200px;
					
				}
				.hd5
				{
					position:relative;
					overflow:hidden;
					width:40%;
					height:340px;
					background-color:rgba(13,13,13,0.1);
					margin-right:50px;
					
				}
				.hd6
				{
					overflow:-moz-scrollbars-none;
					-ms-overflow-style:none;
					overflow-y:scroll;
					position:relative;
					overflow:hidden;
					width:40%;
					height:300px;
					background-color:transparent;
					float:right;
					margin-top:-320px;
					margin-right:100px;
					
				}
				.hd7
				{
					padding:50px;
					position:relative;
					overflow:hidden;
					width:100%;
					height:250px;
					background-color:black;
					margin-top:100px;
					color:white;
					font-size:30px;
					font-style:italic;
					text-align:center;
					border-radius:30px;
				}
				.h7:hover
				{
						/*box-shadow:20px;*/
				}
				
				.boxhov
				{
					position:relative;
					float:left;
					height:150px;
					width:190px;
					background-color:rgba(13,13,13,0.0);
					margin-left:35px;
					margin-right:35px;
					margin-top:10px;
					margin-bottom:10px;
					box-sizing:border-box;
					overflow:hidden;
					border-radius:20px;
					color:white;
					border-style:solid;
					
					
				}
				
				.boxhov .pic
				{
					position:absolute;
					top:0;
					left:0;
					width:100%;
					height:100%;
					/*background:linear-gradient(to bottom left, #6600ff 0%, #ff0066 100%);*/
					transition:0.5s;
					z-index:1;
					/*opacity:0.8;*/
				}
				.boxhov:hover .pic
				{
					top:15px;
					right:40px;
					left:58px;
					width:70px;
					height:70px;
					border-radius:50%;
					
				}
				.boxhov .pic .fa
				{
						position:absolute;
						top:40%;
						left:40%;
						transform:translate(-50% -50%);
						transition:0.5s;
						font-size:40px;
						color:white;
				}
				.boxhov:hover .pic .fa
				{
					font-size:20px;
				}
				.boxcont
				{
					top:50px;
					/*left:50px;*/
					position:absolute;
					height:calc(100% - 50px);
					text-align:center;
					padding:20px;
					box-sizing:box-border;
					
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
				.stadd
				{
					background-color:#cc0066;
					color:white;
					padding:20px,25px;
					border:none;
					margin:8px 0;
					cursor:pointer;
					width:30%;
					height:50px;
					font-size:20px;
					font-family:italic;
				}
				.stadd:hover
				{
					font-size:30px;
					box-shadow:5px 5px 5px black;
					background-color:#ff944d;
					width:30%;
					height:50px;
					color:white;
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
                    <td style="font-size:40px;"><b><i style="margin-left:40px;color:black;"><%=schname%></i></b></td>
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
                    
                    <td style="align:center;padding-left:50px;padding-right:50px;" class="priemaildrop"><a href="#"><i class="fa fa-gears fa-lg" style="color:white"></i>
					<div class="priemaildrop-cont">
					<a href="#" onclick="task23c('EP')">Edit Profile</a>
					<a href="#" onclick="task23c('SS')">Security Settings</a>
					<a href="#" onclick="task23c('CPCT')">Change Password</a>
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
        String curr,msg;
        
        curr=request.getParameter("curr");
        msg=request.getParameter("msg");
        if(msg.equals("abc"))
        {
        %>
<center><h5>Change Password</h5></center>
        <form name="frm" method="post" action="/IoMS/jsp/CP1.jsp">				
        <div class="hrzline">
            Current Password<input type="text" name="curr" autocomplete="off">
            
        </div>
            <input class="stadd" type="submit" name="sub" value="Submit">
        </form><%
%>
        <b style="color:white">Password Changed</b><%
        
}
else
{
msg="";
        ps2=con.prepareStatement("select Password from usersecurity where UserID=?");
            ps2.setString(1, ctid);
            rs2=ps2.executeQuery();
            rs2.next();
        if(curr.equals(rs2.getString("Password")))
            {
                %>
                <center><h5>Change Password</h5></center>
                <form name="frm" method="post" action="/IoMS/jsp/CPCT2.jsp">				
                    <div class="hrzline">
                        New Password<input type="text" name="new" autocomplete="off">
                        
                    </div>
                    <input class="stadd" type="submit" name="sub" value="Submit">
                </form>
                <%
                    if(msg!=null){%>
        <b style="color:red"><%=msg%></b><%}
            }
            else
            {
                msg="Incorrect Password";
                //Incorrect Password
%>
                <center><h5>Change Password</h5></center>
        <form name="frm" method="post" action="/IoMS/jsp/CP1.jsp">				
        <div class="hrzline">
            Current Password<input type="text" name="curr" autocomplete="off">
            
        </div>
            <input class="stadd" type="submit" name="sub" value="Submit">
        </form><%
if(msg!=null){%>
        <b style="color:red"><%=msg%></b><%}
            }
            }

%>		
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
        
        function task23c(x)
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