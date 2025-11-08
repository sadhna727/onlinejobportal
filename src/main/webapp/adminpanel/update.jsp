<%-- 
    Document   : update.jsp
    Created on : 17 Sept 2025, 12:23:30 pm
    Author     : rajus
--%>

<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String id=request.getParameter("id");   
String a=request.getParameter("jobtitle");
String b=request.getParameter("jobtype");
String c=request.getParameter("companyname");
String d=request.getParameter("companyaddress");
String e=request.getParameter("minqualification");
String f=request.getParameter("minexp");
String g=request.getParameter("skills");
String h=request.getParameter("salary");
String i=request.getParameter("mobile");
String j=request.getParameter("email");
String k=request.getParameter("website");

DatabaseConnection db=new DatabaseConnection();
String cmd="update jobs set jobtitle='"+a+"',jobtype='"+b+"',companyname='"+c+"',companyaddress='"+d+"',minqualification='"+e+"',minyoe='"+f+"',skills='"+g+"',salaryrange='"+h+"',companymobile='"+i+"',companyemail='"+j+"',companywebsite='"+k+"' where id='"+id+"' ";

 if(db.executeIUD(cmd))
        {
            out.print("data updated");
            response.sendRedirect("alljobs.jsp");
        } else {
            out.print("updated command Error");
        }


%>











