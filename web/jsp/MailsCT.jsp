<%-- 
    Document   : MailsCT
    Created on : 25 Mar, 2019, 2:04:19 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
        <center><div class="admin-grid-txt">
            Mails From Class Teachers 
        </div></center>
        <%
        Connection con;
        PreparedStatement ps,ps1,ps2;
        ResultSet rs,rs1,rs2;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from mails where receiver=?");
            ps.setString(1, "admin");
            rs=ps.executeQuery();
            
            while(rs.next())
            {
                ps1=con.prepareStatement("select * from user where UserID=?");
                ps1.setString(1, rs.getString("sender"));
                rs1=ps1.executeQuery();
                rs1.next();
                if(rs1.getString("UserType").equals("CT"))
                {
                    %>
                    <div class="rmailsct">
                        Respected Admin&#x2C</br>
                        <%=rs.getString("body")%></br>
                        Regards Class Teacher</br>
                        <%
                        ps2=con.prepareStatement("select SchoolName from school where SchoolID=?");
                        ps2.setString(1, rs1.getString("school"));
                        rs2=ps2.executeQuery();
                        rs2.next();
                        %>
                        <%=rs2.getString("SchoolName")%></br>
                        Class <%=rs1.getString("class")%> 
                        Section <%=rs1.getString("section")%>
                    </div>
                    <%
                }
            }
            
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
    </body>
</html>
