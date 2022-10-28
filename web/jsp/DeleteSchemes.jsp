<%-- 
    Document   : DeleteSchemes
    Created on : 23 Mar, 2019, 5:49:38 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        String nm;
        int no;
        nm=request.getParameter("q");
            
        Connection con;
	PreparedStatement ps;
	
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("delete from schemes where name=?");
            ps.setString(1, nm);
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
