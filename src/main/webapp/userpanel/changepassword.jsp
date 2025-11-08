<%-- 
    Document   : chnagepassword
    Created on : 7 Oct 2025, 9:39:52 pm
    Author     : sadhna kushwaha
--%>


<%-- 
    Document   : changepassword
    Created on : 7 Oct 2025, 9:39:52 pm
    Author     : sadhna kushwaha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checksession.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Panel - Change Password | JobMatrix</title>
    <%@include file="../headerlinks.jsp" %>
</head>

<body>
    <%@include file="header.jsp" %>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-sm-2">
                <%@include file="sidenav.jsp" %>
            </div>

            <!-- Main Content -->
            <div class="col-sm-10">
                <h1>Change Password</h1>
                <hr>

                <form method="post" action="changepasswordcode.jsp">
                    <div class="mb-3">
                        <label for="oldpass" class="form-label">Enter Your Old Password</label>
                        <input type="password" id="oldpass" name="oldpass" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label for="newpass" class="form-label">Enter Your New Password</label>
                        <input type="password" id="newpass" name="newpass" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label for="confirmpass" class="form-label">Confirm Your New Password</label>
                        <input type="password" id="confirmpass" name="confirmpass" class="form-control" required>
                    </div>

                    <button type="submit" class="btn btn-primary">Change Password</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
