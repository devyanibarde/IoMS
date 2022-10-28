<%-- 
    Document   : NoStu
    Created on : 20 Mar, 2019, 11:42:08 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <%
        String id,ctid,clas,sect;
        int i,num;
        
        id=String.valueOf(session.getAttribute("ID"));
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        Connection con;
        PreparedStatement ps,ps1,ps3;
        ResultSet rs,rs1,rs3;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from user where UserID=?");
            ps.setString(1,ctid);
            rs=ps.executeQuery();
            rs.next();
            
            clas=rs.getString("class");
            sect=rs.getString("section");
            
            ps1=con.prepareStatement("select * from student where school=? and class=? and section=?");
            ps1.setString(1,id);
            ps1.setString(2,clas);
            ps1.setString(3,sect);
            rs1=ps1.executeQuery();
            rs1.next();
            
            ps3=con.prepareStatement("select count(*) from student where school=? and class=? and section=?");
            ps3.setString(1,id);
            ps3.setString(2,clas);
            ps3.setString(3,sect);
            rs3=ps3.executeQuery();
            rs3.next();
            num=Integer.parseInt(rs3.getString("count(*)"));
    %>
    <h3 style="font-size:30px">Student Details</h3>
    <table style="color: white;font-size:15px" border="1px solid white">
        <tr>
            <td>Serial Number</td>
            <td>Adhaar Number</td>
            <td>Name</td>
            
            <td>Achievements in Sports</td>
            <td>Achievements in Academics</td>
            <td>Term I Percentage</td>
            <td>Term II Percentage</td>
        </tr>
        <%
        for(i=0;i<num;i++)
        {%>
        <tr>
            <td><%=(i+1)%></td>
            <td><%=rs1.getString("adhaarno")%></td>
            <td><%=rs1.getString("name")%></td>
            
            <td><%=rs1.getString("achisport")%></td>
            <td><%=rs1.getString("achiacadamics")%></td>
            <td><%=rs1.getString("termIper")%></td>
            <td><%=rs1.getString("termIIper")%></td>
        </tr><%rs1.next();   
        }
        %>
    </table>
    <%
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
</html>
