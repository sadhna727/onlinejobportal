<%-- 
    Document   : changepasswordcode
    Created on : 7 Oct 2025, 9:42:27 pm
    Author     : sadhna kushwaha
--%>
<%-- 
    Document   : changepasswordcode
    Created on : 27 Sept 2025, 5:30:15 pm
    Author     : rajus
--%>
<%@include file="checksession.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String oldpass = request.getParameter("oldpass");
    String newpass = request.getParameter("newpass");
    String confirmpass = request.getParameter("confirmpass");

    String userid = session.getAttribute("userid").toString();

    DatabaseConnection db = new DatabaseConnection();

    String cmd = "select * from register where id='" + userid + "' ";
    ResultSet rs = db.executeSelect(cmd);
    rs.next();

    if (rs.getString("password").equals(oldpass)) {
        if (newpass.equals(confirmpass)) {
            String cmd1 = "update register set password ='" + newpass + "' where id='" + userid + "'";
            if (db.executeIUD(cmd1)) {
                response.sendRedirect("changepassword.jsp?msg=Password Changed Successfully");
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