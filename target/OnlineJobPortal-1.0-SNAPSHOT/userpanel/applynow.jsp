<%-- 
    Document   : applynow
    Created on : 20 Sept 2025, 4:32:33 pm
    Author     : sadhna kushwaha
--%>

<%--

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply now</title>
        <%@include file="../headerlinks.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
 

        <!--   Header row end -->

        <div class="conatiner-fluid">
            <div class="row ">
                <div class="col-sm-2">
                    <%@include file="sidenav.jsp" %>

                </div>
                <div class="col-sm-10">
                    <h1>Apply Now</h1>
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3">
                            <%
                            String jobid =request.getParameter("jobid");
                            %>
                            
                            <form method="post" action="applynowcode.jsp" enctype="multipart/form-data">
                                <input type="hidden" name="jobid" value="<%= jobid %>"/>
                                Enter Your Name
                                <input type="text" name="name" class="form-control" placeholder="Enter your name" required/>
                                </br>
                                 Enter Emial ID
                                 <input type="email" name="email" class="form-control" placeholder="Enter email id" required/>
                                </br>
                                 Enter mobile number
                                <input type="number" name="mobile" class="form-control" placeholder="Enter mobile number" required/>
                                </br>
                                 Enter Your CV/Resume[in pdf form]
                                <input type="file" name="resume" class="form-control" required/>
                                </br>
                                <button class="btn btn-primary">submit</button>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

--%>

<%-- 
    Document   : applynow
    Created on : 23 Sept 2025, 3:25:29 pm
    Author     : rajus
--%>
<%@include file="checksession.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Apply Now - Job Matrix</title>
    <%@include file="../headerlinks.jsp" %>
     <link rel="icon" href="images/job_matrix.jpg" />
    <style>
        body {
            background-color: #f4f6f8;
            font-family: 'Poppins', sans-serif;
        }

        h1 {
            color: #0b5ed7;
            margin-bottom: 30px;
            text-align: center;
        }

        .apply-card {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.08);
            margin: 30px auto;
            max-width: 600px;
        }

        .apply-card label {
            font-weight: 600;
            margin-top: 15px;
        }

        .apply-card input[type="text"],
        .apply-card input[type="email"],
        .apply-card input[type="number"],
        .apply-card input[type="file"] {
            width: 100%;
            padding: 10px 12px;
            margin-top: 5px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            transition: 0.3s;
        }

        .apply-card input:focus {
            border-color: #0b5ed7;
            box-shadow: 0 0 0 0.2rem rgba(11,94,215,.25);
        }

        .apply-card button {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background: #0b5ed7;
            color: white;
            font-weight: 600;
            border: none;
            border-radius: 6px;
            transition: 0.3s;
        }

        .apply-card button:hover {
            background: #0952a2;
        }

        @media(max-width: 768px) {
            .apply-card {
                margin: 20px;
                padding: 20px;
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
                <h1>Apply Now</h1>

                <div class="apply-card">
                    <%
                        String jobid = request.getParameter("jobid");
                        String uid = session.getAttribute("userid").toString();
                        DatabaseConnection db = new DatabaseConnection();
                        String cmd = "SELECT * FROM register WHERE id='" + uid + "'";
                        ResultSet rs = db.executeSelect(cmd);
                        if (rs.next()) {
                    %>

                    <form method="post" action="applynowcode.jsp" enctype="multipart/form-data">
                        <input type="hidden" name="jobid" value="<%= jobid %>"/>

                        <label>Full Name</label>
                        <input type="text" name="name" readonly value="<%= rs.getString("fname") %> <%= rs.getString("lname") %>" required/>

                        <label>Email ID</label>
                        <input type="email" name="email" readonly value="<%= rs.getString("email") %>" required/>

                        <label>Mobile Number</label>
                        <input type="number" name="mobile" readonly value="<%= rs.getString("mobile") %>" required/>

                        <label>Upload Your CV (PDF)</label>
                        <input type="file" name="resume" accept=".pdf" required/>

                        <button type="submit">Submit Application</button>
                    </form>

                    <% } %>
                </div>

            </div>
        </div>
    </div>

</body>
</html>







