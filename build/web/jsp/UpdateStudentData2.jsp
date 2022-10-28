<%@page import="java.sql.*"%>
<html>
	<head>
		<title>ioms</title>
		<link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<style>
			
				.bg1
				{
					background-color:black;
				}
				.bg
				{
					position:absolute;
					background-image:url("/IoMS/images/wood.jpg");
					background-repeat:no-repeat;
					background-attachment:scroll;
					background-size:cover;
					height:250%;
					width:100%;
					overflow:hidden;
				}
				#hd1
				{
					/*position:relative;*/
					overflow:hidden;
					width:100%;
					height:80px;
					background-color:rgba(13,13,13,0.8);
					border-radius:20px;
					/*padding-left:50px;
					padding-top:10px;
					padding-bottom:50px;*/
					margin-bottom:10px;
					z-index:3000
				}
				#headtxt
				{
					font-style:italic;
					font-weight:blod;
					font-style:italic;
					font-size:30px;
					color:white;
					background-color:rgba(13,13,13,0.1);
					padding-left:50px;
					padding-right:50px;
					padding-top:15px;
					
				}
				#headschnm
				{
					width:100%;
					height:150px;
					background-color:black;
					color:white;
					font-style:italic;
					font-size:50px;
				}
				
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
				.hd2
				{
					float:right;
					color:white;
					position:relative;
					overflow:hidden;
					font-style:italic;
					font-weight:blod;
					width:50%;
					min-height:500px;
					background-color:rgba(13,13,13,0.8);
					border-radius:20px;
					padding-left:50px;
					padding-top:20px;
					padding-right:50px;
					padding-bottom:50px;
					font-size:30px;
					margin-bottom:180px;
					/*display:none;*/
					
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
					position:relative;
					overflow:hidden;
					width:40%;
					height:300px;
					background-color:black;
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
				.textanim
				{
					/*color:#ff9999;*/
					color:#fff;
					position:relative;
					margin-bottom:20px;
					font-size:70px;
					background:rgba(13,13,13,0.0);
					
					font-style:tahoma;
					font-weight:blod;
					animation:text 8s 20;
					/*text-shadow: 0 0 20px #800040;*/
					text-shadow: 0px 0px 80px #ff005b;
					
					
				}
				.textanim:after
				{
					content:attr(data-text);
					top:0;
					left:0;
					position:relative;
					z-index:-1;
					/*color:#800040;*/
					color:#ff005b;
					filter:blur(50px);
				}
				.textanim:before
				{
					content: '';
					position:absolute;
					z-index:-2;
					background:#fe3a80;
					opacity:.5;
					filter:blur(40px);
				}
				@keyframes text
				{
					0%
					{
						color:rgba(13,13,13,0.0);
						margin-bottom:-40px;
					}
					30%
					{
						letter-spacing:8px;
						margin-bottom:-40px;
					}
					
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
	<body style="background:black">
	<%
        String id,schname,uname,idt,ctid,clas,sect,adhaar;
        int c1,c2,c3,c4,c5,i;
        
        id=String.valueOf(session.getAttribute("ID"));
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        adhaar=request.getParameter("adno");
        
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
            
            ps2=con.prepareStatement("select * from student where adhaarno=?");
    ps2.setString(1,adhaar);
    rs2=ps2.executeQuery();
    rs2.next();
    
    %>
		<div class="bg">
			<div id="headschnm">
				<table>
					<tr>
						<td><i class="fa fa-university" aria-hidden="true" style="font-size:80px; color:white;"></i></td>
						<td style="font-size:40px;"><b><i style="margin-left:40px;color:white;"><%=schname%></i></b></td>
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
						<td style="align:center;padding-left:50px;padding-right:50px;"><a href="#"><i class="fa fa-user fa-lg" style="color:white"></i></td>
						<td style="align:center;padding-left:50px;padding-right:50px;"><a href="#"><i class="fa fa-gears fa-lg" style="color:white"></i></td>
						<td style="align:center;" class="lg2"><a href="/IoMS/jsp/LogOutJSP.jsp" id="lk">logout</td>
					</tr>
				</table>
			</div>
				
										
					<!--<div class="lg1">
						<table width="100%">
							<tr>
								<td style="align:center"><a href="#"><i class="fa fa-home fa-2x" style="color:white"></i></td>
								<td style="align:center"><a href="#"><i class="fa fa-user-alt fa-2x" style="color:white"></i></td>
								<td style="align:center"><a href="#"><i class="fa fa-clogs fa-2x" style="color:white"></i></td>
								<td class="lg2"><a href="/IoMS/jsp/SchoolLoginJSP.jsp" id="lk">logout</td>
							<tr>
						</table>
					</div>-->
			
			<div class="hd3">
				<span class="textanim">Lighten To Enlighten Others</span>
			</div>
            
			<div class="hd2" id="mainwork">
                            
    <%
    ps3=con.prepareStatement("update student set name=?,achisport=?,achiacadamics=?,termIper=?,termIIper=? where adhaarno=?");
    ps3.setString(1,request.getParameter("nm"));
    ps3.setString(2,request.getParameter("ais"));
    ps3.setString(3,request.getParameter("aia"));
    ps3.setString(4,request.getParameter("peri"));
    ps3.setString(5,request.getParameter("perii"));
    ps3.setString(6,request.getParameter("s"));
    ps3.executeUpdate();
    
    %><center><h5 style="font-size:50px;color:#ff4d88;">Students Data Successfully Updated</br><h5></center>
    <a href="/IoMS/jsp/ClassTeacherJSP.jsp" class="stadd" style="text-decoration:none;text-align:center;background:#ff1a1a">OK!</a>
    <%%>
    		
			</div>
			
			<div class="hd4">
				<div class="hd5">
		<div class="boxhov" style="border-color:#b30059">			
                    <div class="pic" style="background:#b30059;">
                        <a href="#wh"  onclick="task24('Delete')"><i class="fa fa-search"></i></a>
                    </div>
                    <div class="boxcont">
			<h3>Delete student's data left class</h3>
                    </div>
		</div>
				
		<div class="boxhov" style="border-color:#336600">
                    <div class="pic" style="background:#336600">
			<i class="fa fa-map-marker"></i>
                    </div>
                    <div class="boxcont">
			<h3>Guidelines to use the portal</h3>
                    </div>
		</div>
		<div class="boxhov" style="border-color:#006666">
                    <div class="pic" style="background:#006666">
                        <%
                        ps3=con.prepareStatement("select count(*) from student where school=? and class=? and section=?");
                        ps3.setString(1,id);
                        ps3.setString(2,clas);
                        ps3.setString(3,sect);
                        rs3=ps3.executeQuery();
                        rs3.next();
                        %>
                        <center><h3><%=rs3.getString("count(*)")%></h3></center>
                        <a href="#wh" onclick="task24('NoStu')"><i class="fa fa-map-marker"></i></a>
                    </div>
                    <div class="boxcont">
			<h3>Total number of Students in Class</h3>
                    </div>
		</div>
		<div class="boxhov" style="border-color:#4d0026">
                    <div class="pic" style="background:#4d0026">
			<i class="fa fa-search"></i>
                    </div>
                    <div class="boxcont">
			<h3>Give your Feedback</h3>
                    </div>
		</div>
            </div>
				<div class="hd6">
				
				</div>
			</div>
			<div class="hd7">
				CopyRigths Reserved
			</div>
		</div>
		<script>
		window.onscroll = function() {myFunction()};

		var hd1 = document.getElementById("hd1");
		var sticky = hd1.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				hd1.classList.add("sticky")
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