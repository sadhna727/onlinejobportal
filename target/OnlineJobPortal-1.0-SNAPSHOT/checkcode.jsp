<%-- 
    Document   : checkcode
    Created on : 12 Sept 2025, 2:57:54 pm
    Author     : rajus
--%>

<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String a = request.getParameter("otpcode");

    String oldotp = session.getAttribute("otp").toString();
    String email = session.getAttribute("email").toString();
    if (a.equals(oldotp)) {
        String cmd = "update register set otpstatus='true' where email='" + email + "' ";
        DatabaseConnection db = new DatabaseConnection();
        if (db.executeIUD(cmd)) {
            out.print("otp verify");
             response.sendRedirect("login.jsp");
        } else {
            out.print("otp not verify");
           
        }
    } else {
        out.print("otp code error");
    }


%>