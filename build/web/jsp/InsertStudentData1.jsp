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
				
                                
			</style>
		
	</head>
	<body>
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
                            
                           <%ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,request.getParameter("adn"));
    ps.setString(2,id);
    ps.setString(3,clas);
    ps.setString(4,sect);
    ps.setString(5,request.getParameter("nm"));
    ps.setString(6,request.getParameter("ais"));
    ps.setString(7,request.getParameter("aia"));
    ps.setString(8,request.getParameter("peri"));
    ps.setString(9,request.getParameter("perii"));
    
	ps.setString(10,request.getParameter("lvl"));
    ps.executeUpdate();
    
    ps=con.prepareStatement("update user set students=students+1 where class=? and section=?");
    ps.setString(1, clas);
    ps.setString(2, sect);
    ps.executeUpdate();
    %><h5 style="color:#ff4d4d;font-size:50px;">Students Data Successfully Submitted<h5></br>
    <center><a href="/IoMS/jsp/ClassTeacherJSP.jsp" class="stadd" style="float:right;font-size:15px;margin-top:38px;font-size:35px;margin-bottom:40px;background:#e60073;text-decoration:none;text-align:center;">OK!</a></center>
    
    
				
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