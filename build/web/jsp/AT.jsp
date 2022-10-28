<%@page import="java.sql.*"%>

<h2 style="margin-left:50px;color:#120707"">Manage Classes:</h2>
                </br>

<div class="topnav">
    <a href="#" onclick="task('MC')">Manage Sections</a>
    <a class="active" href="#" onclick="task('AT')">Manage Teachers</a>
</div>

<%
        String id,sec;
        int c1,c2,c3,c4,c5,i,j,no=0;
        
        id=String.valueOf(session.getAttribute("ID"));
        
        Connection con;
        PreparedStatement ps,ps1;
        ResultSet rs,rs1;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from ClassData where SchID=?");
			ps.setString(1,id);
			rs=ps.executeQuery();
            
            
            
%>

<div>
<%
if(!rs.next())
{
    %></br></br><center><a href="#" onclick="task('MC')"><button type="button" class="taskbutton22">Add Sections</button></a></center><%
}
else
{
    c1=Integer.parseInt(rs.getString("SecI"));
    c2=Integer.parseInt(rs.getString("SecII"));
    c3=Integer.parseInt(rs.getString("SecIII"));
    c4=Integer.parseInt(rs.getString("SecIV"));
    c5=Integer.parseInt(rs.getString("SecV"));
%>
<form name="formm" method="post" action="/IoMS/jsp/AT1.jsp">
    <table class="details" border="1px">
        <tr>
            <td>
                Class
            </td>
            <td>
                Section
            </td>
            <td>
                Name of Class Teacher
            </td>
        </tr>
        <%for(i=0;i<(c1+c2+c3+c4+c5);i++)
        {
            %><tr>
                <%if(i==0)
                {
                    %><td rowspan="<%=c1%>">I</td>
                    <td>A</td>
                    <td>
                        <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"1");
                        ps1.setString(3,"A");
                        ps1.setString(4,id+"CTA1");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %><input type="text" name="A1" autocomplete="off" required><%no=1;
                        }
                        %>
                    </td><%
                }
                else if(i==c1)
                {
                    %><td rowspan="<%=c2%>">II</td>
                    <td>A</td>
                    <td>
                    <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"2");
                        ps1.setString(3,"A");
                        ps1.setString(4,id+"CTA2");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %><input type="text" name="A2" autocomplete="off" required><%no=1;
                        }
                        %>
                    </td>
                    <%
                }
                else if(i==(c1+c2))
                {
                    %><td rowspan="<%=c3%>">III</td>
                    <td>A</td>
                    <td>
                    <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"3");
                        ps1.setString(3,"A");
                        ps1.setString(4,id+"CTA3");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                            <input type="text" name="A3" autocomplete="off" required><%no=1;
                        }%>
                    </td><%
                }
                else if(i==(c1+c2+c3))
                {
                    %><td rowspan="<%=c4%>">IV</td>
                    <td>A</td>
                    <td>
                    <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"4");
                        ps1.setString(3,"A");
                        ps1.setString(4,id+"CTA4");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                    <input type="text" name="A4" autocomplete="off" required>
                    <%no=1;
                    }%></td><%
                }
                else if(i==(c1+c2+c3+c4))
                {
                    %><td rowspan="<%=c5%>">V</td>
                    <td>A</td>
                    <td>
                    <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"5");
                        ps1.setString(3,"A");
                        ps1.setString(4,id+"CTA5");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                    <input type="text" name="A5" autocomplete="off" required>
                    <%no=1;}%>
                    </td><%
                }
                else
                {
                    %>
                    <%
                    if(i<c1)
                    {
                        sec=String.valueOf(Character.toChars(65+i));
                        %><td><%out.println(sec);%></td>
                        <td>
                        <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"1");
                        ps1.setString(3,sec);
                        ps1.setString(4,id+"CT"+sec+"1");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                        <input type="text" name="<%=sec%>1" autocomplete="off" required>
                        <%no=1;}%>
                        </td><%
                    }
                    else if(i<(c1+c2))
                    {
                        sec=String.valueOf(Character.toChars(65+(i-c1)));
                        %><td><%out.println(sec);%></td>
                        <td>
                        <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"2");
                        ps1.setString(3,sec);
                        ps1.setString(4,id+"CT"+sec+"2");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                        <input type="text" name="<%=sec%>2" autocomplete="off" required>
                        <%no=1;}%></td><%
                    }
                    else if(i<(c1+c2+c3))
                    {
                        sec=String.valueOf(Character.toChars(65+(i-c1-c2)));
                        %><td><%out.println(sec);%></td>
                        <td>
                        <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"3");
                        ps1.setString(3,sec);
                        ps1.setString(4,id+"CT"+sec+"3");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                        <input type="text" name="<%=sec%>3" autocomplete="off" required>
                        <%no=1;}%></td><%
                    }
                    else if(i<(c1+c2+c3+c4))
                    {
                        sec=String.valueOf(Character.toChars(65+(i-c1-c2-c3)));
                        %><td><%out.println(sec);%></td>
                        <td>
                        <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"4");
                        ps1.setString(3,sec);
                        ps1.setString(4,id+"CT"+sec+"4");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                        <input type="text" name="<%=sec%>4" autocomplete="off" required>
                        <%no=1;}%></td><%
                    }
                    else
                    {
                        sec=String.valueOf(Character.toChars(65+(i-c1-c2-c3-c4)));
                        %><td><%out.println(sec);%></td>
                        <td>
                        <%
                        ps1=con.prepareStatement("select * from user where UserType=? and class=? and section=? and UserID=?");
                        ps1.setString(1,"CT");
                        ps1.setString(2,"5");
                        ps1.setString(3,sec);
                        ps1.setString(4,id+"CT"+sec+"5");
                        rs1=ps1.executeQuery();
                        if(rs1.next())
                        {
                            out.println(rs1.getString("name"));
                        }
                        else
                        {
                            %>
                        <input type="text" name="<%=sec%>5" autocomplete="off" required>
                        <%no=1;}%></td><%
                    }
                    %>
                    <%
                }%>
            </tr><%
        }%>
    </table>
    <%
    if(no==1)
    {
    %>
<center><input type="submit" class="taskbutton22" value="Done!"></center>
</form>
<%
}
else
{
%>
<center><a href="/IoMS/jsp/View.jsp"><button type="button" class="taskbutton22">View List of Passwords</button></a></center>
<%
}
%>

<%}%>
</div>

<%
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>