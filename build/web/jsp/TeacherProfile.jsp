<%-- 
    Document   : TeacherProfile
    Created on : 25 Mar, 2019, 2:13:25 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        String id,ctid;
        
        id=String.valueOf(session.getAttribute("ID"));
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from user where UserID=?");
            ps.setString(1, ctid);
            rs=ps.executeQuery();
            rs.next();
            %>
            <h3 style="font-size:30px">Student Details</h3>
            <table style="color: white;font-size:25px">
                <tr>
                    <td>Name:</td>
                    <td><%=rs.getString("name")%></td>
                </tr>
                <tr>
                    <td>Mobile Number:</td>
                    <td><%=rs.getString("mobileno")%></td>
                </tr>
                <tr>
                    <td>E-Mail:</td>
                    <td><%=rs.getString("email")%></td>
                </tr>
            </table>
            <%
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
        
    </body>
</html>
