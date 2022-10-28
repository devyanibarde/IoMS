<%@page import="java.sql.*"%>
<html>
    <head>
        <title>IoMS</title>
        <link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body class="schlogback">
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
        
        
        <%
			String schoolidd,UserT;
			
			schoolidd=request.getParameter("schoolid");
            UserT=request.getParameter("UT");
			
			session.setAttribute("ID",schoolidd);
            session.setAttribute("UT",UserT);
			
			Connection con;
			PreparedStatement ps;
			ResultSet rs;
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
		
				ps=con.prepareStatement("select * from usersecurity where UserID=?");
				ps.setString(1,schoolidd+UserT);
		
				rs=ps.executeQuery();
				
				rs.next();
			
		%>
		
		<div class="schlog">
		
				</br></br></br>			
			<form name="frm" method="post" action="/IoMS/jsp/ForgotPasswordJSP1.jsp">
				<div class="hrzline">
					<%out.print(rs.getString("que"));%>
				</div></br>
				<div class="hrzline">
					<input type="text" name="answer" autocomplete="off" required>
					<label>Answer</label>
				</div>
				
					<input class="but" type="submit" name="sub" value="Submit">
				
				
				
			</form>
	</div>
    
		<%
			}
			catch(Exception e)
			{
				out.println(e);
			}
		%>
	</body>
</html>