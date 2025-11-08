<%-- 
    Document   : dashboard
    Created on : 9 Sept 2025, 6:01:57 pm
    Author     : sadhna
--%>



<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard - Admin Panel</title>
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
                    <h1>Admin Dashboard</h1>

                    <%--


                    <%
                        DatabaseConnection db = new DatabaseConnection();
                        ResultSet rs1 = db.executeSelect("SELECT count(*) AS totaljob FROM jobs");
                        rs1.next();
                        ResultSet rs2 = db.executeSelect("SELECT count(*) AS totaluser FROM register");
                        rs2.next();
                        ResultSet rs3 = db.executeSelect("SELECT count(*) AS totaljobapplication FROM applyjob");
                        rs3.next();
                        ResultSet rs4 = db.executeSelect("SELECT count(*) AS totalfeedback FROM feedback");
                        rs4.next();
                        ResultSet rs5 = db.executeSelect("SELECT count(*) AS totalcontact FROM contact");
                        rs5.next();

                    %>

                    

                    <div class="dashboard-row">
                        <div class="dashboard-card bg-primary">
                            <i class="fas fa-briefcase"></i>
                            <div class="card-header">Total Jobs</div>
                            <div class="card-title"><%= rs1.getString("totaljob")%></div>
                        </div>

                        <div class="dashboard-card bg-dark">
                            <i class="fas fa-users"></i>
                            <div class="card-header">Total Users</div>
                            <div class="card-title"><%= rs2.getString("totaluser")%></div>
                        </div>

                        <div class="dashboard-card bg-success">
                            <i class="fas fa-file-alt"></i>
                            <div class="card-header">Total Applications</div>
                            <div class="card-title"><%= rs3.getString("totaljobapplication")%></div>
                        </div>
                        <div class="dashboard-card bg-danger">
                            <i class="fas fa-comments-o"></i>
                            <div class="card-header">Total FeedBacks</div>
                            <div class="card-title"><%= rs4.getString("totalfeedback")%></div>
                        </div>
                        <div class="dashboard-card bg-info">
                            <i class="fas fa-user"></i>
                            <div class="card-header">Total Contacts</div>
                            <div class="card-title"><%= rs5.getString("totalcontact")%></div>
                        </div>

                    </div>
                    --%>


                </div>
            </div>
        </div>
        <!--Main Area End-->

        <%@include file="../footerlinks.jsp" %>
    </body>
</html>


