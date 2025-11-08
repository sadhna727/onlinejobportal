<%-- 
    Document   : addjobcode
    Created on : 16 Sept 2025, 4:48:41 pm
    Author     : rajus
--%>

<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String a=request.getParameter("title");
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
String cmd="insert into jobs(jobtitle,jobtype,companyname,companyaddress,minimumqualification,minyoe,skills,salaryrange,companymobile,companyemail,companywebsite)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')";
if(db.executeIUD(cmd))
{
out.print("Job Added Successfully");
response.sendRedirect("alljobs.jsp?msg=Data Inserted Successfully");
}
else
{
out.print("Insert Command Error");
response.sendRedirect("alljobs.jsp?error= Insert Error");
}


%>
