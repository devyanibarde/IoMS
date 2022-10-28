<%-- 
    Document   : Insert
    Created on : 18 Mar, 2019, 1:58:13 AM
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
	
    <center><h5 style="color:#ff9999;font-size:50px;">Add Students Details</h5></center>
    <form name="frm" method="post" action="/IoMS/jsp/InsertStudentData1.jsp">
    <div class="hrzline">
	<input type="text" name="adn" autocomplete="off" required>
	<label>Adhaar Number</label>
    </div>
    <div class="hrzline">
	<input type="text" name="nm" autocomplete="off" required>
	<label>Name</label>
    </div>
    Level:
	
            <div style="width:100%;">
							<select name="lvl">
								<option value="interschool">Inter-School</option>
								<option value="district">District-Level</option>
								<option value="state">State-Level</option>
								<option value="none" selected>None</option>
                                                        </select></div>
    
    <div class="hrzline">
	<input type="text" name="ais" autocomplete="off">
	<label>Sport Name</label>
    </div>
    <div class="hrzline">
	<input type="text" name="aia" autocomplete="off">
	<label>Achievements in Academics</label>
    </div>
    <div class="hrzline">
	<input type="text" name="peri" autocomplete="off" required>
	<label>Term I Percentage</label>
    </div>
    <div class="hrzline">
	<input type="text" name="perii" autocomplete="off" required>
	<label>Term II Percentage</label>
    </div>
        
    <input class="stadd" type="submit" name="sub" value="Submit" style="float:right;font-size:15px;margin-top:38px;font-size:35px;margin-bottom:40px;background:#ff1a1a">
    

</form>

	<a href="/IoMS/jsp/ClassTeacherJSP.jsp" class="but" style="float:left;text-decoration:none;font-size:30px;text-align:center;width:35%">Back</a>	

<script>
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
</html>
