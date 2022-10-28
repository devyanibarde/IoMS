<%@page import="java.sql.*"%>


    <%
        String id,schname,uname;
        
        id=String.valueOf(session.getAttribute("ID"));
        
        String I,II,III,IV,V;
            int no;
            
        
        
       
            I=request.getParameter("I");
            II=request.getParameter("II");
            III=request.getParameter("III");
            IV=request.getParameter("IV");
            V=request.getParameter("V");
        
        Connection con;
        PreparedStatement ps,ps1,ps2;
        ResultSet rs,rs1;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from school where SchoolID=?");
			ps.setString(1,id);
			rs=ps.executeQuery();
			rs.next();
            
            ps1=con.prepareStatement("select * from user where UserID=?");
			ps1.setString(1,id+"HM");
			rs1=ps1.executeQuery();
			rs1.next();
            
            schname=rs.getString("SchoolName");
            uname=rs1.getString("name");
            %>
        
                <%
                
                ps2=con.prepareStatement("insert into ClassData values(?,?,?,?,?,?);");
                ps2.setString(1,id);
                ps2.setString(2,I);
                ps2.setString(3,II);
                ps2.setString(4,III);
                ps2.setString(5,IV);
                ps2.setString(6,V);
                
                no=ps2.executeUpdate();
                if(no==1)
                {
                    response.sendRedirect("/IoMS/jsp/PrincipalHomeJSP.jsp");
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