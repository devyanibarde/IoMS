<%-- 
    Document   : TopStuAca
    Created on : 21 Mar, 2019, 6:36:08 PM
    Author     : Dell
--%>




<html>
    <form id="sim" method="post" action="/IoMS/jsp/TopStudentsAcademics.jsp" style="margin: 20px;">
        <center><div class="admin-grid-txt">
            Meritorious Students List In Academics
        </div>
            <h1 style="color:#e6ccff;">Select Standard</h1></br></br>
        <div class="hrzline">
        <select name="cla" style="width: 30%;padding: 20px;background-color: #ffb3ff;border-color: #660066;border-width: 2px;color: #330033;font-weight: bold">
            <option value="1" selected>1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
        </div></br></br></br>
        <div class="hrzline" style="width:50%">
        <input type="text" name="number" value="50" required>
        <label>Number of Top Students</label>
        </div>
        </br>
        
        
        <input class="stadd" type="submit" value="Show List"></center>
    </form>
      
        
    
     
    
</html>
