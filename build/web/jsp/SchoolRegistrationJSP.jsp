<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>

<html>
    <head>
        <title>IoMS</title>
        <link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body class="schregback">
    <div class="comp">
        <div class="header">
		
			<div class="header wrapper">
				
				<div class="logo">
					<h1><img src="/IoMS/images/logo1.png" width="45px" height="45px">Identification of Meritorious Students</h1>
				</div>
			
				<div class="navigation">
					<table width="100%">
						<tr>
							 <td style="text-align:center;"><a href="/IoMS/index.jsp"><button type="button" class="fa fa-home" id="home" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/SchoolRegistrationHTML.html"><button type="button" class="fa fa-file-text" id="regi" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/SchoolLoginHTML.html"><span></span><button type="button" class="fa fa-sign-in" id="log" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
							<td style="text-align:center;"><a href="/IoMS/html/AdminLoginHTML.html"><button type="button" class="fa fa-adn" id="adm" style="color:white;font-size:40px;background:transparent;border:none;"><span></span></button></a></td>
						</tr>
					</table>
				</div>
				
			</div>
		
		</div>
        
        <%
		
			String schnmd,schtyped,orgnmd,medd,boardd,staddd,add2d,cityd,stated,pind,emaild,mobd,udd,pswd,secqued,answerd,prinmd,schID,userID,c,dd="00000";
            int no,no1,no2,counter,i,j;
            
            
            
            schnmd=request.getParameter("schnm");
            prinmd=request.getParameter("prinm");
            schtyped=request.getParameter("schtype");
            orgnmd=request.getParameter("orgnm");
            medd=request.getParameter("med");
            boardd=request.getParameter("board");
            staddd=request.getParameter("stadd");
            add2d=request.getParameter("add2");
            cityd=request.getParameter("city");
            stated=request.getParameter("state");
            pind=request.getParameter("pin");
            emaild=request.getParameter("email");
            mobd=request.getParameter("mob");
            udd=request.getParameter("ud");
            pswd=request.getParameter("psw");
            secqued=request.getParameter("secque");
            answerd=request.getParameter("answer");
            
            try
			{
				
        %>
        
        <div class="schlog" style="width:700px;margin-right:550px;margin-top:50px">
		<i><b><center><h1></h1></center>
							
			
			
			<fieldset>
			<legend style="font-style:italic;font-size:30px">General Information</legend>
				<div class="hrzline">
					School Name: <%=schnmd%>
				</div>
				</br>
                <div class="hrzline">
                    School Type: <%if(schtyped.equals("071"))
                                        {
                                            out.println("Government");
                                        }
                                        else if(schtyped.equals("080"))
                                        {
                                            out.println("Private");
                                        }%>
				</div>
				</br>
				<div class="hrzline">
					Organization Name: <%=orgnmd%>
				</div>
				</br>
				<div class="hrzline">
					Medium:<%
                                        if(medd.equals("M001"))
                                        {
                                            out.println("Assamese");
                                        }
                                        else if(medd.equals("M002"))
                                        {
                                            out.println("Bengali");
                                        }
                                        else if(medd.equals("M003"))
                                        {
                                            out.println("English");
                                        }
                                        else if(medd.equals("M004"))
                                        {
                                            out.println("Gujrati");
                                        }
                                        else if(medd.equals("M005"))
                                        {
                                            out.println("Hindi");
                                        }
                                        else if(medd.equals("M006"))
                                        {
                                            out.println("Kannada");
                                        }
                                        else if(medd.equals("M007"))
                                        {
                                            out.println("Konkani");
                                        }
                                        else if(medd.equals("M008"))
                                        {
                                            out.println("Malayalam");
                                        }
                                        else if(medd.equals("M009"))
                                        {
                                            out.println("Marathi");
                                        }
                                        else if(medd.equals("M010"))
                                        {
                                            out.println("Odia");
                                        }
                                        else if(medd.equals("M011"))
                                        {
                                            out.println("Tamil");
                                        }
                                        else if(medd.equals("M012"))
                                        {
                                            out.println("Telugu");
                                        }
                                        else if(medd.equals("M013"))
                                        {
                                            out.println("Urdu");
                                        }
                                        %>
				</div></br>
				<div class="hrzline">
					Board: <%
                                        if(boardd.equals("S01"))
                                        {
                                            out.println("State Board");
                                        }
                                        else if(boardd.equals("C02"))
                                        {
                                            out.println("CBSE");
                                        }
                                        else if(boardd.equals("I03"))
                                        {
                                            out.println("ICSE");
                                        }
                                        %>
				</div></br>
                <div class="hrzline">
					U-DISE: <%=udd%>
				</div></br>
                <div class="hrzline">
					Principal&#39s Name: <%=prinmd%>
				</div>
				</fieldset>
				
				<br>
				<br><br>
				
				<fieldset>
				<legend style="font-style:italic;font-size:30px">Address</legend>
				<div class="hrzline">
					Address Line 1: <%=staddd%>
				</div></br>
				<div class="hrzline">
					Address Line 2: <%=add2d%>
				</div></br>
				<div class="hrzline">
					City: <%=cityd%>
				</div></br>
				<div class="hrzline">
					State: <%=stated%>
				</div></br>
				<div class="hrzline">
					Pin Code: <%=pind%>
				</div>
				</fieldset>
				
				<br><br><br>
				
				<fieldset>
				<legend style="font-style:italic;font-size:30px">Contact Details</legend>
				<div class="hrzline">
					e-mail ID: <%=emaild%>
				</div></br>
				<div class="hrzline">
					Mobile No.: <%=mobd%>
				</div>
				</fieldset></i></b>
				<br><br><br>
				
				
                <a href="/IoMS/html/SchoolRegistrationHTML.html"><button type="button" class="bbutton" style="width:47%;"><span>Back</span></button></a>
                <a href="/IoMS/jsp/SchoolRegistrationJSP1.jsp?schnm=<%=schnmd%>&prinm=<%=prinmd%>&schtype=<%=schtyped%>&orgnm=<%=orgnmd%>&med=<%=medd%>&board=<%=boardd%>&stadd=<%=staddd%>&add2=<%=add2d%>&city=<%=cityd%>&state=<%=stated%>&pin=<%=pind%>&email=<%=emaild%>&mob=<%=mobd%>&ud=<%=udd%>&psw=<%=pswd%>&secque=<%=secqued%>&answer=<%=answerd%>"><button type="button" class="button" style="width:47%;"><span>Next</span></button></a>
				
				
			
	</div>		
        
        <%		
			}
			catch(Exception e)
			{
				
					out.println(e.getMessage());
				
			}
		%>
    </body>
</html>