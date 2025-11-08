<%-- 
    Document   : contactcode
    Created on : 7 Oct 2025, 9:26:53 pm
    Author     : sadhna kushwaha
--%>



<%@page import="com.mycompany.onlinejobportal.EmailSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="icon" href="images/job_matrix.jpg" />
 
<%
   
    String a= request.getParameter("name");
 
    String b = request.getParameter("email");
    String c= request.getParameter("mobile");
    String d= request.getParameter("role");
      String e= request.getParameter("address");
    String f= request.getParameter("message");
     
    
    String id=request.getParameter("id");
    

    out.print(a + "<br>");
    out.print(b + "<br>");
    out.print(c + "<br>");
     out.print(d+ "<br>");
      out.print(e + "<br>");
    
      out.print(f+ "<br>");
      

    DatabaseConnection db = new DatabaseConnection();
      String cmd1="select * from contact where id='"+id+"' ";

String cmd ="insert into  contact(name,email,mobilenumber,role,address,message)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
if(db.executeIUD(cmd)){
    out.print("Submit Successfully");
    response.sendRedirect("adminlogin.jsp?msg=Data Inserted Successfully");
      
    }
    else{
   response.sendRedirect("adminlogin.jsp?msg=Data Inserted unSuccessfully");
}


%>