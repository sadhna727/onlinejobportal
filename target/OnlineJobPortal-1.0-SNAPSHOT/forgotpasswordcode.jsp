<%-- 
    Document   : forgotpasswordpagecode
    Created on : 7 Oct 2025, 9:21:58 pm
    Author     : sadhna kushwaha
--%>

<%-- 
    Document   : forgotpasswordcode
    Created on : 29 Sept 2025, 4:14:38 pm
    Author     : rajus
--%>

<%@page import="com.mycompany.onlinejobportal.EmailSender"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="icon" href="images/job_matrix.jpg" />
<%
String email=request.getParameter("email");    
DatabaseConnection db=new DatabaseConnection();
String cmd="select * from register where email ='"+email+"' ";
ResultSet rs=db.executeSelect(cmd);

if(rs.next())
{
Random random=new Random();
int otp=random.nextInt(100000,999999);
 
String to=email;
String subject="Forgot Password OTP";
String mail="Dear User ,Your OTP for Password reset is"+otp;
EmailSender es=new EmailSender();
es.sendMail(to, subject,mail);

session.setAttribute("fotp",otp);
session.setAttribute("femail", to);

response.sendRedirect("verifyforgototp.jsp");
}
else
{
out.print("forgotpasswordcode");
}


%>
