<%-- 
    Document   : adminlogincode
    Created on : 15 Sept 2025, 3:51:11 pm
    Author     : rajus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String a=request.getParameter("email");
String b=request.getParameter("password");

DatabaseConnection db=new DatabaseConnection();
String cmd="select * from admin where email='"+a+"' and password='"+b+"' ";
ResultSet rs = db.executeSelect(cmd);
if(rs.next())
{
out.print("Login Success");
session.setAttribute("admin", a);
response.sendRedirect("adminpanel/dashboard.jsp");
}
else
{
out.print("Email ID or Password is Incorrect");
}

%>
