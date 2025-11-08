<%-- 
    Document   : logout
    Created on : 13 Sept 2025, 5:26:47 pm
    Author     : rajus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.removeAttribute("user");
response.sendRedirect("../login.jsp");
%>