<%@page import="java.sql.*"%>
<html>
<%
String id,ctid,cl,sec;
int n,i,no;

id=String.valueOf(session.getAttribute("ID"));
ctid=String.valueOf(session.getAttribute("CTID"));

Connection con;
PreparedStatement ps,ps1;
ResultSet rs;

try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
    
    ps=con.prepareStatement("select class,section from user where UserID=?");
	ps.setString(1,ctid);
	rs=ps.executeQuery();
	rs.next();
    cl=rs.getString("class");
    sec=rs.getString("section");
    
    ps=con.prepareStatement("select students from user where UserID=?");
	ps.setString(1,ctid);
	rs=ps.executeQuery();
	rs.next();
    
    n=Integer.parseInt(rs.getString("students"));
    no=Integer.parseInt(request.getParameter("b"));
    
    if(no==0)
    {
        for(i=0;i<n;i++)
        {
           ps=con.prepareStatement("insert into student(adhaarno,name,school,class,section) values(?,?,?,?,?)");
            ps.setString(1,request.getParameter("an"+(i+1)));
            ps.setString(2,request.getParameter("name"+(i+1)));
            
            ps.setString(3,id);
            ps.setString(4,cl);
            ps.setString(5,sec);
            ps.executeUpdate();
        }
        response.sendRedirect("/IoMS/jsp/ClassTeacherJSP1.jsp?a=1");
    }
    else if(no==1)
    {
        for(i=0;i<n;i++)
        {
            ps=con.prepareStatement("update student set achisport=?,achiacadamics=?,sportslevel=? where adhaarno=?");
            ps.setString(1,request.getParameter("ais"+(i+1)));
            ps.setString(2,request.getParameter("aia"+(i+1)));
            ps.setString(3,request.getParameter("lvl"+(i+1)));
            ps.setString(4,request.getParameter("adn"+(i+1)));
            ps.executeUpdate();
        }
        response.sendRedirect("/IoMS/jsp/ClassTeacherJSP1.jsp?a=2");
    }
    else if(no==2)
    {
        for(i=0;i<n;i++)
        {
            ps=con.prepareStatement("update student set termIper=?,termIIper=? where adhaarno=?");
            ps.setString(1,request.getParameter("ti"+(i+1)));
            ps.setString(2,request.getParameter("tii"+(i+1)));
            ps.setString(3,request.getParameter("adn"+(i+1)));
            ps.executeUpdate();
        }
        response.sendRedirect("/IoMS/jsp/ClassTeacherJSP1.jsp?a=3");
    }
    
    
%>

 <%
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
</html>