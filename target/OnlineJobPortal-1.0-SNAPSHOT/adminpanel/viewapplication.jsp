<%-- 
    Document   : viewapplication
    Created on : 24 Sept 2025, 4:33:42 pm
    Author     : sadhna kushwaha
--%>




<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>alljobapplication - Admin Panel</title>
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
                    <h1>All job application</h1>
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-border table-striped table-hover" >
                                <thead class="table-dark">
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th> Email</th>
                                        <th> Mobile</th>
                                        <th>Resume</th>
                                        <th>job title</th>
                                        <th>job type</th>
                                        <th>company name</th>
                                        <th>salary</th>
                                        <th>delete</th>
                                    </tr>
                                </thead>

                                <tbody>

                                    <%
                                        try {
                                            String jobid=request.getParameter("jobid");
                                            DatabaseConnection db = new DatabaseConnection();
                                            String cmd = "select * from applyjob where jobid='"+jobid+"'  ";
                                            ResultSet rs = db.executeSelect(cmd);
                                            while (rs.next()) {

                                                String jid = rs.getString("jobid");
                                                String cmd1 = "select * from jobs where id='" + jid + "' ";
                                                ResultSet jobrs = db.executeSelect2(cmd1);
                                                jobrs.next();

                                    %>
                                    <tr>
                                        <td><%=rs.getString("id")%></td>
                                        <td><%=rs.getString("name")%></td>
                                        <td><%=rs.getString("email")%></td>
                                        <td><%=rs.getString("mobile")%></td>
                                        <td>
                                            <a href="../upload/"<%=rs.getString("resume")%> target="_blank">view resume</a>
                                        </td>
                                        <td><%=jobrs.getString("jobtitle")%>
                                            <a href="viewjob.jsp?jobid=<%= jid%>" class="btn btn-info">view job</a>
                                        </td>
                                         
                                        <td><%=jobrs.getString("jobtype")%></td>
                                        <td><%=jobrs.getString("companyname")%></td>
                                        <td><%=jobrs.getString("salaryrange")%></td>

                                        <td><a href="jobdelete.jsp?id=<%=rs.getString("id")%>" onclick="return confirm('Are You Sure Want To Delete ')">Delete</a></td>
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
        </div>
        <!--Main Area End-->

        <%@include file="../footerlinks.jsp" %>
    </body>
</html>
 


