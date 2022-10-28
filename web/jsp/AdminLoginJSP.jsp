<%@page import="java.sql.*"%>

<html>
    <head>
        <title>IoMS</title>
        <link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <%
	String adminid,passwordd;
	
	adminid=request.getParameter("aid");
	passwordd=request.getParameter("psw");
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
		
		ps=con.prepareStatement("select * from admin where AdminID=? and password=?");
		ps.setString(1,adminid);
		ps.setString(2,passwordd);
		
		rs=ps.executeQuery();
		
		if(rs.next()==false)
		{
			%>
            <body class="adminlogback">
    <div class="comp">
        <div class="header">
		
			<div class="header wrapper">
				
				<div class="logo">
					<h1><img src="/IoMS/images/logo1.png" width="45px" height="45px">Identification of Meritorious Students</h1>
				</div>
			
				<div class="navigation">
					<table width="100%">
						<tr>
							 <td style="text-align:center;"><a href="/IoMS/index.jsp"><button type="button" class="fa fa-home" id="home" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/SchoolRegistrationHTML.html"><button type="button" class="fa fa-file-text" id="regi" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/SchoolLoginHTML.html"><span></span><button type="button" class="fa fa-sign-in" id="log" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/AdminLoginHTML.html"><button type="button" class="fa fa-adn" id="adm" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
						</tr>
					</table>
				</div>
				
			</div>
		
		</div>
		
	<div class="schlog">
		<center><i><h1>Try Again!</h1></i></center>
							
			<form name="frm" method="post" action="/IoMS/jsp/AdminLoginJSP.jsp">
				<div class="hrzline">
					<input type="text" name="aid" autocomplete="off" required>
					<label>Admin Id</label>
				</div>
				<div class="hrzline">
					<input type="password" name="psw" required>
					<label>Password</label>
				</div>
				<br>
				<br>
				
					<input class="but" type="submit" name="sub" value="Login">
					<center><i style="color:red"><b>Invalid User ID or Password</b></i></center>		
			</form>
	</div>
            <%
		}
		else
		{
			session.setAttribute("ADMINID",adminid);
			response.sendRedirect("/IoMS/jsp/AdminHomePageJSP.jsp");
			%>
            
            <%
		}
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
				
%>
</html>