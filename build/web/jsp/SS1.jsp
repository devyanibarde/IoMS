<%-- 
    Document   : EP1
    Created on : 24 Mar, 2019, 8:04:03 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    
    <body>
        <%
        String id="",ctid="";
            int q;
            q=Integer.parseInt(request.getParameter("q"));
            
            if(q==1)
            {
                id=String.valueOf(session.getAttribute("ID"));
                
            }
            else if(q==2)
            {
                ctid=String.valueOf(session.getAttribute("CTID"));
            }
            
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("update usersecurity set que=?,ans=? where UserID=?");
            ps.setString(1, request.getParameter("secque"));
            ps.setString(2, request.getParameter("ans"));
            
           if(q==1)
            {
            ps.setString(3, id+"HM");
            }
            else if(q==2)
            {
            ps.setString(3, ctid);    
            }
            ps.executeUpdate();
            if(q==1)
            {
            response.sendRedirect("/IoMS/jsp/PrincipalHomeJSP.jsp");
            }
            else if(q==2)
            {
                response.sendRedirect("/IoMS/jsp/ClassTeacherJSP.jsp");
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
    </body>
</html>
