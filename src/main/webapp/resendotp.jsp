<%-- 
    Document   : resendotp
    Created on : 15 Oct 2025, 5:07:34 pm
    Author     : sadhna kushwaha
--%>

<%@page import="com.mycompany.onlinejobportal.EmailSender"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

String otp =session.getAttribute("otp").toString();
String email = session.getAttribute("email").toString();

EmailSender es=new EmailSender();

String subject ="otp from job portal";
String message ="Your otp code for registration in job portal is - "+otp;

es.sendMail(email,subject,message);

response.sendRedirect("verify.jsp");


%>



