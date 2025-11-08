<%-- 
    Document   : updateprofile
    Created on : 25 Sept 2025, 4:26:04 pm
    Author     : sadhna kushwaha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                    <h1>Update Profile</h1>

                    <%

                        String userid = session.getAttribute("userid").toString();
                        String cmd = "select * from register where id='" + userid + "'";
                        DatabaseConnection db = new DatabaseConnection();
                        ResultSet rs = db.executeSelect(cmd);
                        rs.next();

                    %>
                    <form method="post" action="updateprofilecode.jsp" enctype="multipart/form-data">
                        <input type="hidden" name="userid" value="<%=userid%>"/>
                        First Name
                        <input type="text" name="fname" class="form-control" value="<%= rs.getString("fname")%>" required/>
                        <br/>
                        Last Name
                        <input type="text" name="lname" class="form-control" value="<%= rs.getString("lname")%>" required/>
                        <br/>
                        Email
                        <input type="email" name="email" readonly class="form-control" value="<%= rs.getString("email")%>" required/>
                        <br/>
                        Password
                        <input type="password" name="password" readonly class="form-control" value="<%= rs.getString("password")%>" required/>
                        <br/>
                        Mobile
                        <input type="number" name="mobile" class="form-control" value="<%= rs.getString("mobile")%>" required/>
                        <br/>
                        Date of Birth
                        <input type="date" name="dob" value="<%=rs.getString("dob")%>" required class="form-control"/>
                        <br/>
                        Gender
                        <input type="radio" name="gender" value="Male" <%if (rs.getString("gender") != null && rs.getString("gender").equals("Male")) {
                                out.print("checked");
                            }%>/>Male
                        <input type="radio" name="gender" value="Female" <%if (rs.getString("gender") != null && rs.getString("gender").equals("Female")) {
                                out.print("checked");
                            }%>/>Female
                        <br/>
                        Address
                        <textarea class="form-control" name="address" required=""><%=rs.getString("address")%></textarea>
                        </br>
                        City
                        <input type="text" name="city" value="<%=rs.getString("city")%>" required class="form-control"/>
                        <br>
                        State
                        <input type="text" name="state" value="<%=rs.getString("state")%>" required class="form-control"/>
                        <br>
                        Highest Qualification
                        <input type="text" name="highqualification" value="<%=rs.getString("highqualification")%>" required class="form-control"/>
                        <br>
                        Skills
                        <input type="text" name="skills" value="<%=rs.getString("skills")%>" required class="form-control" placeholder="HTML,CSS"/>
                        <br>
                        Experience
                        <input type="text" name="exp" value="<%=rs.getString("experience")%>" required class="form-control"/>
                        <br>
                        
                        
                        <img src="../photo/<%=rs.getString("photo")%>" alt="alt" style="height:100px;"/>
                        <br>
                        <input type="file" name="photo"   required class="form-control" placeholder="photo"/>
                        <br>
                        <br>
                        <%--   <img src="../photo/<%=rs.getString("photo")%>" style="height: 100px;"/> --%>

                        </br>
                        <button class="btn btn-primary">Update profile</button>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>


