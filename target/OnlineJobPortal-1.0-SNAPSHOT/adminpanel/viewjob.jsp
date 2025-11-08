<%-- 
    Document   : viewjob
    Created on : 24 Sept 2025, 4:47:13 pm
    Author     : sadhna kushwaha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view job - Admin Panel</title>
        <%@include file="../headerlinks.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <!--Main Area Start-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2">
                    <%@include file="sidenav.jsp" %>
                </div>
                <div class="col-sm-10">
                    <h1>View job details</h1>


                    <%
                        String jobid = request.getParameter("jobid");
                        DatabaseConnection db = new DatabaseConnection();
                        String cmd = "select * from jobs where id='" + jobid + "' ";
                        ResultSet rs = db.executeSelect(cmd);
                        rs.next();

                    %>


                    <b>Job Title:</b> <%= rs.getString("jobtitle")%>
                    <br/>
                    <b>Job Type:</b> <%= rs.getString("jobtype")%>
                    <br/>

                    <b> company name:</b><%=rs.getString("companyname")%>
                    <br/>
                    <b> company address:</b><%=rs.getString("companyaddress")%>
                    <br/>
                    <b> minimum qualification:</b><%=rs.getString("minimumqualification")%>
                    <br/>
                    <b> minimum experience:</b><%=rs.getString("minyoe")%>
                    <br/>
                    <b> skills:</b><%=rs.getString("skills")%>
                    <br/>
                    <b> Salary range:</b><%=rs.getString("salaryrange")%>
                    <br/>
                    <b> company mobile:</b><%=rs.getString("companymobile")%>
                    <br/>
                    <b> company email:</b><%=rs.getString("companyemail")%>
                    <br/>
                    <b> company website:</b><%=rs.getString("companywebsite")%>
                    <br/>
                   
                   

                </div>
            </div>
        </div>
        <!--Main Area End-->

        <%@include file="../footerlinks.jsp" %>
    </body>
</html>

