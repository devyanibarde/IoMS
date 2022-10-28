<%-- 
    Document   : RS
    Created on : 23 Mar, 2019, 10:43:37 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <body>
        <%
        String q,id;
        
        q=request.getParameter("q");
        id=String.valueOf(session.getAttribute("ID"));
            
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            if(q.equalsIgnoreCase("1"))
            {
                //principal
                ps=con.prepareStatement("select * from mails where (receivertype=? or receivertype is null) and (receiver=? or receiver is null)");
                ps.setString(1, "HM");
                ps.setString(2, id);
                rs=ps.executeQuery();
                
                while(rs.next())
                {
                    %>
                    <div class="rmailshm">
                        <%
                        if(rs.getString("class")==null && rs.getString("numofstu")==null && rs.getString("type3")==null)
                        {
                            //no attachment
                            %>
                            Respected Principal&#x2C</br>
                            <%=rs.getString("body")%></br>
                            Regards Admin
                            <%
                        }
                        else
                        {
                            //attachment
                            %>
                            Respected Principal&#x2C</br>
                            <%=rs.getString("body")%></br>
                            Find the attached document here-
                            <a href="/IoMS/jsp/Attachment.jsp?c=<%=rs.getString("class")%>&n=<%=rs.getString("numofstu")%>&b=<%=rs.getString("type3")%>"><i class="fa fa-file-text" aria-hidden="true" style="color: white"></i></a></br>
                            Regards Admin
                            <%
                        }
                        %>
                    </div>
                    <%
                }
            }
            else if(q.equals("2"))
            {
                //Class Teacher
                ps=con.prepareStatement("select * from mails where (receivertype=? or receivertype is null) and (receiver=? or receiver is null)");
                ps.setString(1, "CT");
                ps.setString(2, id);
                rs=ps.executeQuery();
                
                while(rs.next())
                {
                    %>
                    <div class="rmailsct">
                        <%
                        if(rs.getString("class")==null && rs.getString("numofstu")==null && rs.getString("type3")==null)
                        {
                            //no attachment
                            %>
                            Respected Class Teacher&#x2C</br>
                            <%=rs.getString("body")%></br>
                            Regards Admin
                            <%
                        }
                        else
                        {
                            //attachment
                            %>
                            Respected Class Teacher&#x2C</br>
                            <%=rs.getString("body")%></br>
                            Find the attached document here-
                            <a href="/IoMS/jsp/Attachment.jsp?c=<%=rs.getString("class")%>&n=<%=rs.getString("numofstu")%>&b=<%=rs.getString("type3")%>"><i class="fa fa-file-text" aria-hidden="true" style="color: white"></i></a></br>
                            Regards Admin
                            <%
                        }
                        %>
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
