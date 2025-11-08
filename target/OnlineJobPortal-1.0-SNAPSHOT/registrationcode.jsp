<%-- 
    Document   : registrationcode
    Created on : 10 Sept 2025, 4:52:05 pm
    Author     : rajus
--%>




<%@page import="com.mycompany.onlinejobportal.EmailSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
    String a = request.getParameter("fname");
    String b = request.getParameter("lname");
    String c = request.getParameter("email");
    String d = request.getParameter("password");
    String e = request.getParameter("mobile");

    out.print(a + "<br>");
    out.print(b + "<br>");
    out.print(c + "<br>");
    out.print(d + "<br>");
    out.print(e + "<br>");

    DatabaseConnection db = new DatabaseConnection();
    
    String cmd1="select * from register where email='"+c+"' ";
    ResultSet rs = db.executeSelect(cmd1);
    if(rs.next())
            {
                out.print("email id alrady exit");
            }else{
    Random random=new Random();
    int otp=random.nextInt(100000,999999);

    String cmd = "insert into register(fname,lname,email,password,mobile,otp,otpstatus,verifystatus)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+otp+"','false','false')";
    if(db.executeIUD(cmd)) {
        out.print("Registraion Successfully");
        String sendto = c;
        String subject = "welcome to online job portal";
        String mail = "welcome to online job portal , your otp is"+otp+"Do not share it with anyone";
        EmailSender mymail = new EmailSender();
        mymail.sendMail(sendto,subject,mail);
        session.setAttribute("otp",otp);
         session.setAttribute("email",c);
        response.sendRedirect("verify.jsp");
    } else {
        out.print("Registration Failed");
    }
}


%>