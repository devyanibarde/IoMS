<%-- 
    Document   : Attachment
    Created on : 23 Mar, 2019, 11:38:56 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>


<%
    String clas,b;
    int num;
    
    clas=request.getParameter("c");
    num=Integer.parseInt(request.getParameter("n"));
    b=request.getParameter("b");
    
    if(b.equals("1"))
    {
        
        response.sendRedirect("/IoMS/jsp/TopAcademicsPdf.jsp?clas="+clas+"&num="+num+"&b="+b);
    }
    else if(b.equals("4") || b.equals("5") || b.equals("6"))
    {

        response.sendRedirect("/IoMS/jsp/TopSportsPdf.jsp?clas="+clas+"&num="+num+"&b="+b);
    }
%>
