<%-- 
    Document   : checksession
    Created on : 8 Oct 2025, 1:00:32 pm
    Author     : sadhna kushwaha
--%>


<%-- 
    Document   : checksession
    Created on : 30 Sept 2025, 4:45:28 pm
    Author     : rajus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        if (session.getAttribute("admin") == null)
        {
            response.sendRedirect("../adminlogin.jsp");
        }
    } catch (Exception ex) {
        response.sendRedirect("../adminlogin.jsp");
    }
%>
