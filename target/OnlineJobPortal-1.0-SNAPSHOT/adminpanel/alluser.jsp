<%-- 
    Document   : alluser
    Created on : 20 Sept 2025, 5:00:47 pm
    Author     : sadhna kushwaha
--%>






<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Users - Admin Panel</title>
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
                    <h1>All Registered Users</h1>
                    <div class="table-responsive mt-4">
                        <table class="table table-bordered table-striped table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>ID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Mobile</th>
                                    <th>OTP</th>
                                    <th>OTP Status</th>
                                    <th>Action</th>
                                    <th>Verify User</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try {
                                        DatabaseConnection db = new DatabaseConnection();
                                        String cmd = "SELECT * FROM register ORDER BY id DESC";
                                        ResultSet rs = db.executeSelect(cmd);

                                        while (rs.next()) {
                                %>
                                <tr>
                                    <td><%= rs.getString("id") %></td>
                                    <td>
                                        <%= rs.getString("Fname") %><br>
                                        <a href="userdetails.jsp?id=<%= rs.getString("id") %>" class="btn btn-warning btn-sm mt-1">Full Details</a>
                                    </td>
                                    <td><%= rs.getString("Lname") %></td>
                                    <td><%= rs.getString("Email") %></td>
                                    <td><%= rs.getString("password") %></td>
                                    <td><%= rs.getString("mobile") %></td>
                                    <td><%= rs.getString("otp") %></td>
                                    <td><%= rs.getString("Otpstatus") %></td>
                                    <td>
                                        <a href="udelete.jsp?id=<%= rs.getString("id") %>" 
                                           class="btn btn-danger btn-sm"
                                           onclick="return confirm('Are you sure you want to delete this user?');">
                                           Delete
                                        </a>
                                    </td>
                                    <td>
                                        <%
                                            if ("true".equals(rs.getString("verifystatus"))) {
                                        %>
                                            <b>Verified</b><br>
                                            <a href="rejectcode.jsp?id=<%= rs.getString("id") %>" class="btn btn-secondary btn-sm mt-1">Reject</a>
                                        <%
                                            } else {
                                        %>
                                            <b>Unverified</b><br>
                                            <a href="acceptcode.jsp?id=<%= rs.getString("id") %>" class="btn btn-success btn-sm mt-1">Accept</a>
                                        <%
                                            }
                                        %>
                                    </td>
                                </tr>
                                <%
                                        }
                                    } catch (Exception ex) {
                                        out.print("<tr><td colspan='10' class='text-danger'>Something went wrong!</td></tr>");
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
