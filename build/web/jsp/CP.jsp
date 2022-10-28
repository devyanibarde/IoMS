<%-- 
    Document   : CP
    Created on : 24 Mar, 2019, 7:46:37 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        String msg="";
        msg=request.getParameter("msg");
        %>
        <center><h1 style="color: white;text-shadow:black 10px 10px 10px;">Change Password</h1></center>
        <form name="frm" method="post" action="/IoMS/jsp/CP1.jsp?msg=<%=msg%>">				
        <div class="hrzline">
            Current Password<input type="text" name="curr" autocomplete="off">
            
        </div>
            <input class="stadd" type="submit" name="sub" value="Submit">
        </form>
        
    </body>
</html>
