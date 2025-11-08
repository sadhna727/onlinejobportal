<%-- 
    Document   : acceptcode
    Created on : 26 Sept 2025, 5:19:18 pm
    Author     : sadhna kushwaha
--%>

<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

String id =request.getParameter("id");
 String cmd ="update register set verifystatus='true'  where id='"+id+"'          ";

DatabaseConnection db =new DatabaseConnection();
if (db.executeIUD(cmd))
{
 response.sendRedirect("alluser.jsp?msg=Status updated");
}
else{

out.print("error in update command");
}









%>