<%-- 
    Document   : uupdate
    Created on : 8 Oct 2025, 1:07:23 pm
    Author     : sadhna kushwaha
--%>


<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checksession.jsp" %>
 
<%
String a=request.getParameter("id");
out.print(a + "</br>");
try{
DatabaseConnection db=new DatabaseConnection();
String cmd="delete from register where id='"+a+"' ";
if(db.executeIUD(cmd))
{
out.print("Data Deleted");
response.sendRedirect("alluser.jsp");
}
else
{
out.print("Delete Command Error");
}
    }
    catch(Exception ex)
    {
    out.print(ex.getMessage());
    }
%>