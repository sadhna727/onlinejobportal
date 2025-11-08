<%-- 
    Document   : allfeedback
    Created on : 8 Oct 2025, 1:02:07 pm
    Author     : sadhna kushwaha
--%>

<%-- 
    Document   : feedbackadmin
    Created on : 6 Oct 2025
    Author     : rajus

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel - User Feedback | JobHunt</title>
    <%@include file="../headerlinks.jsp" %>
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f6f9;
            margin: 0;
            overflow-x: hidden;
        }

        .dashboard-wrapper {
            display: flex;
            min-height: 100vh;
            margin-top: 60px; /* header height */
        }

        .sidebar {
            width: 250px;
            background: linear-gradient(180deg, #1e3c72, #2a5298);
            color: #fff;
            position: fixed;
            top: 60px;
            left: 0;
            bottom: 0;
            overflow-y: auto;
            padding-top: 10px;
        }

        .content-area {
            flex: 1;
            margin-left: 250px;
            padding: 30px 40px;
            margin-top: 60px;
        }

        h2 {
            color: #1e3c72;
            font-weight: 700;
            margin-bottom: 25px;
            font-size: 1.8rem;
            border-left: 5px solid #1e3c72;
            padding-left: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        table thead {
            background: linear-gradient(135deg, #007bff, #1e90ff);
            color: #fff;
        }

        table th, table td {
            padding: 12px 15px;
            text-align: center;
        }

        table tbody tr:nth-child(even) {
            background: #f1f7ff;
        }

        table tbody tr:hover {
            background: #dbe9ff;
            transition: 0.3s;
        }

        .btn-view {
            background: linear-gradient(135deg, #28a745, #34ce57);
            color: #fff;
            padding: 5px 12px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 500;
        }

        .btn-view:hover {
            background: linear-gradient(135deg, #218838, #28a745);
        }

        @media (max-width: 992px) {
            .sidebar {
                position: relative;
                width: 100%;
                height: auto;
            }
            .content-area {
                margin-left: 0;
                padding: 20px;
                margin-top: 0;
            }
        }
    </style>
</head>
<body>
      <%@include file="header.jsp" %> 

    <div class="dashboard-wrapper">
        <!-- Sidebar -->
        <div class="sidebar">
            <%@include file="sidenav.jsp" %>
        </div>

        <!-- Main Content -->
        <div class="content-area">
            <h2><i class="bi bi-chat-left-text me-2"></i>User Feedback</h2>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Feedback</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                DatabaseConnection db = new DatabaseConnection();
                                String cmd = "SELECT * FROM feedback ORDER BY id DESC";
                                ResultSet rs = db.executeSelect(cmd);

                                boolean hasData = false;
                                while(rs.next()) {
                                    hasData = true;
                        %>
                        <tr>
                            <td><%= rs.getString("id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("email") %></td>
                            <td><%= rs.getString("feedback") %></td>
                            <td><%= rs.getString("date") %></td>
                        </tr>
                        <%
                                }
                                if(!hasData) {
                        %>
                        <tr>
                            <td colspan="5" class="text-center text-danger">No feedback submitted yet.</td>
                        </tr>
                        <%
                                }
                            } catch(Exception ex) {
                        %>
                        <tr>
                            <td colspan="5" class="text-center text-danger">Something went wrong. Please try again later.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>


--%>


<%-- 
    Document   : allfeedback
    Created on : 8 Oct 2025, 1:02:07 pm
    Author     : sadhna kushwaha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Feedback - Admin Panel</title>
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
                    <h1>User Feedback</h1>
                    <div class="table-responsive mt-4">
                        <table class="table table-bordered table-striped table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Feedback</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try {
                                        DatabaseConnection db = new DatabaseConnection();
                                        String cmd = "SELECT * FROM feedback ORDER BY id DESC";
                                        ResultSet rs = db.executeSelect(cmd);
                                        boolean hasData = false;

                                        while (rs.next()) {
                                            hasData = true;
                                %>
                                <tr>
                                    <td><%= rs.getString("id") %></td>
                                    <td><%= rs.getString("name") %></td>
                                    <td><%= rs.getString("email") %></td>
                                    <td><%= rs.getString("feedback") %></td>
                                    <td><%= rs.getString("date") %></td>
                                </tr>
                                <%
                                        }
                                        if (!hasData) {
                                %>
                                <tr>
                                    <td colspan="5" class="text-center text-danger">No feedback submitted yet.</td>
                                </tr>
                                <%
                                        }
                                    } catch (Exception ex) {
                                %>
                                <tr>
                                    <td colspan="5" class="text-center text-danger">Something went wrong. Please try again later.</td>
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
