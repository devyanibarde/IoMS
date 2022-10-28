<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>IoMS</title>
        <link rel="stylesheet" type="text/css" href="IoMSCSS.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="IoMSJS.js"></script>
    </head>
    <body>
    <div class="comp">
        <div class="header">
		
			<div class="header wrapper">
				
				<div class="logo">
					<h1><img src="/IoMS/images/logo1.png" width="45px" height="45px">Identification of Meritorious Students</h1>
				</div>
			
				<div class="navigation">
					<table width="100%">
						<tr>
                            <td style="text-align:center;"><a href="/IoMS/index.html"><button type="button" class="fa fa-home" id="home" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/SchoolRegistrationHTML.html"><button type="button" class="fa fa-file-text" id="regi" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/SchoolLoginHTML.html"><span></span><button type="button" class="fa fa-sign-in" id="log" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/AdminLoginHTML.html"><button type="button" class="fa fa-adn" id="adm" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
						</tr>
					</table>
				</div>
				
			</div>
		
		</div>
        
        <div class="navigationattention">
            
            <div class="navigationextended">
                <i><center><h2><u>Navigation</u></h2></center></br>
                <ul type="square" style="font-size:25;">
                    <li><a href="#" onclick="load('About')" style="color:white;text-decoration:none;">About</a></li>
                    <li><a href="#" onclick="load('Regi')" style="color:white;text-decoration:none;">How to register your school?</a></li>
                    <li><a href="#" onclick="loadsch('Sch')" style="color:white;text-decoration:none;">Ongoing Schemes</a></li>
                    
                </ul></i>
            </div>
            
            <div class="attention">
                <i><center><h2><u>Attention</u></h2></br>
                <marquee direction="up" scrollamount="2" style="font-size:25;">
                    <ul>
                        <%
                        Connection con;
	PreparedStatement ps;
	ResultSet rs;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iomsdb?user=root&password=devyani");
            
            ps=con.prepareStatement("select * from schemes");
            rs=ps.executeQuery();
            if(rs.next())
            {
                %><a href="<%=rs.getString("link")%>" style="color: white;text-decoration: none"><li><%=rs.getString("name")%></li></a><%
                while(rs.next())
                {
                    %><a href="<%=rs.getString("link")%>" style="color: white;text-decoration: none"><li><%=rs.getString("name")%></li></a><%
                }
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
                        %>
                    </ul>
                </marquee></center></i>
            </div>
        </div>
        
        <div id="general">
        <i><h2>About:</h2>
<p style="font-size:25;">Primary school enrolment in India has been a success story, largely due to various programs and drives to increase enrolments even in remote areas. The Education Department of the state has not been utilizing technology to its fullest potential. For example, in the education system even today very old practices are followed that can be made lot better using advanced technology which is easily usable and also easy to implement.
<p style="font-size:25;">IoMS is a platform for all the schools where they can upload all their student&#39s data and this portal will help the Education Department to identify meritorious students from all over the state.
<p style="font-size:25;">IoMS is a portal where schools of different regions of the state can upload their student&#39s data which will be further analysed to show the list of meritorious students to the Education Department of the state. This portal uses a mechanism to spot bright students who are performing well in studies. It is designed to acquire data of meritorious students in primary education and the data is then analysed on the basis of different parameters.
<p style="font-size:25;">Those meritorious students will be then applicable to get special attention by the state government and will be getting facilities such as provision to higher education, free coaching of competitive exams such as NSO, IMO, IGK, IEO, etc. Such student will also be getting career guidance by experts. Students good at sports will be provided with funds for getting admission in well- known and certified sports academy to enhance their skills. Also, will be provided with their essential sports supplies. </i>

        </div>
        
        <!--<div class="footer">
            
        </div>-->
    </div>
    </body>
    <script>
        function loadsch(x)
{
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange=function()
    {
        if(this.readyState==4 && this.status==200)
        {
            document.getElementById("general").innerHTML=this.responseText;
        }
    };
    xhttp.open("GET","/IoMS/jsp/"+x+".jsp",true);
    xhttp.send();
}
    </script>
</html>
