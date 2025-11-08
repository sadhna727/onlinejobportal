 <%@page import="com.mycompany.onlinejobportal.EmailSender"%>
<%-- 
    Document   : loginPageCode
    Created on : 12 Sept 2025, 5:27:13 pm
    Author     : mahes
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String a = request.getParameter("email");
    String b = request.getParameter("password");

    DatabaseConnection db = new DatabaseConnection();

    String cmd = "select * from register where email='" + a + "' and password='" + b + "'";
    ResultSet rs = db.executeSelect(cmd);
    if (rs.next()) {
        if (rs.getString("otpstatus").equals("true")) {
            out.print("login success");
            session.setAttribute("user", a);
            session.setAttribute("userid", rs.getString("id") );

            response.sendRedirect("userpanel/dashboard.jsp");
            session.setAttribute("email", a);
        } else {
            out.print("otp not verifyed for this email");
            
            String otp =rs.getNString("otp");
            EmailSender es = new EmailSender();
            String Subject =" otp for registration";
            String message =" your otp for registration is -"+a;
            es.sendMail(a,Subject,message);
            
            session.setAttribute("otp", otp);
            session.setAttribute("email", a);
            
            response.sendRedirect("verify.jsp");
            
        }
    } else {
        out.print("email or password is incorrect");
    }


%>