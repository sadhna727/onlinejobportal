<%-- 
    Document   : addjob
    Created on : 15 Sept 2025, 5:56:13 pm
    Author     : rajus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Job - Admin Panel</title>
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
                    <h1>Add New Job</h1>
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3">
                            <form method="post" action="addjobcode.jsp">
                                Enter Job Title
                                <input type="text" name="title" placeholder="Job Title" class="form-control"/>
                                <br><!-- comment -->
                                Enter Job Type
                                <select name="jobtype" class="form-control">
                                    <option value="">-Select-</option>
                                    <option>Work From Office</option>
                                    <option>Work From Home/Remote</option>
                                </select>
                                <br><!-- comment -->
                                Enter Company Name
                                <input type="text" class="form-control" name="companyname" placeholder="Company Name" required/>
                                <br><!-- comment -->
                                Enter Company Address
                                <input type="text" class="form-control" name="companyaddress" placeholder="Company Address" required/>
                                <br><!-- comment -->
                                Enter Minimum Qualification Details
                                <input type="text" class="form-control" name="minqualification" placeholder="Minimum Qualification" required/>
                                <br><!-- comment -->
                                Enter Minimum Year of Experience
                                <input type="text" class="form-control" name="minexp" placeholder="Minimum Experience" required/>
                                <br><!-- comment -->
                                Enter Skills Required For This Job
                                <textarea  class="form-control" name="skills" placeholder="Skills" required/></textarea>
                                <br><!-- comment -->
                                Enter Salary Range
                                <input type="text" class="form-control" name="salary" placeholder="Salary Range" required/>
                                <br><!-- comment -->
                                Enter Company Mobile Number
                                <input type="text" class="form-control" name="mobile" placeholder="Company Mobile Number"required/>
                                <br><!-- comment -->
                                Enter Company Email Address
                                <input type="text" class="form-control" name="email" placeholder="Company Email Address" required />
                                <br><!-- comment -->
                                Enter Company Website URL
                                <input type="text" class="form-control" name="website" placeholder="Company Website URL" required/>
                                <br><!-- comment -->
                                <button class="btn btn-primary">Post Jobs </button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Main Area End-->

        <%@include file="../footerlinks.jsp" %>
    </body>
</html>
