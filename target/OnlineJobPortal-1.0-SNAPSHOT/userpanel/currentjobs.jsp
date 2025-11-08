<%-- 
    Document   : currentjobs
    Created on : 20 Sept 2025, 3:46:59 pm
    Author     : sadhna
--%>




<%@include file="checksession.jsp" %>  
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Current Jobs-User Panel </title>
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
                    <h1>Current Jobs</h1>
                    <div class="row">
                    
                
                      <%
                    try {
                        DatabaseConnection db = new DatabaseConnection();
                        String cmd = "SELECT * FROM jobs";
                        ResultSet rs = db.executeSelect(cmd);

                        boolean hasJobs = false;
                        while (rs.next()) {
                            hasJobs = true;
                %>
                    <div class="card col-3">
                        <div class="card w-100">
                        <div class="card-header">
                            <h3>New Job Alert</h3>
                        </div>
                        <div class="card-body">
                            Job Title:<%=rs.getString("jobtitle")%>
                            Job Type<%=rs.getString("jobtype")%>
                            Company Name:<%=rs.getString("companyname")%>
                            Company Address:<%=rs.getString("companyaddress")%>
                            Minimum Qualification:<%=rs.getString("minimumqualification")%>
                            Minimum Experience:<%=rs.getString("minyoe")%>
                            Skills:<%=rs.getString("skills")%>
                            Salary Range:<%=rs.getString("salaryrange")%>
                            Company mobile:<%=rs.getString("companymobile")%>
                            Company Email:<%=rs.getString("companyemail")%>
                            Company Website:<%=rs.getString("companywebsite")%>
                        </div>
                        <div class="card-footer">
                            
                            <%
                                String uid = session.getAttribute("userid").toString();
                                String cmd1 = "select * from register where id='" + uid + "'";
                                ResultSet rs1 = db.executeSelect2(cmd1);
                                rs1.next();
                                
                            if (rs1.getString("verifystatus") != null && rs1.getString("verifystatus").equals("true")) {
                            
                            %>
                            <a href="applynow.jsp?jobid=<%= rs.getString("id")%>" class="btn btn-success w-100">Apply Now</a>
                            <%
                                } else {
                            %>
                                 <button class="btn btn-success w-100">Verify Account to Apply</button>  
                            <%
                                }
                            %>
                            
                        </div>
                    </div>
                    </div>
                     <%
                    }
                    if (!hasJobs) {
                %>
                <div class="col-12 text-center">
                    <div class="alert alert-warning mt-3 shadow-sm">⚠️ No jobs available right now. Please check back later.</div>
                </div>
                <%
                    }
                } catch (Exception ex) {
                %>
                <div class="alert alert-danger mt-3">❌ Something went wrong. Please try again later.</div>
                <%
                    }
                %>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>





    <%--
<%@include file="checksession.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Current Jobs - User Panel | JobMatrix</title>
    <%@include file="../headerlinks.jsp" %>
    <link rel="icon" href="images/job_matrix.jpg" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            background: #f4f6f9;
        }

        /* Dashboard layout */
        .dashboard-wrapper {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            background: linear-gradient(180deg, #1e3c72, #2a5298);
            color: #fff;
            position: fixed;
            top: 60px; /* height of header.jsp */
            left: 0;
            bottom: 0;
            overflow-y: auto;
            scrollbar-width: thin;
            scrollbar-color: #1e3c72 #2a5298;
            padding-top: 10px;
        }

        /* Main content area */
        .content-area {
            flex: 1;
            margin-left: 250px; /* same as sidebar width */
            padding: 30px 40px;
            margin-top: 60px; /* align with header */
        }

        h2.text-primary {
            color: #1e3c72 !important;
            font-weight: 700;
            margin-bottom: 25px;
            font-size: 1.9rem;
            border-left: 5px solid #1e3c72;
            padding-left: 10px;
            animation: fadeInDown 0.5s ease-in-out;
        }

        /* Job cards */
        .card {
            border: none;
            border-radius: 12px;
            background: #fff;
            box-shadow: 0 3px 18px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
            height: 100%;
        }

        .card:hover {
            transform: translateY(-6px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
        }

        .card-header {
            background: linear-gradient(90deg, #1e3c72, #2a5298);
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
            color: #fff;
            padding: 12px 18px;
        }

        .card-header h5 {
            margin: 0;
            font-size: 1.2rem;
            font-weight: 600;
        }

        .card-body {
            padding: 20px;
            font-size: 0.95rem;
        }

        .card-body p {
            margin: 6px 0;
            color: #333;
        }

        .card-body i {
            color: #1e3c72;
        }

        .card-footer {
            background: #f8f9fa;
            border-top: 1px solid #eee;
            padding: 12px;
        }

        .btn-success {
            background: linear-gradient(90deg, #00b09b, #96c93d);
            border: none;
            font-weight: 600;
            border-radius: 8px;
            transition: 0.3s;
        }

        .btn-success:hover {
            transform: scale(1.03);
            opacity: 0.9;
        }

        .btn-secondary {
            border-radius: 8px;
        }

        @keyframes fadeInDown {
            from {opacity: 0; transform: translateY(-15px);}
            to {opacity: 1; transform: translateY(0);}
        }

        /* Responsive */
        @media (max-width: 992px) {
            .sidebar {
                position: relative;
                width: 100%;
                height: auto;
                top: 0;
            }
            .content-area {
                margin-left: 0;
                margin-top: 0;
                padding: 25px;
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
            <h2 class="text-primary"><i class="bi bi-briefcase-fill me-2"></i>Current Job Openings</h2>
            <div class="row g-4">
                <%
                    try {
                        DatabaseConnection db = new DatabaseConnection();
                        String cmd = "SELECT * FROM jobs";
                        ResultSet rs = db.executeSelect(cmd);

                        boolean hasJobs = false;
                        while (rs.next()) {
                            hasJobs = true;
                %>
                <div class="col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            <h5><i class="bi bi-building me-1"></i> <%=rs.getString("jobtitle")%></h5>
                        </div>
                        <div class="card-body">
                            <p><strong>Type:</strong> <%=rs.getString("jobtype")%></p>
                            <p><strong>Company:</strong> <%=rs.getString("companyname")%></p>
                            <p><strong>Address:</strong> <%=rs.getString("companyaddress")%></p>
                            <p><strong>Qualification:</strong> <%=rs.getString("minqualification")%></p>
                            <p><strong>Experience:</strong> <%=rs.getString("minyoe")%> years</p>
                            <p><strong>Skills:</strong> <%=rs.getString("skills")%></p>
                            <p><strong>Salary:</strong> ₹<%=rs.getString("salaryrange")%></p>
                            <hr>
                            <p><i class="bi bi-telephone me-1"></i> <%=rs.getString("companymobile")%></p>
                            <p><i class="bi bi-envelope me-1"></i> <%=rs.getString("companyemail")%></p>
                            <p><i class="bi bi-globe me-1"></i> 
                                <a href="<%=rs.getString("companywebsite")%>" target="_blank" class="text-decoration-none text-primary">Visit Website</a>
                            </p>
                        </div>
                        <div class="card-footer text-center">
                            <%
                                String uid = session.getAttribute("userid").toString();
                                String cmd1 = "select * from register where id='" + uid + "'";
                                ResultSet rs1 = db.executeSelect2(cmd1);
                                rs1.next();
                                if (rs1.getString("verifystatus") != null && rs1.getString("verifystatus").equals("true")) {
                            %>
                            <a href="applynow.jsp?jobid=<%= rs.getString("id")%>" class="btn btn-success w-100">Apply Now</a>
                            <%
                                } else {
                            %>
                            <button class="btn btn-secondary w-100" disabled>Verify Account to Apply</button>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
                <%
                    }
                    if (!hasJobs) {
                %>
                <div class="col-12 text-center">
                    <div class="alert alert-warning mt-3 shadow-sm">⚠️ No jobs available right now. Please check back later.</div>
                </div>
                <%
                    }
                } catch (Exception ex) {
                %>
                <div class="alert alert-danger mt-3">❌ Something went wrong. Please try again later.</div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>
    
    --%>
