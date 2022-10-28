<%-- 
    Document   : TopSportsPdf
    Created on : 22 Mar, 2019, 11:27:12 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.pdf.*"%>
<%@page import="java.util.Date"%>

<%
    String clas,b,c="",d="";
    int num,i;
    
    clas=request.getParameter("clas");
    num=Integer.parseInt(request.getParameter("num"));
    b=request.getParameter("b");
    
    float[] col={100F,100F,100F,100F};
    
    Document doc=new Document();
    PdfPTable table=new PdfPTable(col);
    
    
    Connection con;
    PreparedStatement ps,ps1;
    ResultSet rs,rs1;
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
        
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
        
        response.setContentType("application/pdf");
        
	PdfWriter.getInstance(doc,response.getOutputStream());
        
        doc.open();
        
        table.addCell("Serial Number");
        
        
        table.addCell("Name of Student");
        
        
        table.addCell("School");
        
        
        table.addCell("Sport");
        
        
                for(i=0;i<num;i++)
                {
                    ps1=con.prepareStatement("select SchoolName from school where SchoolID=?");
                            ps1.setString(1,rs.getString("school"));
                            rs1=ps1.executeQuery();
                            rs1.next();
                    table.addCell(String.valueOf((i+1)));
                    table.addCell(rs.getString("name"));
                    table.addCell(rs1.getString("SchoolName"));
                    table.addCell(rs.getString("achisport"));
                    rs.next();
                }
                Paragraph date1=new Paragraph(new Date().toString());
        date1.setAlignment(Element.ALIGN_RIGHT);
        doc.add(date1);
        doc.add( Chunk.NEWLINE );
        Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
        Paragraph title=new Paragraph("List of Top "+num+" Students of Class "+clas,boldFont);
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
