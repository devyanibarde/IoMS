<%-- 
    Document   : Guide
    Created on : 25 Mar, 2019, 2:14:29 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <%
        String id,schname,uname,idt,ctid,clas,sect;
        int c1,c2,c3,c4,c5,i;
        
        id=String.valueOf(session.getAttribute("ID"));
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        Connection con;
        PreparedStatement ps,ps1,ps2,ps3;
        ResultSet rs,rs1,rs2,rs3;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from school where SchoolID=?");
			ps.setString(1,id);
			rs=ps.executeQuery();
			rs.next();
            
            ps1=con.prepareStatement("select * from user where UserID=?");
			ps1.setString(1,ctid);
			rs1=ps1.executeQuery();
			rs1.next();
            
            schname=rs.getString("SchoolName");
            uname=rs1.getString("name");
            clas=rs1.getString("class");
            sect=rs1.getString("section");
    
    %>
    <div class="bg" style="height:1000px">
        <div id="headschnm">
            <table>
		<tr>
                    <td><i class="fa fa-university" aria-hidden="true" style="font-size:80px; color:#330011;"></i></td>
                    <td style="font-size:40px;"><b><i style="margin-left:40px;color:black;"><%=schname%></i></b></td>
		</tr>
            </table>
	</div>
	<div id="hd1">
            <table id="headtxt" style="float:left;">
		<tr>
                    <td><%=uname%>(<%=clas%>-<%=sect%>)</td>
		</tr>
            </table>
            <table id="headtxt" style="float:right;right-margin:50px;">
		<tr>
                    <td style="align:center;padding-left:50px;padding-right:50px;"><a href="/IoMS/jsp/ClassTeacherJSP.jsp"><i class="fa fa-home fa-lg" style="color:white"></i></td>
                    
                    <td style="align:center;padding-left:50px;padding-right:50px;" class="priemaildrop"><a href="#"><i class="fa fa-gears fa-lg" style="color:white"></i>
					<div class="priemaildrop-cont">
					<a href="#" onclick="task23c('EP')">Edit Profile</a>
					<a href="#" onclick="task23c('SS')">Security Settings</a>
					<a href="#" onclick="task23c('CPCT')">Change Password</a>
					</div>
					</td>
                    
		</tr>
            </table>
	</div>
                <div class="hd2" id="mainwork" style="align:center;width:70%;height: 80%;margin-right:150px;background-color:rgba(0,0,0,0.9);">
                    <h2>Guidelines To use the portal</h2>
                    <ul>

<li style="font-size:25;">Add number of students data all at once using this section and also you can insert and update individual student's data using this section.</br>
<img src="/IoMS/images/guide1-1.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">You can veiw Messages from Admin using this section.</br>
<img src="/IoMS/images/guide1-2.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">Here you can view total number of students present in your class.</br>
<img src="/IoMS/images/guide1-3.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">For any kind of help you can contact admin by sending mail to admin using this section.</br>
<img src="/IoMS/images/guide1-4.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">By clicking on this you can go back to home page.
<img src="/IoMS/images/guide1-5.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">Click on this button to logout.
<img src="/IoMS/images/guide1-6.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">Click on this you can change settings such as editin gyour profile information,security settings like security question and answer and change password. 
<img src="/IoMS/images/guide1-7.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">Click here to delete student's data.
<img src="/IoMS/images/guide2-1.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">Click here to view guidelines to use the website.
<img src="/IoMS/images/guide2-2.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">Click here to view data of students from your class.
<img src="/IoMS/images/guide2-3.png" style="width:100%;height:350px"></br></br></li></br></br></br>

<li style="font-size:25;">Click here to view your profile.
<img src="/IoMS/images/guide2-4.png" style="width:100%;height:350px"></br></br></li></br></br></br>

</ul>
                </div>
</div>
    </body>
    <%
    }
catch(Exception e)
{
out.println(e);
}
    %>
</html>
