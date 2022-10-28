<%@page import="java.sql.*"%>
<head>
<link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">

</head>

<%
        String id;
        
        id=String.valueOf(session.getAttribute("ID"));
        
        Connection con;
        PreparedStatement ps,ps1;
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
            
            
            %>
            
            

<div class="maincenter">

<h2 style="margin-left:50px;color:black">School Details:</h2>
                </br></br>
                <table class="details">
                    <tr>
                        <td>
                            U-DISE No.:
                        </td>
                        <td>
                            <%out.println(rs.getString("UDISENo"));%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Medium:
                        </td>
                        <td>
                            <%
                                if(rs.getString("StudyMedium").equals("M001"))
                                {
                                    out.println("Assamese");
                                }
                                else if(rs.getString("StudyMedium").equals("M002"))
                                {
                                    out.println("Bengali");
                                }
                                else if(rs.getString("StudyMedium").equals("M003"))
                                {
                                    out.println("English");
                                }
                                else if(rs.getString("StudyMedium").equals("M004"))
                                {
                                    out.println("Gujrati");
                                }
                                else if(rs.getString("StudyMedium").equals("M005"))
                                {
                                    out.println("Hindi");
                                }
                                else if(rs.getString("StudyMedium").equals("M006"))
                                {
                                    out.println("Kannada");
                                }
                                else if(rs.getString("StudyMedium").equals("M007"))
                                {
                                    out.println("Konkani");
                                }
                                else if(rs.getString("StudyMedium").equals("M008"))
                                {
                                    out.println("Malayalam");
                                }
                                else if(rs.getString("StudyMedium").equals("M009"))
                                {
                                    out.println("Marathi");
                                }
                                else if(rs.getString("StudyMedium").equals("M010"))
                                {
                                    out.println("Odia");
                                }
                                else if(rs.getString("StudyMedium").equals("M011"))
                                {
                                    out.println("Tamil");
                                }
                                else if(rs.getString("StudyMedium").equals("M012"))
                                {
                                    out.println("Telugu");
                                }
                                else if(rs.getString("StudyMedium").equals("M013"))
                                {
                                    out.println("Urdu");
                                }
                            %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Board:
                        </td>
                        <td>
                            <%
                                if(rs.getString("StudyBoard").equals("S01"))
                                {
                                    out.println(rs.getString("State")+" State Board");
                                }
                                else if(rs.getString("StudyBoard").equals("C02"))
                                {
                                    out.println("CBSE");
                                }
                                else if(rs.getString("StudyBoard").equals("I03"))
                                {
                                    out.println("ICSE");
                                }
                            %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address:
                        </td>
                        <td>
                            <%out.println(rs.getString("StreetAddr")+", "+rs.getString("Addr2")+", "+rs.getString("City")+", "+rs.getString("State")+", "+rs.getString("PinCode"));%>
                        </td>
                    </tr>
                </table>
                        </br></br>
			<div class="primotto">
                            An investment in knowledge pays the best interest
				</div>	
</div>
             <%
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>