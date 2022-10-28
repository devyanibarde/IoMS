<%-- 
    Document   : MailsHM
    Created on : 25 Mar, 2019, 2:04:45 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
        <center><div class="admin-grid-txt">
            Mails from Principals 
        </div></center>
        <%
        String sen;
        int l;
            
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
                sen=rs.getString("sender");
                ps1=con.prepareStatement("select * from user where UserID=?");
                ps1.setString(1, sen);
                rs1=ps1.executeQuery();
                rs1.next();
                if(rs1.getString("UserType").equals("HM"))
                {
                    l=sen.length();
                    %>
                    <div class="rmailsct">
                        Respected Admin&#x2C</br>
                        <%=rs.getString("body")%></br>
                        Regards Principal</br>
                        <%
                        ps2=con.prepareStatement("select SchoolName from school where SchoolID=?");
                        ps2.setString(1, sen.substring(0, (l-2)));
                        rs2=ps2.executeQuery();
                        rs2.next();
                        %>
                        <%=rs2.getString("SchoolName")%></br>
                        
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
