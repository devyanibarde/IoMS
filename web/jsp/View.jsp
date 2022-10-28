<%@page import="java.sql.*"%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.pdf.*"%>
<%@page import="java.util.Date"%>

<%
    String id,sec;
    int c1,c2,c3,c4,c5;
    float[] col={100F,100F,100F,100F};
    
    Document doc=new Document();
    PdfPTable table=new PdfPTable(col);
    PdfPCell cell;
    
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
        rs.next();
        
        c1=Integer.parseInt(rs.getString("SecI"));
        c2=Integer.parseInt(rs.getString("SecII"));
        c3=Integer.parseInt(rs.getString("SecIII"));
        c4=Integer.parseInt(rs.getString("SecIV"));
        c5=Integer.parseInt(rs.getString("SecV"));
        
        response.setContentType("application/pdf");
        
	PdfWriter.getInstance(doc,response.getOutputStream());
        
        doc.open();
        
        
        table.addCell("Class");
        
        
        table.addCell("Section");
        
        
        table.addCell("Name of Class Teacher");
        
        
        table.addCell("Password");
        
        
        for(int i=0;i<(c1+c2+c3+c4+c5);i++)
        {
            if(i==0)
            {
                ps=con.prepareStatement("select * from user where UserID=?");
                ps.setString(1,id+"CTA1");
                rs=ps.executeQuery();
                rs.next();
                
                ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                ps1.setString(1,id+"CTA1");
                rs1=ps1.executeQuery();
                rs1.next();
            
                
                cell = new PdfPCell(new Phrase("I"));
                cell.setRowspan(c1);
                table.addCell(cell);
                
                
                table.addCell("A");
                
                
                table.addCell(rs.getString("name"));
                
                
                table.addCell(rs1.getString("Password"));
            }
            else if(i==c1)
            {
                ps=con.prepareStatement("select * from user where UserID=?");
                ps.setString(1,id+"CTA2");
                rs=ps.executeQuery();
                rs.next();
                
                ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                ps1.setString(1,id+"CTA2");
                rs1=ps1.executeQuery();
                rs1.next();
            
                
                cell = new PdfPCell(new Phrase("II"));
                cell.setRowspan(c2);
                table.addCell(cell);
                
                
                table.addCell("A");
                
                
                table.addCell(rs.getString("name"));
                
                
                table.addCell(rs1.getString("Password"));
            }
            else if(i==(c1+c2))
            {
                ps=con.prepareStatement("select * from user where UserID=?");
                ps.setString(1,id+"CTA3");
                rs=ps.executeQuery();
                rs.next();
                
                ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                ps1.setString(1,id+"CTA3");
                rs1=ps1.executeQuery();
                rs1.next();
            
                
                cell = new PdfPCell(new Phrase("III"));
                cell.setRowspan(c3);
                table.addCell(cell);
                
                
                table.addCell("A");
                
                
                table.addCell(rs.getString("name"));
                
                
                table.addCell(rs1.getString("Password"));
            }
            else if(i==(c1+c2+c3))
            {
                ps=con.prepareStatement("select * from user where UserID=?");
                ps.setString(1,id+"CTA4");
                rs=ps.executeQuery();
                rs.next();
                
                ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                ps1.setString(1,id+"CTA4");
                rs1=ps1.executeQuery();
                rs1.next();
            
                cell = new PdfPCell(new Phrase("IV"));
                cell.setRowspan(c4);
                table.addCell(cell);
                
                
                table.addCell("A");
                
                
                table.addCell(rs.getString("name"));
                
                
                table.addCell(rs1.getString("Password"));
            }
            else if(i==(c1+c2+c3+c4))
            {
                ps=con.prepareStatement("select * from user where UserID=?");
                ps.setString(1,id+"CTA5");
                rs=ps.executeQuery();
                rs.next();
                
                ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                ps1.setString(1,id+"CTA5");
                rs1=ps1.executeQuery();
                rs1.next();
            
                cell = new PdfPCell(new Phrase("V"));
                cell.setRowspan(c5);
                table.addCell(cell);
                
                
                table.addCell("A");
                
                
                table.addCell(rs.getString("name"));
                
                
                table.addCell(rs1.getString("Password"));
            }
            else
            {
                if(i<c1)
                {
                    sec=String.valueOf(Character.toChars(65+i));
                    
                    ps=con.prepareStatement("select * from user where UserID=?");
                    ps.setString(1,id+"CT"+sec+"1");
                    rs=ps.executeQuery();
                    rs.next();
                
                    ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                    ps1.setString(1,id+"CT"+sec+"1");
                    rs1=ps1.executeQuery();
                    rs1.next();
            
                    
                    
                
                
                    table.addCell(sec);
                
                
                    table.addCell(rs.getString("name"));
                
                
                    table.addCell(rs1.getString("Password"));
                }
                else if(i<(c1+c2))
                {
                    sec=String.valueOf(Character.toChars(65+i-c1));
                    
                    ps=con.prepareStatement("select * from user where UserID=?");
                    ps.setString(1,id+"CT"+sec+"2");
                    rs=ps.executeQuery();
                    rs.next();
                
                    ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                    ps1.setString(1,id+"CT"+sec+"2");
                    rs1=ps1.executeQuery();
                    rs1.next();
            
                    
                   
                
                
                    table.addCell(sec);
                
                
                    table.addCell(rs.getString("name"));
                
                
                    table.addCell(rs1.getString("Password"));
                }
                else if(i<(c1+c2+c3))
                {
                    sec=String.valueOf(Character.toChars(65+i-c1-c2));
                    
                    ps=con.prepareStatement("select * from user where UserID=?");
                    ps.setString(1,id+"CT"+sec+"3");
                    rs=ps.executeQuery();
                    rs.next();
                
                    ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                    ps1.setString(1,id+"CT"+sec+"3");
                    rs1=ps1.executeQuery();
                    rs1.next();
            
                    
                    
                
                
                    table.addCell(sec);
                
                
                    table.addCell(rs.getString("name"));
                
                
                    table.addCell(rs1.getString("Password"));
                }
                else if(i<(c1+c2+c3+c4))
                {
                    sec=String.valueOf(Character.toChars(65+i-c1-c2-c3));
                    
                    ps=con.prepareStatement("select * from user where UserID=?");
                    ps.setString(1,id+"CT"+sec+"4");
                    rs=ps.executeQuery();
                    rs.next();
                
                    ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                    ps1.setString(1,id+"CT"+sec+"4");
                    rs1=ps1.executeQuery();
                    rs1.next();
            
                    
                    
                
                
                    table.addCell(sec);
                
                
                    table.addCell(rs.getString("name"));
                
                
                    table.addCell(rs1.getString("Password"));
                }
                else
                {
                    sec=String.valueOf(Character.toChars(65+i-c1-c2-c3-c4));
                    
                    ps=con.prepareStatement("select * from user where UserID=?");
                    ps.setString(1,id+"CT"+sec+"5");
                    rs=ps.executeQuery();
                    rs.next();
                
                    ps1=con.prepareStatement("select * from usersecurity where UserID=?");
                    ps1.setString(1,id+"CT"+sec+"5");
                    rs1=ps1.executeQuery();
                    rs1.next();
            
                    
                    
                
                
                    table.addCell(sec);
                
                
                    table.addCell(rs.getString("name"));
                
                
                    table.addCell(rs1.getString("Password"));
                }
            }
        }
        Paragraph date1=new Paragraph(new Date().toString());
        date1.setAlignment(Element.ALIGN_RIGHT);
        doc.add(date1);
        doc.add( Chunk.NEWLINE );
        Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
        Paragraph title=new Paragraph("Login Credentials for Teachers",boldFont);
        title.setAlignment(Element.ALIGN_CENTER);
        doc.add(title);
        doc.add( Chunk.NEWLINE );
        

        doc.add(table);
        doc.close(); 
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>