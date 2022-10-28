<%@page import="java.sql.*"%>

<html>
<body>

<%
int i,no;
String n;
n=request.getParameter("num1");
String ctid;
        
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        
        Connection con;
        PreparedStatement ps2;
        
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps2=con.prepareStatement("update user set students=? where userid=?");
            ps2.setString(1,n);
            ps2.setString(2,ctid);
            ps2.executeUpdate();
                
               
                    response.sendRedirect("/IoMS/jsp/ClassTeacherJSP1.jsp?a=0");
                
%><%
%>

</body>
<%
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
</html>