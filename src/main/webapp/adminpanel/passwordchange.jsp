<%-- 
    Document   : passwordchange
    Created on : 8 Oct 2025, 12:58:13 pm
    Author     : sadhna kushwaha
--%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checksession.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Change Password - Admin Panel</title>
    <%@include file="../headerlinks.jsp" %>
</head>

<body>
    <%@include file="header.jsp" %>
    

    <!-- Main Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-2">
                <%@include file="sidenav.jsp" %>
            </div>
            <div class="col-sm-10">
                <h1 class="mb-4">Change Password</h1>
                <div class="col-sm-6 offset-sm-3">
                    <form method="post" action="passwordchangecode.jsp">
                        <div class="mb-3">
                            <label class="form-label">Enter Old Password</label>
                            <input type="password" name="oldpass" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Enter New Password</label>
                            <input type="password" name="newpass" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Confirm New Password</label>
                            <input type="password" name="confirmpass" class="form-control" required>
                        </div>

                        <button type="submit" class="btn btn-primary w-100">Change Password</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%@include file="../footerlinks.jsp" %>
</body>
</html>
