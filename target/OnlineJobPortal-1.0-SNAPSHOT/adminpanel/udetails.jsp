<%-- 
    Document   : udetails
    Created on : 8 Oct 2025, 12:55:37 pm
    Author     : sadhna kushwaha
--%>
<%-- 
    Document   : userdetails
    Created on : 27 Sept 2025, 4:02:27 pm
    Author     : rajus
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checksession.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Details - Admin Panel |</title>
    <%@include file="../headerlinks.jsp" %>
 <link rel="icon" href="images/job_matrix.jpg" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .content-area {
            margin-left: 250px; /* sidebar width */
            margin-top: 70px;   /* header height */
            padding: 20px 30px;
            min-height: calc(100vh - 70px);
        }

        h1.page-title {
            text-align: center;
            font-size: 28px;
            font-weight: 700;
            color: #1e3c72;
            margin-bottom: 25px;
            position: relative;
            padding-bottom: 10px;
        }

        h1.page-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 3px;
            background: linear-gradient(to right, #1e3c72, #2a5298);
            border-radius: 2px;
        }

        .user-card {
            background: #fff;
            border-radius: 12px;
            padding: 30px 25px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            max-width: 700px;
            margin: 0 auto;
        }

        .user-card img {
            height: 120px;
            width: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 3px solid #1e3c72;
        }

        .user-card h2 {
            margin-bottom: 15px;
            color: #1e3c72;
        }

        .user-card .detail-row {
            display: flex;
            justify-content: space-between;
            margin: 8px 0;
            font-size: 15px;
        }

        .user-card .detail-row b {
            color: #1e3c72;
        }

        @media (max-width: 768px) {
            .user-card .detail-row {
                flex-direction: column;
                text-align: left;
            }
        }
    </style>
</head>

<body>
    <%@include file="header.jsp" %>
    <%@include file="sidenav.jsp" %>

    <div class="content-area">
        <h1 class="page-title">User Details</h1>

        <%
            try {
                String id = request.getParameter("id");
                DatabaseConnection db = new DatabaseConnection();
                String cmd = "SELECT * FROM register WHERE id='" + id + "'";
                ResultSet rs = db.executeSelect(cmd);

                if (rs.next()) {
        %>

        <div class="user-card text-center">
            <img src="../photo/<%= rs.getString("photo") %>" alt="User Photo"/>
            <h2><%= rs.getString("fname") %> <%= rs.getString("lname") %></h2>

            <div class="detail-row"><b>Email:</b> <span><%= rs.getString("email") %></span></div>
            <div class="detail-row"><b>Mobile:</b> <span><%= rs.getString("mobile") %></span></div>
            <div class="detail-row"><b>Password:</b> <span><%= rs.getString("password") %></span></div>
            <div class="detail-row"><b>OTP:</b> <span><%= rs.getString("otp") %></span></div>
            <div class="detail-row"><b>OTP Status:</b> <span><%= rs.getString("otpstatus") %></span></div>
            <div class="detail-row"><b>Verify Status:</b> <span><%= rs.getString("verifystatus") %></span></div>
            <div class="detail-row"><b>DOB:</b> <span><%= rs.getString("dob") %></span></div>
            <div class="detail-row"><b>Gender:</b> <span><%= rs.getString("gender") %></span></div>
            <div class="detail-row"><b>Address:</b> <span><%= rs.getString("address") %>, <%= rs.getString("city") %>, <%= rs.getString("state") %></span></div>
            <div class="detail-row"><b>Highest Qualification:</b> <span><%= rs.getString("highqualification") %></span></div>
            <div class="detail-row"><b>Skills:</b> <span><%= rs.getString("skills") %></span></div>
            <div class="detail-row"><b>Experience:</b> <span><%= rs.getString("exp") %></span></div>
        </div>

        <%
                } else {
        %>
        <p class="text-danger text-center">User not found!</p>
        <%
                }
            } catch (Exception ex) {
                out.print("<p class='text-danger text-center'>Something went wrong!</p>");
            }
        %>
    </div>

    <%@include file="../footerlinks.jsp" %>
</body>
</html>