<%@page import="java.sql.*"%>
<%@ page import = "java.io.*,java.util.*" %>


<%
    String logasd,passd,id,ctid;
    logasd=request.getParameter("logas");
    passd=request.getParameter("pass");
    
    Connection con;
	PreparedStatement ps,ps1;
	ResultSet rs;
    
    id=String.valueOf(session.getAttribute("ID"));
    
    try
    {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
		
        
        if(logasd.equals("HM"))
        {
            ps=con.prepareStatement("select * from usersecurity where UserID=? and Password=?");
            ps.setString(1,id+"HM");
            ps.setString(2,passd);
		
            rs=ps.executeQuery();
            if(rs.next()==false)
            {
            
                response.sendRedirect("/IoMS/jsp/InvalidLoginJSP.jsp");
                return;
    
            }
            else
            {
               response.sendRedirect("/IoMS/jsp/PrincipalHomeJSP.jsp");
            }
        }
        else if(logasd.equals("CT"))
        {
            ps=con.prepareStatement("select * from usersecurity where school=? and Password=?");
            ps.setString(1,id);
            ps.setString(2,passd);
		
            rs=ps.executeQuery();
            
            if(rs.next()==false)
            {
             
                response.sendRedirect("/IoMS/jsp/InvalidLoginJSP.jsp");
                return;
    
            }
            else
            {
               ctid=rs.getString("UserID");
               session.setAttribute("CTID",ctid);
                
               response.sendRedirect("/IoMS/jsp/ClassTeacherJSP.jsp");
            }
        }

				
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
