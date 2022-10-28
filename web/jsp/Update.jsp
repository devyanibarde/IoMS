<%-- 
    Document   : Update
    Created on : 18 Mar, 2019, 12:38:09 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" type="text/css" href="/IoMS/IoMSCSS.css">

</head>
<body>
	
    <center><h5>Update Students Details</h5></center>
    <form name="frm" method="post" action="/IoMS/jsp/UpdateStudentData1.jsp">
					
        <div class="hrzline">
            <input type="text" name="adno" autocomplete="off" required>
            <label>Adhaar Number</label>
        </div>
        <a href="/IoMS/jsp/ClassTeacherJSP.jsp" class="stadd" style="background:#ff1a1a;float:left">Back</a>
        <input class="stadd" type="submit" name="sub" value="Submit" style="float:right">
        </br>
        </br>
    </form>
	

</body>
</html>
