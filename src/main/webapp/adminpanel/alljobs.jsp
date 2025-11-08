<%-- 
    Document   : alljobs
    Created on : 16 Sept 2025, 5:41:16 pm
    Author     : rajus
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Jobs - Admin Panel</title>
        <%@include file="../headerlinks.jsp" %>
        <style>
            table {
                border-collapse: collapse;
                width: 60%;
                margin: 20px auto;
            }
            table, th, td {
                border: 1px solid #333;
            }
            th, td {
                padding: 10px;
                text-align: left;
            }
            th {
                background: #f2f2f2;
            }
            button {
                margin: 15px auto;
                display: block;
                padding: 8px 20px;
                background: #007bff;
                border: none;
                color: white;
                cursor: pointer;
            }
            button:hover {
                background: #0056b3;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <!--Main Area Start-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2">
                    <%@include file="sidenav.jsp" %>
                </div>
                <div class="col-sm-10 ">
                    <h1>All Jobs</h1>
                    <br> <br>
                    <div class="table-responsive">
                    <table id="mytable" class="table-bordered table-striped table-hover text-center">
                        <thead>
                        <tr>
                            <th class="table-dark">ID</th>
                            <th>Job Title</th>
                            <th>Job Type</th>
                            <th>Company Name</th>
                            <th>Company Address</th>
                            <th>Qualification</th>
                            <th>Experience</th>
                            <th>Skills</th>
                            <th>Salary</th>
                            <th>Mobile</th>
                            <th>Email</th>
                            <th>Website</th>
                            <th>Delete</th>
                            <th>Edit</th>

                        </tr>
                        </thead>
                        <tbody>
                        <%
                            try {
                                DatabaseConnection db = new DatabaseConnection();
                                String cmd = "select * from jobs order by id desc";
                                ResultSet rs = db.executeSelect(cmd);
                                while (rs.next()) {


                        %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td>
                                <%=rs.getString("jobtitle")%>
                                <a href="viewapplication.jsp?jobid=<%= rs.getString("id")%>" class="btn btn-info">view application</a>
                            </td>
                            <td><%=rs.getString("jobtype")%></td>
                            <td><%=rs.getString("companyname")%></td>
                            <td><%=rs.getString("companyaddress")%></td>
                            <td><%=rs.getString("minimumqualification")%></td>
                            <td><%=rs.getString("minyoe")%></td>
                            <td><%=rs.getString("skills")%></td>
                            <td><%=rs.getString("salaryrange")%></td>
                            <td><%=rs.getString("companymobile")%></td>
                            <td><%=rs.getString("companyemail")%></td>
                            <td><%=rs.getString("companywebsite")%></td>
                            <td><a href="delete.jsp?id=<%=rs.getString("id")%>" onclick="return confirm('Are You Sure Want To Delete ')">Delete</a></td>
                            <td><a href="edit.jsp?id=<%=rs.getString("id")%>">Edit</a> </td>
                        </tr>
                        
                        <%
                                }
                            } catch (Exception ex) {
                                out.print("Something Went Wrong!");
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
