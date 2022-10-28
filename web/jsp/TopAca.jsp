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
            
            if(b.equals("1"))
            {
                ps=con.prepareStatement("select adhaarno,name,school,termIper from student where class=? order by termIper desc limit ?");
                ps.setString(1,clas);
                ps.setInt(2,num);
                rs=ps.executeQuery();
                rs.next(); 
                c="Term I";
                d="termIper";
                
            }
            else if(b.equals("2"))
            {
                ps=con.prepareStatement("select adhaarno,name,school,termIIper from student where class=? order by termIIper desc limit ?");
                ps.setString(1,clas);
                ps.setInt(2,num);
                rs=ps.executeQuery();
                rs.next(); 
                c="Term II";
                d="termIIper";

            }
            else
            {
                ps=con.prepareStatement("select adhaarno,name,school,((termIper+termIIper)/2) from student where class=? order by ((termIper+termIIper)/2) desc limit ?");
                ps.setString(1,clas);
                ps.setInt(2,num);
                rs=ps.executeQuery();
                rs.next(); 
                c="Average of Both Terms";
                d="((termIper+termIIper)/2)";

            }
%>
<table class="details">
                <tr>
                    <td>Serial Number</td>
                    <td>Name of Student</td>
                    <td>School</td>
                    <td><%=c%></td>
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
                        <td><%=rs.getString(d)%></td>
                    </tr>
                    <%
                        rs.next();
                }
                %>
            </table>
                <a href="/IoMS/jsp/TopAcademicsPdf.jsp?clas=<%=clas%>&num=<%=num%>&b=<%=b%>"><button class="stadd">PDF of List</button></a>
                <a href="/IoMS/jsp/MailTop.jsp?q=1&clas=<%=clas%>&num=<%=num%>&b=<%=b%>"><button class="stadd">Mail the School</button></a>
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
