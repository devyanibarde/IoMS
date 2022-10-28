<%@page import="java.sql.*"%>

<html>
<body>

<h2 style="margin-left:50px;color:#120707">Manage Classes:</h2>
                </br>

<div class="topnav">
    <a class="active" href="#" onclick="task('MC')">Manage Sections</a>
    <a href="#" onclick="task('AT')">Manage Teachers</a>
</div>
</br>

 <%
        String id;
        
        id=String.valueOf(session.getAttribute("ID"));
        
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from ClassData where SchID=?");
			ps.setString(1,id);
			rs=ps.executeQuery();
			
            if(rs.next())
            {
%>

<div>
    
    
    <table class="details">
        <tr>
            <td>
                Class
            </td>
            
            <td>
                Number of Sections
            </td>
        </tr>
        
        <tr>
            <td>
                I
            </td>
            
            <td>
                <%out.println(rs.getString("SecI"));%>
            </td>
        </tr>
        
        <tr>
            <td>
                II
            </td>
            
            <td>
                <%out.println(rs.getString("SecII"));%>
            </td>
        </tr>
        
        <tr>
            <td>
                III
            </td>
            
            <td>
                <%out.println(rs.getString("SecIII"));%>
            </td>
        </tr>
        
        <tr>
            <td>
                IV
            </td>
            
            <td>
                <%out.println(rs.getString("SecIV"));%>
            </td>
        </tr>
        
        <tr>
            <td>
                V
            </td>
            
            <td>
                <%out.println(rs.getString("SecV"));%>
            </td>
        </tr>
        
    </table> 
    
    
    
    
    
</div>

<%
            }
            else
            {
%>
<div>
    
    <form name="formm" method="post" action="/IoMS/jsp/MC1.jsp">
    <table class="details" width="100%">
        <tr>
            <td>
                Class
            </td>
            
            <td>
                Number of Sections
            </td>
        </tr>
        
        <tr>
            <td>
                I
            </td>
            
            <td>
                <input type="text" name="I" id="i" autocomplete="off" required>
            </td>
        </tr>
        
        <tr>
            <td>
                II
            </td>
            
            <td>
                <input type="text" name="II" id="ii" autocomplete="off" required>
            </td>
        </tr>
        
        <tr>
            <td>
                III
            </td>
            
            <td>
                <input type="text" name="III" id="iii" autocomplete="off" required>
            </td>
        </tr>
        
        <tr>
            <td>
                IV
            </td>
            
            <td>
                <input type="text" name="IV" id="iv" autocomplete="off" required>
            </td>
        </tr>
        
        <tr>
            <td>
                V
            </td>
            
            <td>
                <input type="text" name="V" id="v" autocomplete="off" required>
            </td>
        </tr>
        
    </table> 
    <center><input type="submit" class="taskbutton22" value="Done!"></center>
    </form>
    
    
    
</div>
<%
            }
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