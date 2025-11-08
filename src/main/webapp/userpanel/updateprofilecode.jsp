<%-- 
    Document   : updateprofilecode
    Created on : 26 Sept 2025, 4:00:03 pm
    Author     : sadhna kushwaha
--%>

<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page import="java.util.Map"%>
<%@page import="com.mycompany.onlinejobportal.FileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 
FileUpload fp= new FileUpload(request);

String path ="C:/Users/sadhna kushwaha/OneDrive/Desktop/OnlineJobPortal/OnlineJobPortal/src/main/webapp/photo/";

fp.doUpload(path);

Map<String, String> data =fp.getFormData();

String a =data.get("fname");
String b =data.get("lname");
String c =data.get("mobile");
String d=data.get("dob");
String e =data.get("gender");
String f =data.get("address");
String g =data.get("city");
String h =data.get("state");
String i =data.get("highqualification");
String j =data.get("skills");
String k =data.get("exp");
String l =data.get("photo");

String m = data.get("userid");



out.print( a +"</br>");
out.print( b +"</br>");
out.print( c +"</br>");
out.print( d +"</br>");
out.print( e +"</br>");
out.print( f +"</br>");
out.print( g +"</br>");
out.print( h +"</br>");
out.print( i +"</br>");
out.print( j +"</br>");
out.print( k +"</br>");
out.print( l +"</br>");
out.print( m +"</br>");




DatabaseConnection db= new DatabaseConnection();

String  cmd = "update register set fname='"+a+"', lname='"+b+"', mobile='"+c+"',dob='"+d+"',gender='"+e+"',address='"+f+"', city='"+g+"',  state='"+h+"',highqualification='"+i+"', skills='"+j+"', experience='"+k+"', photo='"+l+"' where id='"+m+"' ";



if (db.executeIUD(cmd))
{
response.sendRedirect("updateprofile.jsp?msg=Profile Update");
} else{
  out.print("update command error");
}
%>
