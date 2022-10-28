function load(x)
{
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange=function()
    {
        if(this.readyState==4 && this.status==200)
        {
            document.getElementById("general").innerHTML=this.responseText;
        }
    };
    xhttp.open("GET","/IoMS/documents/"+x+".txt",true);
    xhttp.send();
}








