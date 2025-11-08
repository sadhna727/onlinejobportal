
<%-- 
    Document   : allcontact
    Created on : 8 Oct 2025, 1:03:48 pm
    Author     : sadhna kushwaha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Contact - Admin Panel</title>
        <%@include file="../headerlinks.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <!--Main Area Start-->
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-sm-2">
                    <%@include file="sidenav.jsp" %>
                </div>

                <!-- Main Content -->
                <div class="col-sm-10">
                    <h1>All Contact Messages</h1>
                    <div class="table-responsive mt-4">
                        <table class="table table-bordered table-striped table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Mobile Number</th>
                                    <th>Role</th>
                                    <th>Address</th>
                                    <th>Message</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try {
                                        DatabaseConnection db = new DatabaseConnection();
                                        String cmd = "SELECT * FROM contact ORDER BY id DESC";
                                        ResultSet rs = db.executeSelect(cmd);
                                        boolean hasData = false;

                                        while (rs.next()) {
                                            hasData = true;
                                %>
                                <tr>
                                    <td><%= rs.getString("id") %></td>
                                    <td><%= rs.getString("name") %></td>
                                    <td><%= rs.getString("email") %></td>
                                    <td><%= rs.getString("mobilenumber") %></td>
                                    <td><%= rs.getString("role") %></td>
                                    <td><%= rs.getString("address") %></td>
                                    <td><%= rs.getString("message") %></td>
                                </tr>
                                <%
                                        }
                                        if (!hasData) {
                                %>
                                <tr>
                                    <td colspan="7" class="text-center text-danger">No contact message found.</td>
                                </tr>
                                <%
                                        }
                                    } catch (Exception ex) {
                                %>
                                <tr>
                                    <td colspan="7" class="text-center text-danger">Something went wrong. Please try again later.</td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--Main Area End-->

        <%@include file="../footerlinks.jsp" %>
    </body>
</html>
