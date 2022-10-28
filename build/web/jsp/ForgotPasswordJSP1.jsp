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
        
            String id,ans,ut;
			int no;
			id=String.valueOf(session.getAttribute("ID"));
			ans=request.getParameter("answer");
			ut=String.valueOf(session.getAttribute("UT"));
            
			Connection con;
			PreparedStatement ps,ps1;
			ResultSet rs;
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
		
				ps=con.prepareStatement("select * from usersecurity where UserID=?");
				ps.setString(1,id+ut);
		
				rs=ps.executeQuery();
				rs.next();
				if(ans.equals(rs.getString("ans")))
				{
					ps1=con.prepareStatement("update usersecurity set Password=? where UserID=?");
					ps1.setString(1,session.getId().substring(2,9));
					ps1.setString(2,id+ut);
					no=ps1.executeUpdate();
					if(no==1)
					{
						%>
                        <div class="schlog">
                            </br>
                            </br>
                            </br>
                            </br>
                            <i><b><center><h2>
                            Your new password is&nbsp;
                        <%
						out.print(session.getId().substring(2,9));
                        %>
                        </br></br>
                       <a href="/IoMS/html/SchoolLoginHTML.html"><button type="button" class="but">Login</button></a>
                        <%
					}
					else
					{
						%>Process Failed<%
					}
				}
				else
				{
					%>Sorry Authentication Failed
                     </h2></center></b></i>
                     
                     </div>
                    <%
				}
			}
			catch(Exception e)
			{
				out.println(e);
			}
		%>
	</body>
</html>