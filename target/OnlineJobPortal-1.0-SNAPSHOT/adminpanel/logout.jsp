<%-- 
    Document   : logout
    Created on : 15 Sept 2025, 6:06:48?pm
    Author     : rajus
--%>

<%
session.removeAttribute("admin");
response.sendRedirect("../adminlogin.jsp");

%>