<%-- 
    Document   : profile
    Created on : 8 Oct 2025, 12:48:27 pm
    Author     : sadhna kushwaha
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="checksession.jsp" %> --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile - Job Matrix</title>
    <%@include file="../headerlinks.jsp" %>
    <style>
        body {
            background-color: #f4f6f8;
            font-family: 'Poppins', sans-serif;
        }

        .profile-section {
            background: #ffffff;
            border-radius: 12px;
            padding: 30px;
            margin: 40px 20px; /* space from header & sides */
            box-shadow: 0 6px 20px rgba(0,0,0,0.08);
        }

        .profile-header {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 30px;
        }

        .profile-img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid #0b5ed7;
        }

        .profile-header h2 {
            color: #0b5ed7;
            margin: 0;
        }

        .profile-header p {
            margin: 5px 0 0 0;
            color: #555;
        }

        .profile-info {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 15px 30px;
        }

        .profile-info div {
            background: #f0f4ff;
            padding: 12px 15px;
            border-radius: 8px;
            font-size: 15px;
            color: #333;
        }

        .profile-info div b {
            color: #0b5ed7;
        }

        @media(max-width: 768px){
            .profile-header {
                flex-direction: column;
                align-items: flex-start;
            }
            .profile-img {
                width: 100px;
                height: 100px;
            }
        }
    </style>
</head>
<body>
    <%@include file="header.jsp" %>

    <div class="container-fluid">
        <div class="row">
            <!-- Side Nav -->
            <div class="col-md-2 p-0">
                <%@include file="sidenav.jsp" %>
            </div>

            <!-- Main Content -->
            <div class="col-md-10">
                <div class="profile-section">
                    <%
                        String id = session.getAttribute("userid").toString();
                        DatabaseConnection db = new DatabaseConnection();
                        String cmd = "SELECT * FROM register WHERE id='" + id + "'";
                        ResultSet rs = db.executeSelect(cmd);
                        if (rs.next()) {
                    %>
                    <!-- Profile Header -->
                    <div class="profile-header">
                        <img src="../photo/<%= rs.getString("photo") %>" alt="Profile Picture" class="profile-img">
                        <div>
                            <h2><%= rs.getString("fname") + " " + rs.getString("lname") %></h2>
                            <p><%= rs.getString("highqualification") %></p>
                        </div>
                    </div>

                    <!-- Profile Info Grid -->
                    <div class="profile-info">
                        <div><b>Email:</b> <%= rs.getString("email") %></div>
                        <div><b>Mobile:</b> <%= rs.getString("mobile") %></div>
                        <div><b>DOB:</b> <%= rs.getString("dob") %></div>
                        <div><b>Gender:</b> <%= rs.getString("gender") %></div>
                        <div><b>Address:</b> <%= rs.getString("address") %></div>
                        <div><b>City:</b> <%= rs.getString("city") %></div>
                        <div><b>State:</b> <%= rs.getString("state") %></div>
                        <div><b>Skills:</b> <%= rs.getString("skills") %></div>
                        <div><b>Experience:</b> <%= rs.getString("experience") %></div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>

</body>
</html>