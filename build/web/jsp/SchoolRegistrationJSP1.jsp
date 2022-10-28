<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>

<html>
    <head>
        <title>IoMS</title>
        <link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body class="schregback">
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
				</div></div></div>	
                <%
                
                
                
                String schnmd,schtyped,orgnmd,medd,boardd,staddd,add2d,cityd,stated,pind,emaild,mobd,udd,pswd,secqued,answerd,prinmd,schID,userID,c,dd="00000";
            int no,no1,no2,counter,i,j;
            
            Connection con;
			PreparedStatement ps,ps1,ps2;
            ResultSet rs;
            
            schnmd=request.getParameter("schnm");
            prinmd=request.getParameter("prinm");
            schtyped=request.getParameter("schtype");
            orgnmd=request.getParameter("orgnm");
            medd=request.getParameter("med");
            boardd=request.getParameter("board");
            staddd=request.getParameter("stadd");
            add2d=request.getParameter("add2");
            cityd=request.getParameter("city");
            stated=request.getParameter("state");
            pind=request.getParameter("pin");
            emaild=request.getParameter("email");
            mobd=request.getParameter("mob");
            udd=request.getParameter("ud");
            pswd=request.getParameter("psw");
            secqued=request.getParameter("secque");
            answerd=request.getParameter("answer");
            
            try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
                
                ps1=con.prepareStatement("select count(*) from school;");
                rs=ps1.executeQuery();
                rs.next();
                counter=Integer.parseInt(rs.getString("Count(*)"));
                c=Integer.toHexString(counter);
                i=5-c.length();
                for(j=0;j<i;j++)
                {
                    dd="0"+c;
                }
                schID=schtyped+boardd+medd+dd;
                
                
                ps=con.prepareStatement("insert into school(SchoolID,SchoolName,SchoolType,OrgName,StudyMedium,StudyBoard,UDISENo,StreetAddr,Addr2,City,State,PinCode) values(?,?,?,?,?,?,?,?,?,?,?,?);");
                ps.setString(1,schID);
                ps.setString(2,schnmd);
                ps.setString(3,schtyped);
                ps.setString(4,orgnmd);
                ps.setString(5,medd);
                ps.setString(6,boardd);
                ps.setString(7,udd);
                ps.setString(8,staddd);
                ps.setString(9,add2d);
                ps.setString(10,cityd);
                ps.setString(11,stated);
                ps.setString(12,pind);
                no=ps.executeUpdate();
                
                userID=schID+"HM";
                
                ps=con.prepareStatement("insert into user(UserID,UserType,email,mobileno,name) values(?,?,?,?,?);");
                ps.setString(1,userID);
                ps.setString(2,"HM");
                ps.setString(3,emaild);
                ps.setString(4,mobd);
                ps.setString(5,prinmd);
                no1=ps.executeUpdate();
                
                 ps=con.prepareStatement("insert into usersecurity(UserID,Password,que,ans) values(?,?,?,?);");
                ps.setString(1,userID);
                ps.setString(2,pswd);
                ps.setString(3,secqued);
                ps.setString(4,answerd);
                no2=ps.executeUpdate();
                
                
        %>
                
                %>
                <div class="schlog">
		<i><center><h1>Registration Successful</h1></center>
        
        <h2>
                School ID:&nbsp;<%=schID%></br>
        </h2>
         
        <a href="/IoMS/html/SchoolLoginHTML.html"><button type="button" class="but">Login</button></a>
        </i>
				<%
            session.invalidate();
            }
			catch(Exception e)
			{
				if((e.getMessage()).equals("Duplicate entry '"+schnmd+"' for key 'PRIMARY'"))
				{
					%><h3><%=schnmd%> is already registered.</h3><%
				}
				else
				{
					out.println(e.getMessage());
				}
			}
        %>			
		</div>	
				
		
                
                </body>
</html>
				
			
		
		