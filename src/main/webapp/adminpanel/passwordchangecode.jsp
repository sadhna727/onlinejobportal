<%-- 
    Document   : passwordchangecode
    Created on : 8 Oct 2025, 12:58:58 pm
    Author     : sadhna kushwaha
--%>

<%-- 
    Document   : passwordchangecode
    Created on : 28 Sept 2025, 11:49:10 pm
    Author     : rajus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@include file="checksession.jsp" %>
 <link rel="icon" href="images/job_matrix.jpg" />
<%
    String oldpass = request.getParameter("oldpass");
    String newpass = request.getParameter("newpass");
    String confirmpass = request.getParameter("confirmpass");

    String emailid = session.getAttribute("admin").toString();

    DatabaseConnection db = new DatabaseConnection();

    String cmd = "select * from admin where email='" +emailid+ "' ";
    ResultSet rs = db.executeSelect(cmd);
    rs.next();

    if (rs.getString("password").equals(oldpass)) {
        if (newpass.equals(confirmpass)) {
            String cmd1 = "update admin set password ='" + newpass + "' where email='" +emailid+ "'";
            if (db.executeIUD(cmd1)) {
                response.sendRedirect("passwordchange.jsp?msg=Password Changed Successfully");
            } else {
                out.print("Update Command Error");
            }
        } else {
            out.print("New Password Incorrect ");
        }
    }
        else
{
out.print("old Password Incorrect");
}


%>
