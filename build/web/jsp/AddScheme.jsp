<%-- 
    Document   : AddScheme
    Created on : 23 Mar, 2019, 5:57:09 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <body>
    
        <form method="post" action="/IoMS/jsp/AddScheme1.jsp">
            <table class="details">
                <tr>
                    <td><input type="text" name="name" placeholder="Scheme Name"></td>
                    <td><input type="text" name="link" placeholder="Link"></td>
                    <td><input class="stadd" style="background-color: palegreen;width: 60px;color: maroon;font-weight: bold" type="submit" value="ADD"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
