<%-- 
    Document   : TopAca
    Created on : 22 Mar, 2019, 2:38:14 PM
    Author     : Dell
--%>


<%@page import="java.sql.*"%>
<html>
    <body>
        
        
    <%
        String clas,b,c="",d="";
        int num,i;
        
        
        
        
        Connection con;
	PreparedStatement ps,ps1;
	ResultSet rs,rs1;
        
        try
        {
            clas=request.getParameter("z");
        num=Integer.parseInt(request.getParameter("w"));
        b=request.getParameter("a");
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            %><h1 style="color:#e6ccff;">List of Top <%=num%> Students of Class <%=clas%></h1><%
            
            if(b.equals("4"))
            {
                ps=con.prepareStatement("select adhaarno,name,school,achisport from student where class=? and sportslevel='interschool' limit ?");
                ps.setString(1,clas);
                ps.setInt(2,num);
                rs=ps.executeQuery();
                rs.next(); 
                
            }
            else if(b.equals("5"))
            {
                ps=con.prepareStatement("select adhaarno,name,school,achisport from student where class=? and sportslevel='district' limit ?");
                ps.setString(1,clas);
                ps.setInt(2,num);
                rs=ps.executeQuery();
                rs.next(); 
                
            }
            else
            {
                ps=con.prepareStatement("select adhaarno,name,school,achisport from student where class=? and sportslevel='state' limit ?");
                ps.setString(1,clas);
                ps.setInt(2,num);
                rs=ps.executeQuery();
                rs.next(); 
                
            }
%>
<table class="details">
                <tr>
                    <td>Serial Number</td>
                    <td>Name of Student</td>
                    <td>School</td>
                    <td>Sport</td>
                </tr>
                <%
                for(i=0;i<num;i++)
                {
                    %>
                    <tr>
                        <td><%=(i+1)%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%
                            ps1=con.prepareStatement("select SchoolName from school where SchoolID=?");
                            ps1.setString(1,rs.getString("school"));
                            rs1=ps1.executeQuery();
                            rs1.next(); 
                            %>
                            <%=rs1.getString("SchoolName")%>
                        </td>
                        <td><%=rs.getString("achisport")%></td>
                    </tr>
                    <%
                        rs.next();
                }
                %>
            </table>
                <a href="/IoMS/jsp/TopSportsPdf.jsp?clas=<%=clas%>&num=<%=num%>&b=<%=b%>"><button class="stadd">PDF of List</button></a>
                <a href="/IoMS/jsp/MailTop.jsp?q=2&clas=<%=clas%>&num=<%=num%>&b=<%=b%>"><button class="stadd">Mail the School</button></a>
            <%
            
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
</body>
<script>
     function show(x,y,z,w)
        {
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function()
            {
                if(this.readyState==4 && this.status==200)
                {
                    document.getElementById("Disp").innerHTML=this.responseText;
                }
            };
    
            xhttp.open("GET","/IoMS/jsp/"+x+".jsp?a="+y+"&z="+z+"&w="+w,true);
            xhttp.send();
    
        }
</script>
</html>
