<%@page import="java.sql.*"%>
<html>
	<head>
		<title>ioms</title>
		<link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<style>
			
				
				
				
				
				.lg1
				{
					float:right;
					padding-right:150px;
					padding-bottom:10px;
					padding-left:10px;
					overflow:hidden;
					width:25%;
					margin-bottom:10px;
				}
				#ad
				{
					width:150px;
					text-align:center;
					font-size:15px;
					font-family:tahoma;
					color:white;
					font-weight:bold;
					text-decoration:none;
					
					
					
				}
				#ad:hover
				{
					text-decoration:underline;
					font-size:20px;
				}
				.lg2
				{
					text-align:center;
					background-color:green;
					height:10px;
					width:100px;
					padding-left:2px;
					padding-right:2px;
					padding-top:2px;
					padding-bottom:2px;
					border-radius:2px;
					margin-right:2px;
					border-radius:10px;
				}
				.lg2:hover
				{
					box-shadow:black;
					text-decoration:none;
				
				}
				#lk
				{
					width:250px;
					font-size:35px;
					font-family:italic;
					color:white;
					text-decoration:none;	
				}
                                #pro
				{
					display:none;
					background-color:black;
					float:right;
					height:200px;
					width:200px;
					margin-top:100px;
				}
				
				
			</style>
		
	</head>
	<body style="background:black">
	<%
        String id,schname,uname,ctid,clas,sect;
        int i,b,n;
        
        id=String.valueOf(session.getAttribute("ID"));
        ctid=String.valueOf(session.getAttribute("CTID"));
        
        b=Integer.parseInt(request.getParameter("a"));
        
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
		<div class="bg">
			<div id="headschnm">
				<table>
					<tr>
						<td><i class="fa fa-university" aria-hidden="true" style="font-size:80px; color:white;"></i></td>
						<td style="font-size:40px;"><b><i style="margin-left:40px;color:white;"><%=schname%></i></b></td>
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
						<td style="align:center;padding-left:50px;padding-right:50px;"><a href="#"><i class="fa fa-user fa-lg" style="color:white"></i></td>
						<td style="align:center;padding-left:50px;padding-right:50px;"><a href="#"><i class="fa fa-gears fa-lg" style="color:white"></i>
						<div class="priemaildrop-cont">
					<a href="#">Link 1</a>
					<a href="#">Link 2</a>
					<a href="#">Link 3</a>
					</div>
						</td>
						<td style="align:center;" class="lg2"><a href="/IoMS/jsp/LogOutJSP.jsp" id="lk">logout</td>
					</tr>
				</table>
			</div>
				
										
					<!--<div class="lg1">
						<table width="100%">
							<tr>
								<td style="align:center"><a href="#"><i class="fa fa-home fa-2x" style="color:white"></i></td>
								<td style="align:center"><a href="#"><i class="fa fa-user-alt fa-2x" style="color:white"></i></td>
								<td style="align:center"><a href="#"><i class="fa fa-clogs fa-2x" style="color:white"></i></td>
								<td class="lg2"><a href="/IoMS/jsp/SchoolLoginJSP.jsp" id="lk">logout</td>
							<tr>
						</table>
					</div>-->
			
			<div class="hd3">
				<span class="textanim">Lighten To Enlighten Others</span>
			</div>
            
			<div class="hd2" id="mainwork">
				<center><h2 style="color:#ff9999">Add Students Data</h2></center>
</br>

<div id="here">
                <%
        ps=con.prepareStatement("select students from user where UserID=?");
	ps.setString(1,ctid);
	rs=ps.executeQuery();
	rs.next();
            
        n=Integer.parseInt(rs.getString("students"));
        
        if(b==0)
        {
        
                %>
				
                <table class="ct-add-std-detail">
                <tr>
                    <td>
                        Serial Number
                    </td>
                    
                    <td>
                        Adhaar Number
                    </td>
                    
                    <td>
                        Name
                    </td>
                    
                    
                </tr>
                <form method="post" action="/IoMS/jsp/AddData.jsp?b=0">
                <%
                for(i=0;i<n;i++)
                {
                %>
                    <tr>
                        <td>
                            <%=(i+1)%>
                        </td>
                        <td>
                            <input type="text" name="an<%=(i+1)%>">
                        </td>
                        
                        <td>
                            <input type="text" name="name<%=(i+1)%>">
                        </td>
                        
                        
                    </tr> 
                <%
                }%>
                </table>
                <center><input class="stadd" type="submit" value="Done!" style="float:right;font-size:15px;margin-top:38px;font-size:35px;margin-bottom:40px;background:#e60073"></center>
				</br></br></br>
                </form>
                <%

}
else if(b==1)
{
ps2=con.prepareStatement("select * from student where school=? and class=? and section=?");
ps2.setString(1,id);
ps2.setString(2,clas);
ps2.setString(3,sect);
rs2=ps2.executeQuery();
rs2.next();

%>
                <table class="ct-add-std-detail">
                <tr>
                    <td>
                        Serial Number
                    </td>
                    
                    <td>
                        Name
                    </td>
                    
                    <td>
                        Achievements in Sports
                    </td>
					
					<td>
                        Sport Name
                    </td>
                    
                    <td>
                        Achievements in Acadamics
                    </td>
                </tr>
                <form method="post" action="/IoMS/jsp/AddData.jsp?b=1">
                <%
                for(i=0;i<n;i++)
                {
                %>
                    <tr>
                        <td>
                            <%=(i+1)%>
                        </td>
                        
                        <td>
                            <%=rs2.getString("name")%>
                            <input type="hidden" name="adn<%=(i+1)%>" value="<%=rs2.getString("adhaarno")%>">
                        </td>
						<td class="custom-select">
                            <select class="selectee" name="lvl<%=(i+1)%>">
                                <option value="none">None</option>
								<option value="interschool">Inter-School</option>
								<option value="district">District-Level</option>
								<option value="state">State-Level</option>
								
							</select>
                        </td>
                        
                        <td>
                            <input type="text" name="ais<%=(i+1)%>">
                        </td>
                        
                        <td>
                            <input type="text" name="aia<%=(i+1)%>">
                        </td>
                    </tr> 
                    <%rs2.next();
                }%>
                </table>
                <center><input type="submit" class="stadd" value="Done!" style="float:right;font-size:15px;margin-top:38px;font-size:35px;margin-bottom:40px;background:#e60073"></center>
				</br></br></br>
                </form>
                <%
}
else if(b==2)
{
ps2=con.prepareStatement("select * from student where school=? and class=? and section=?");
ps2.setString(1,id);
ps2.setString(2,clas);
ps2.setString(3,sect);
rs2=ps2.executeQuery();
rs2.next();

%>
                <table class="ct-add-std-detail">
                <tr>
                    <td>
                        Serial Number
                    </td>
                    
                    <td>
                        Name
                    </td>
                    
                    <td>
                        Term I Percentage
                    </td>
                    
                    <td>
                        Term II Percentage
                    </td>
                </tr>
                <form method="post" action="/IoMS/jsp/AddData.jsp?b=2">
				
                <%
                for(i=0;i<n;i++)
                {
                %>
                    <tr>
                        <td>
                            <%=(i+1)%>
                        </td>
                        
                        <td>
                            <%=rs2.getString("name")%>
                            <input type="hidden" name="adn<%=(i+1)%>" value="<%=rs2.getString("adhaarno")%>">
                        </td>
                        
                        <td>
                            <input type="text" name="ti<%=(i+1)%>">
                        </td>
                        
                        <td>
                            <input type="text" name="tii<%=(i+1)%>">
                        </td>
                    </tr> 
                    <%rs2.next();
                }%>
                </table>
				
                <center><input type="submit" value="Done!" class="stadd" style="float:right;font-size:15px;margin-top:38px;font-size:35px;margin-bottom:40px;background:#ff1a1a"></center>
				</br></br></br>
                </form>
                <%
}
else if(b==3)
{
    %><center style="color:#ff1a1a">Students Data Successfully Submitted</br></center>
	
    <a href="/IoMS/jsp/ClassTeacherJSP.jsp" class="stadd" style="float:right;font-size:15px;margin-top:38px;font-size:35px;margin-bottom:40px;background:#ff9999;color:#ff1a1a;text-decoration:none;text-align:center">OK!</a>
	
    <%
}
%>
				</div>
			</div>
			
			<div class="hd4" id="wh">
            <div class="hd5">
		<a href="#wh"  onclick="task24('Delete')"><div class="boxhov" style="border-color:#b30059">			
                    <div class="pic" style="background:#b30059;">
                        <i class="fa fa-trash" aria-hidden="true"></i>
                    </div>
                    <div class="boxcont">
			<h3>Delete student's data left class</h3>
                    </div>
		</div></a>
				
		<a href="/IoMS/jsp/Guide.jsp"><div class="boxhov" style="border-color:#336600">
                    <div class="pic" style="background:#336600">
			<i class="fa fa-book" aria-hidden="true"></i>
                    </div>
                    <div class="boxcont">
			<h3>Guidelines to use the portal</h3>
                    </div>
                    </div></a>
		<a href="#wh" onclick="task24('NoStu')"><div class="boxhov" style="border-color:#006666">
                    <div class="pic" style="background:#006666">
                        
                        <i class="fa fa-users" aria-hidden="true"></i>
                    </div>
                    <div class="boxcont">
			<h3>View Students</h3>
                    </div>
		</div></a>
		<a href="#wh" onclick="task24('TeacherProfile')"><div class="boxhov" style="border-color:#4d0026">
                    <div class="pic" style="background:#4d0026">
			<i class="fa fa-user fa-lg" style="color:white"></i>
                    </div>
                    <div class="boxcont">
			<h3>View Profile</h3>
                    </div>
                    </div></a>
            </div>
				<div class="hd6">
				
				</div>
			</div>
			<div class="hd7">
				CopyRigths Reserved
			</div>
		</div>
		<script>
		window.onscroll = function() {myFunction()};

		var hd1 = document.getElementById("hd1");
		var sticky = hd1.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				hd1.classList.add("sticky")
			} else {
				hd1.classList.remove("sticky");
			}
		}
		
			

        function task23(x)
        {
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function()
            {
                if(this.readyState==4 && this.status==200)
                {
                    document.getElementById("mainwork").innerHTML=this.responseText;
                }
            };
    
            xhttp.open("GET","/IoMS/jsp/"+x+".jsp",true);
            xhttp.send();
    
        }
		
            var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);

        
		</script>
	</body>
	<%
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
</html>