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
<style>
.hrzline input[type=text]
{
	width:100%;
	padding:10px 0;
	font-size:16px;
	color:#fff;
	margin-bottom:30px;
	border: none;
	border-bottom:2px solid #fff;
	outline:none;
	background:transparent;
    font-size:20px;
    font-style:italic;
    font-weight:bold;
    font-family:tahoma;
}

.hrzline textarea
{
	width:100%;
    min-height:100px;
	padding:10px 0;
	font-size:16px;
	color:#fff;
	margin-bottom:30px;
	border: none;
	border-bottom:2px solid #fff;
	outline:none;
	background:transparent;
    font-size:20px;
    font-style:italic;
    font-family:tahoma;
    resize:none;
}
</style>
</head>
<body>
	
    <center><h5>Delete Students Details</h5></center>
    <form name="frm" method="post" action="/IoMS/jsp/DeleteStudentData1.jsp#wh">
					
        <div class="hrzline">
            <input type="text" name="adno" autocomplete="off" required>
            <label>Adhaar Number</label>
        </div>
        
        <input class="stadd" type="submit" name="sub" value="Submit">
        </br>
        </br>
    </form>
	

</body>
</html>
