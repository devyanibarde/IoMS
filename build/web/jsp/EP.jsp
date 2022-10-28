<%-- 
    Document   : EP
    Created on : 24 Mar, 2019, 7:46:12 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
        <center><h1 style="color: white;text-shadow:black 10px 10px 10px;">Edit Profile</h1></center>
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
            
            ps=con.prepareStatement("select name,mobileno,email from user where UserID=?");
            if(q==1)
            {
            ps.setString(1, id+"HM");
            }
            else if(q==2)
            {
            ps.setString(1, ctid);    
            }
            rs=ps.executeQuery();
            rs.next();
        %>
        <form name="frm" method="post" action="/IoMS/jsp/EP1.jsp?q=<%=q%>" style="color: white;font-size: 20px">				
        <div class="hrzline">
             Name<input type="text" name="name" value="<%=rs.getString("name")%>" autocomplete="off">
           
        </div>
        <div class="hrzline">
           Mobile Number <input type="text" name="mobo" value="<%=rs.getString("mobileno")%>" autocomplete="off">
            
        </div>
        <div class="hrzline">
            E-Mail<input type="text" name="email" value="<%=rs.getString("email")%>" autocomplete="off">
            
        </div>
        <input class="stadd" type="submit" name="sub" value="Submit">
        </form>
        <%
        }
        catch(Exception e)
{
    out.println(e);
}
        %>
    </body>
</html>
