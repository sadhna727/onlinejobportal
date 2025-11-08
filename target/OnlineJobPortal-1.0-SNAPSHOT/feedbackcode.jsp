<%-- 
    Document   : feedbackcode
    Created on : 7 Oct 2025, 9:24:12 pm
    Author     : sadhna kushwaha
--%>





<%@page import="com.mycompany.onlinejobportal.EmailSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
 
<%
   
    String a= request.getParameter("name");
 
    String b = request.getParameter("email");
    String c= request.getParameter("feedback");
    String d = request.getParameter("date");
    String id=request.getParameter("id");
    

    out.print(a + "<br>");
    out.print(b + "<br>");
    out.print(c + "<br>");
    out.print(d + "<br>");
    out.print(id + "<br>");
     
    
    

    DatabaseConnection db = new DatabaseConnection();
    
    String cmd1="select * from feedback where id='"+id+"' ";

String cmd ="insert into  feedback(name,email,feedback,date) values('"+a+"','"+b+"','"+c+"','"+d+"')";
if(db.executeIUD(cmd)){
    out.print("Submit Feedback Successfully");
    response.sendRedirect("adminlogin.jsp?msg=Data Inserted Successfully ");
    }
    else{
    out.print("insert command error?msg=Data Inserted Successfully");
     response.sendRedirect("adminlogin.jsp?msg=Data Inserted Successfully ");
}


%>