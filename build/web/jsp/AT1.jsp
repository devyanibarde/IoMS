<%@page import="java.sql.*"%>


    <%
        String id,UType="CT",sec,password,sym="ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghijklmnopqrstuvwxyz";
        int c1,c2,c3,c4,c5,i,j,index;
        
        id=String.valueOf(session.getAttribute("ID"));
        
        Connection con;
        PreparedStatement ps,ps1;
        ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from classdata where SchID=?");
			ps.setString(1,id);
			rs=ps.executeQuery();
			rs.next();
            
            c1=Integer.parseInt(rs.getString("SecI"));
            c2=Integer.parseInt(rs.getString("SecII"));
            c3=Integer.parseInt(rs.getString("SecIII"));
            c4=Integer.parseInt(rs.getString("SecIV"));
            c5=Integer.parseInt(rs.getString("SecV"));
            
            for(i=0;i<(c1+c2+c3+c4+c5);i++)
            {
                if(i<c1)
                {
                    sec=String.valueOf(Character.toChars(65+i));
                    ps=con.prepareStatement("insert into user(UserID,UserType,name,class,section,school) values(?,?,?,?,?,?)");
                    ps.setString(1,id+"CT"+sec+"1");
                    ps.setString(2,UType);
                    ps.setString(3,request.getParameter(sec+"1"));
                    ps.setString(4,"1");
                    ps.setString(5,sec);
                    ps.setString(6,id);
                    ps.executeUpdate();
                    
                    StringBuilder sb = new StringBuilder(7);
                    for (j=0;j<7;j++)
                    { 
                        index=(int)(sym.length()*Math.random());
                        sb.append(sym.charAt(index)); 
                    } 
                    
                    password=session.getId().substring(4,7)+sec+sb.toString();
                    
                    ps1=con.prepareStatement("insert into usersecurity(UserID,Password,school) values(?,?,?)");
                    ps1.setString(1,id+"CT"+sec+"1");
                    ps1.setString(2,password);
                    ps1.setString(3,id);
                    ps1.executeUpdate();
                }
                else if(i<(c1+c2))
                {
                    sec=String.valueOf(Character.toChars(65+i-c1));
                    ps=con.prepareStatement("insert into user(UserID,UserType,name,class,section,school) values(?,?,?,?,?,?)");
                    ps.setString(1,id+"CT"+sec+"2");
                    ps.setString(2,UType);
                    ps.setString(3,request.getParameter(sec+"2"));
                    ps.setString(4,"2");
                    ps.setString(5,sec);
                    ps.setString(6,id);
                    ps.executeUpdate();
                    
                    StringBuilder sb = new StringBuilder(7);
                    for (j=0;j<7;j++)
                    { 
                        index=(int)(sym.length()*Math.random());
                        sb.append(sym.charAt(index)); 
                    } 
                    password=session.getId().substring(4,7)+sec+sb.toString();
                    
                    ps1=con.prepareStatement("insert into usersecurity(UserID,Password,school) values(?,?,?)");
                    ps1.setString(1,id+"CT"+sec+"2");
                    ps1.setString(2,password);
                    ps1.setString(3,id);
                    ps1.executeUpdate();
                }
                else if(i<(c1+c2+c3))
                {
                    sec=String.valueOf(Character.toChars(65+i-c1-c2));
                    ps=con.prepareStatement("insert into user(UserID,UserType,name,class,section,school) values(?,?,?,?,?,?)");
                    ps.setString(1,id+"CT"+sec+"3");
                    ps.setString(2,UType);
                    ps.setString(3,request.getParameter(sec+"3"));
                    ps.setString(4,"3");
                    ps.setString(5,sec);
                    ps.setString(6,id);
                    ps.executeUpdate();
                    
                    StringBuilder sb = new StringBuilder(7);
                    for (j=0;j<7;j++)
                    { 
                        index=(int)(sym.length()*Math.random());
                        sb.append(sym.charAt(index)); 
                    } 
                    password=session.getId().substring(4,7)+sec+sb.toString();
                    
                    ps1=con.prepareStatement("insert into usersecurity(UserID,Password,school) values(?,?,?)");
                    ps1.setString(1,id+"CT"+sec+"3");
                    ps1.setString(2,password);
                    ps1.setString(3,id);
                    ps1.executeUpdate();
                }
                else if(i<(c1+c2+c3+c4))
                {
                    sec=String.valueOf(Character.toChars(65+i-c1-c2-c3));
                    ps=con.prepareStatement("insert into user(UserID,UserType,name,class,section,school) values(?,?,?,?,?,?)");
                    ps.setString(1,id+"CT"+sec+"4");
                    ps.setString(2,UType);
                    ps.setString(3,request.getParameter(sec+"4"));
                    ps.setString(4,"4");
                    ps.setString(5,sec);
                    ps.setString(6,id);
                    ps.executeUpdate();
                    
                   StringBuilder sb = new StringBuilder(7);
                    for (j=0;j<7;j++)
                    { 
                        index=(int)(sym.length()*Math.random());
                        sb.append(sym.charAt(index)); 
                    } 
                    password=session.getId().substring(4,7)+sec+sb.toString();
                    
                    ps1=con.prepareStatement("insert into usersecurity(UserID,Password,school) values(?,?,?)");
                    ps1.setString(1,id+"CT"+sec+"4");
                    ps1.setString(2,password);
                    ps1.setString(3,id);
                    ps1.executeUpdate();
                }
                else
                {
                    sec=String.valueOf(Character.toChars(65+i-c1-c2-c3-c4));
                    ps=con.prepareStatement("insert into user(UserID,UserType,name,class,section,school) values(?,?,?,?,?,?)");
                    ps.setString(1,id+"CT"+sec+"5");
                    ps.setString(2,UType);
                    ps.setString(3,request.getParameter(sec+"5"));
                    ps.setString(4,"5");
                    ps.setString(5,sec);
                    ps.setString(6,id);
                    ps.executeUpdate();
                    
                    StringBuilder sb = new StringBuilder(7);
                    for (j=0;j<7;j++)
                    { 
                        index=(int)(sym.length()*Math.random());
                        sb.append(sym.charAt(index)); 
                    } 
                    password=session.getId().substring(4,7)+sec+sb.toString();
                    
                     ps1=con.prepareStatement("insert into usersecurity(UserID,Password,school) values(?,?,?)");
                    ps1.setString(1,id+"CT"+sec+"5");
                    ps1.setString(2,password);
                    ps1.setString(3,id);
                    ps1.executeUpdate();
                }
            }
            %>
        
                <%
                
                
                
                
                
                    response.sendRedirect("/IoMS/jsp/PrincipalHomeJSP.jsp");
                
        %>
            
    <%
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
</html>