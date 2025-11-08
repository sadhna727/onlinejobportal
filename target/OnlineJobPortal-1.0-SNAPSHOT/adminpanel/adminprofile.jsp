<%-- 
    Document   : adminprofile
    Created on : 8 Oct 2025, 1:04:57 pm
    Author     : sadhna kushwaha
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="checksession.jsp" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Profile | JobHunt</title>
    <%@include file="../headerlinks.jsp" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
     <link rel="icon" href="images/job_matrix.jpg" />
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Poppins', sans-serif;
        }

        .profile-section {
            margin: 80px 30px 40px 30px; /* spacing from header */
            padding: 30px;
            background: #e7f0ff; /* light blue background */
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
            max-width: 600px;
        }

        .profile-section h2 {
            color: #0b5ed7;
            margin-bottom: 20px;
            font-weight: 600;
            font-size: 28px;
            border-bottom: 2px solid #0b5ed7;
            display: inline-block;
            padding-bottom: 5px;
        }

        .profile-info p {
            font-size: 16px;
            color: #333;
            margin-bottom: 12px;
        }

        .profile-info .label {
            font-weight: 600;
            color: #0b5ed7;
            width: 120px;
            display: inline-block;
        }

        .btn-edit {
            margin-top: 15px;
            background: #0b5ed7;
            color: #fff;
            border: none;
            border-radius: 6px;
            padding: 8px 20px;
            text-decoration: none;
            transition: 0.3s;
        }

        .btn-edit:hover {
            background: #0a58ca;
        }

        @media(max-width: 768px){
            .profile-section {
                margin: 60px 15px 30px 15px;
                padding: 20px;
            }
            .profile-info .label {
                display: block;
                margin-bottom: 5px;
            }
        }
    </style>
</head>
<body>
    <%@include file="header.jsp" %>

    <div class="container-fluid">
        <div class="row">
            <!-- Side Nav -->
            <div class="col-sm-2 p-0">
                <%@include file="sidenav.jsp" %>
            </div>

            <!-- Main Content -->
            <div class="col-sm-10 d-flex justify-content-center">
                <div class="profile-section">
                    <h2>Admin Profile</h2>
                    <div class="profile-info">
                        <%
                            String email = (String)session.getAttribute("admin");
                            DatabaseConnection db = new DatabaseConnection();
                            ResultSet rs = db.executeSelect("SELECT * FROM admin WHERE email='" + email + "'");
                            if(rs.next()) {
                        %>
                            <p><span class="label">Email ID:</span> <%= rs.getString("email") %></p>
                            <p><span class="label">Password:</span> <%= rs.getString("password") %></p>
                            <a href="updateadmin.jsp" class="btn-edit"><i class="fa fa-pen"></i> Edit Profile</a>
                        <%
                            } else {
                                out.print("<p class='text-danger'>Admin not found!</p>");
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="../footerlinks.jsp" %>
</body>
</html>