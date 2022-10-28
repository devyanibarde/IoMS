<%@page import="java.sql.*"%>

<html>
    <head>
        <title>IoMS</title>
        <link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body style="background:black">
    <%
        String id,schname,uname,idt,clas,sect;
        int c1,c2,c3,c4,c5,i=0,num;
        
        id=String.valueOf(session.getAttribute("ID"));
        
        clas=request.getParameter("c");
        sect=request.getParameter("s");
        
        Connection con;
        PreparedStatement ps,ps1,ps2,ps3,ps5,ps6,ps7;
        ResultSet rs,rs1,rs2,rs3,rs5,rs6,rs7;
        
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
	<div class="bgprin">
        <div id="headschnm">
            <table style="color:white;">
                <tr>
                    <td style="color:white"><i class="fa fa-university" aria-hidden="true" style="font-size:80px;color:white"></i></td>
                    <td style="font-size:40px;"><b><i style="margin-left:40px;"><%=schname%></i></b></td>
                </tr>
            </table>
        </div>
        <div id="hd1">
            <table id="headtxt" style="float:left;">
                <tr>
                    <td style="font-size:25px;"><b><i style="margin-left:40px;color:white;"><%=uname%></i></b></td>
                   
                </tr>
            </table>
            <table id="headtxt" style="float:right;margin-right:40px;">
                <tr>
                    <td style="padding-right:40px;padding-left:40px;" class="priemaildrop"><a href="#" onclick="taskm('RS')"><i class="fa fa-envelope" aria-hidden="true" style="font-size:30px;color:white" onclick=""></i></a>
					
					</td>
                    <td style="padding-right:40px;padding-left:40px;" class="priemaildrop"><i class="fa fa-cog" aria-hidden="true" style="font-size:30px;color:white"></i>
					<div class="priemaildrop-cont">
					<a href="#" onclick="task('EP')">Edit Profile</a>
					<a href="#" onclick="task('SS')">Security Settings</a>
					<a href="#" onclick="task('CP')">Change Password</a>
					</div>
					</td>
                    <td style="padding-right:40px;padding-left:40px;"><a href="/IoMS/jsp/LogOutJSP.jsp"><i class="fa fa-sign-out" aria-hidden="true" style="font-size:30px;color:white"></i></a></td>
                </tr>
            </table>
        </div>
		
        <div class="in">
            <div class="tasks">
				
                    <div class="priboxhov" onclick="task('SD')">
					
						<div class="priboxcont">
							<h3>School Details</h3>
							<p>This block show all the important details of the school mentioned during registration</p>
						</div>
						<div class="pic">
							
						</div>
					
					</div>
					
                   
					
                    <div class="priboxhov" onclick="task('MA')">
					
						<div class="priboxcont">
							<h3>Mail Admin</h3>
							<p>You can send mail to admin for any grievance or any other help</p>
						</div>
						
						<div class="pic">
							
						</div>
					</div>
					<div class="priboxhov" onclick="task('MC')">
					
						<div class="priboxcont">
							<h3>Manage Classes</h3>
							<p>This block will help you manage all the sections and respective class teachers of the school</p>
						</div>
						
						<div class="pic">
							
						</div>
					
					</div>
            </div>
        
            <div id="maincenter">
                <%
            ps6=con.prepareStatement("select * from student where school=? and class=? and section=?");
            ps6.setString(1,id);
            ps6.setString(2,clas);
            ps6.setString(3,sect);
            rs6=ps6.executeQuery();
            
    %>
    <table class="details" border="1px">
            <tr>
                <td>Serial Number</td>
                
                <td>Name</td>
                
                
                <td>Term I Percentage</td>
                <td>Term II Percentage</td>
            </tr>
            <%
        while(rs6.next())
        {%>
        <tr>
            <td><%=(i+1)%></td>
            
            <td><%=rs6.getString("name")%></td>
           
            <td><%=rs6.getString("termIper")%></td>
            <td><%=rs6.getString("termIIper")%></td>
        </tr><%i++;   
        }
        %>
        </table>
        <%
        
%>	
            </div>
                        
        </div>
        
		<div class="teacher-1">
        <div class="teachers">
        <%
        idt=id+"CT";
        
        
        
        ps2=con.prepareStatement("select * from user where school=?");
		ps2.setString(1,id);
		rs2=ps2.executeQuery();
		if(!rs2.next())
        {
            %>
            <div class="flip-card1" style="margin-top:50px;margin-left:50px;margin-bottom:50px;margin-right:50px;">
                <div class="flip-card-inner1">
                    <div class="flip-card-front1">
                        <i class="fa fa-plus" aria-hidden="true" style="color:white;font-size:200px;"></i>
                    </div>
                    <div class="flip-card-back1">
                        </br></br></br><a href="#" onclick="task('AT')"><button type="button" class="taskbutton21">Add Class Teachers</button></a>
                    </div>
                </div>
            </div>
            <%
        }
        else
        {
            ps3=con.prepareStatement("select * from classdata where SchID=?");
            ps3.setString(1,id);
            rs3=ps3.executeQuery();
            rs3.next();
            c1=Integer.parseInt(rs3.getString("SecI"));
            c2=Integer.parseInt(rs3.getString("SecII"));
            c3=Integer.parseInt(rs3.getString("SecIII"));
            c4=Integer.parseInt(rs3.getString("SecIV"));
            c5=Integer.parseInt(rs3.getString("SecV"));
            
            
            for(i=0;i<(c1+c2+c3+c4+c5);i++)
            {
                %>
                    <div class="flip-card" style="">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <h2 style="font-size:30px"><%=rs2.getString("class")%>-<%=rs2.getString("section")%></h2>
                            </div>
                            <div class="flip-card-back">
                                <h3 color="white"><%=rs2.getString("name")%></h3> 
                                <a href="/IoMS/jsp/VP.jsp?c=<%=rs2.getString("class")%>&s=<%=rs2.getString("section")%>" style="color: white;font-weight: bold">View Students</button></a>
                            </div>
                        </div>
                    </div>
                <%
                if(i!=(c1+c2+c3+c4+c5-1))
                {
                    rs2.next();
                }
            }
        }%>
            
        </div>
             
        
        <div class="attentionP">
			
                <i><center><h2><u>On-Going Schemes</u></h2></br>
                <marquee direction="up" scrollamount="2" style="font-size:25;">
                    <ul>
                        <%
                       
            ps5=con.prepareStatement("select * from schemes");
            rs5=ps5.executeQuery();
            if(rs5.next())
            {
                %><a href="<%=rs5.getString("link")%>" style="color: white;text-decoration: none"><li><%=rs5.getString("name")%></li></a><%
                while(rs5.next())
                {
                    %><a href="<%=rs5.getString("link")%>" style="color: white;text-decoration: none"><li><%=rs5.getString("name")%></li></a><%
                }
            }
        
                        %>
                    </ul>
                </marquee></center></i>
        </div>
		</div>
        
		<div class="hd7">
				CopyRights Reserved
		</div>
		
        <script>
window.onscroll = function() {myFunction()};

		var hd1 = document.getElementById("hd1");
		var sticky = hd1.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				hd1.classList.add("sticky");
			} else {
				hd1.classList.remove("sticky");
			}
		}

function task(x)
{
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange=function()
    {
        if(this.readyState==4 && this.status==200)
        {
            document.getElementById("maincenter").innerHTML=this.responseText;
        }
    };
    
    xhttp.open("GET","/IoMS/jsp/"+x+".jsp",true);
    xhttp.send();
    
}
function taskm(x)
{
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange=function()
    {
        if(this.readyState==4 && this.status==200)
        {
            document.getElementById("maincenter").innerHTML=this.responseText;
        }
    };
    
    xhttp.open("GET","/IoMS/jsp/"+x+".jsp?q=1",true);
    xhttp.send();
    
}



</script>
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