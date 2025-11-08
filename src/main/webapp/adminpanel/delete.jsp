<%-- 
    Document   : delete.jsp
    Created on : 16 Sept 2025, 9:58:45 pm
    Author     : rajus
--%>

<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String a=request.getParameter("id");
out.print(a + "</br>");
try{
DatabaseConnection db=new DatabaseConnection();
String cmd="delete from jobs where id='"+a+"' ";
if(db.executeIUD(cmd))
{
out.print("Data Deleted");
response.sendRedirect("alljobs.jsp");
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














