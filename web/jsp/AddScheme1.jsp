<%-- 
    Document   : AddScheme1
    Created on : 23 Mar, 2019, 6:30:32 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        
        int no;
        
            
        Connection con;
	PreparedStatement ps;
	
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("insert into schemes values(?,?)");
            ps.setString(1, request.getParameter("name"));
            ps.setString(2, request.getParameter("link"));
            no=ps.executeUpdate();
            
            if(no==1)
            {
                response.sendRedirect("/IoMS/jsp/OnGoingUpdate.jsp");
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
    </body>
</html>
