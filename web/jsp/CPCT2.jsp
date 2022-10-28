<%-- 
    Document   : CP2
    Created on : 24 Mar, 2019, 8:57:34 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    
    <body>
        <%
        String ctid,msg;
            
        ctid=String.valueOf(session.getAttribute("CTID"));
            
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("update usersecurity set Password=? where UserID=?");
            ps.setString(1, request.getParameter("new"));
            
            ps.setString(2, ctid);
            ps.executeUpdate();
            
            response.sendRedirect("/IoMS/jsp/CPCT1.jsp?msg=abc");
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
    </body>
</html>
