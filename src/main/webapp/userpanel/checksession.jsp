<%-- 
    Document   : checksession
    Created on : 7 Oct 2025, 9:45:46 pm
    Author     : sadhna kushwaha
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        if (session.getAttribute("user") == null)
        {
            response.sendRedirect("../login.jsp");
        }
    } catch (Exception ex) {
        response.sendRedirect("../login.jsp");
    }
%>