<%-- 
    Document   : SendMail
    Created on : 23 Mar, 2019, 1:17:08 PM
    Author     : Dell
--%>


<html>
    <body>
        
     <form method="post" action="/IoMS/jsp/MailTop1.jsp?q=3">
         <h1 style="color:#e6ccff;">
             Send To:</h1></br>
            <div style="display: flex">
                <div class="checkb-div"><input type="checkbox" name="HM" value="P" checked class="checkb"></div>
                <div style="margin: 10px 10px;float: left;width: 50%;"><h1 style="color:#e6ccff;">Principals</h1></div>
                <div class="checkb-div"><input type="checkbox" name="CT" value="C" checked></div>
                <div style="margin: 10px 10px;float: right;width: 50%;"><h1 style="color:#e6ccff;">Class Teachers</h1></div>
            </div>
            </h1></br>
            <div>
            <textarea class="mailtxt" name="body">
                Write Here...
            </textarea>
            </div></br>
            
            <center><input class="stadd" type="submit" value="Send"></center>
        </form>
        
    </body>
</html>
