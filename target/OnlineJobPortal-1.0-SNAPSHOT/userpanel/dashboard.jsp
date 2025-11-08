<%-- 
    Document   : dashboard
    Created on : 9 Sept 2025, 6:02:08 pm
    Author     : sadhna
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checksession.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Panel-Dashboard</title>
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
                    <h1>User Dashboard</h1>

                    <div class="row">
                        
                        <%--            <%
                        DatabaseConnection db = new DatabaseConnection();
                        String cmd1 = "select count(*) as totaljob from jobs";
                        ResultSet rs1 = db.executeSelect(cmd1);
                        rs1.next();
                        
                        String userid = session.getAttribute("userid").toString();
                        String cmd2 = "select count(*) as totaljob from applyjob where userid='"+userid+"' ";
                        ResultSet rs2 = db.executeSelect(cmd2);
                        rs2.next();
                        
                        %>

                        <div class="col-sm-3">
                            <div class="card text-bg-primary mb-3 w-100" >
                                <div class="card-header">Current Jobs</div>
                                <div class="card-body">
                                    <h5 class="card-title">No of Jobs: <%= rs1.getString("totaljob") %></h5>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                            <div class="card text-bg-success mb-3 w-100" >
                                <div class="card-header">Applied Jobs</div>
                                <div class="card-body">
                                    <h5 class="card-title">No of Jobs: <%= rs2.getString("totaljob") %></h5>
                                </div>
                            </div>
                        </div>

                    </div>

                        --%>
                </div>
            </div>
        </div>
        
    </body>
</html>








