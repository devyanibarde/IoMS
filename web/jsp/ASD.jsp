<%@page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
</head>
<body>

<center><h2 style="color:#ff9999">Add Students Data</h2></center>
</br>

<div id="here">
<%
        String ctid;
        int n,i;
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select students from user where UserID=?");
			ps.setString(1,ctid);
			rs=ps.executeQuery();
			rs.next();
            
%>
    <form name="Form23" method="post" action="/IoMS/jsp/AddStu.jsp">
		<div class="hrzline">
			<input id="numstu" type="text" name="num1" autocomplete="off" required>
			<label>Number of students</label>
		</div>
        
        <input class="stadd" type="submit" value="Go!" style="float:right;font-size:15px;margin-top:38px;font-size:35px;">
    </form>
	<a href="/IoMS/jsp/ClassTeacherJSP.jsp" class="stadd" style="background:#ff944d;float:left;text-decoration:none;font-size:35px;text-align:center;background:#004d4d">Back</a>
<%
            
            
%><%
            
%>
</div>



</body>
<%
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
</html>