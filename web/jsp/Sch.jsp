<%-- 
    Document   : Sch
    Created on : 24 Mar, 2019, 9:54:55 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    
    <body>
        <i><h2>Ongoing Schemes:</h2>
            <%
        Connection con;
	PreparedStatement ps;
	ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            int i=1;
            ps=con.prepareStatement("select * from schemes");
            rs=ps.executeQuery();
            %><h1><%
            if(rs.next())
            {
                %><%=i%>.<a href="<%=rs.getString("link")%>" style="color: white;text-decoration: none"><%=rs.getString("name")%></a></br><%
                    i++;
                while(rs.next())
                {
                    %><%=i%>.<a href="<%=rs.getString("link")%>" style="color: white;text-decoration: none"><%=rs.getString("name")%></a></br><%
                        i++;
                }
}%></h1><%
        }
        catch(Exception e)
        {
            out.println(e);
        }
                        %>
        </i>
    </body>
</html>
