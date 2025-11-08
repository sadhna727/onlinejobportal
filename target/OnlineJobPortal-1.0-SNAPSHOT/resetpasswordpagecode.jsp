<%-- 
    Document   : resetpasswordpagecode
    Created on : 7 Oct 2025, 9:13:27 pm
    Author     : sadhna kushwaha
--%>



<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="icon" href="images/job_matrix.jpg" />
<%
    String newpass = request.getParameter("newpass");
    String confirm = request.getParameter("confirmpass");

    String email = session.getAttribute("femail").toString();

    if (newpass.equals(confirm)) {
        String cmd = "update register set password ='" + newpass + "' where email='" + email + "'";
        DatabaseConnection db = new DatabaseConnection();
        if (db.executeIUD(cmd)) {
            response.sendRedirect("login.jsp");
        } else {
            out.print("Update Command Error");
        }
    } else {
        out.print("New Password Not Matched Confirm Password");
    }

%>