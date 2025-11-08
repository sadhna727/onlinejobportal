<%-- 
    Document   : applynowcode
    Created on : 22 Sept 2025, 5:14:03 pm
    Author     : sadhna kushwaha
--%>



<%--
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page import="java.util.Map"%>
<%@page import="com.mycompany.onlinejobportal.FileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    FileUpload myupload = new FileUpload(request);

    String folder = "C:/Users/sadhna kushwaha/OneDrive/Desktop/OnlineJobPortal/OnlineJobPortal/src/main/webapp/upload/";

    myupload.doUpload(folder);
    
 Map<String,String> data =myupload.getFormData();
 
String a=data.get("name");
String b=data.get("email");
String c=data.get("mobile");
String d=data.get("resume");
String e=data.get("jobid");
String f=session.getAttribute("userid").toString();

DatabaseConnection db =new DatabaseConnection();
String cmd ="insert into  applyjob(name,email,mobile,resume,jobid,userid) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
if(db.executeIUD(cmd)){
    out.print(" job aplly successfully");
    }
    else{
    out.print("insert command error");
    }

%>


--%>



<%-- 
    Document   : applynowcode
    Created on : 23 Sept 2025, 3:27:26 pm
    Author     : rajus
--%>

<%@include file="checksession.jsp" %>
<%@page import="com.mycompany.onlinejobportal.FileUpload"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="icon" href="images/job_matrix.jpg" />
<%
    FileUpload myupload = new FileUpload(request);

    String folder = "C:/Users/rajus/OneDrive/문서/NetBeansProjects/com.mycompany_OnlineJobPortal_war_1.0-SNAPSHOT/src/main/webapp/upload/";

    myupload.doUpload(folder);
    
 Map<String,String> data =myupload.getFormData();
 
String a=data.get("name");
String b=data.get("email");
String c=data.get("mobile");
String d=data.get("resume");
String e=data.get("jobid");
String f=session.getAttribute("userid").toString();

DatabaseConnection db =new DatabaseConnection();
String cmd ="insert into  applyjob(name,email,mobile,resume,jobid,userid) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
if(db.executeIUD(cmd)){
    out.print(" job apply successfully");
    response.sendRedirect("currentjobs.jsp");
    }
    else{
    out.print("insert command error");
    }

%>
