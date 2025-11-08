<%-- 
    Document   : adminlogin
    Created on : 13 Sept 2025, 5:30:54 pm
    Author     : rajus
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login - Job Portal</title>
    <%@include file="headerlinks.jsp" %>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #f5f5dc, #fff0f0);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-container {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            overflow: hidden;
            display: flex;
            max-width: 900px;
            width: 100%;
        }
        /* Left Illustration Panel */
        .login-left {
            flex: 1;
           
            background: url('images/y1.jpeg') ;
            background-size: cover;
            display: none; /* Mobile pe hide */
        }
        @media(min-width: 768px) {
            .login-left {
                display: block;
            }
        }
        /* Right Login Form */
        .login-right {
            flex: 1;
            padding: 50px;
        }
        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .login-header i {
            font-size: 3rem;
            color: #dc3545;
        }
        .login-header h3 {
            margin-top: 10px;
            font-weight: 700;
            color: #333;
        }
        .form-control {
            border-radius: 10px;
            padding: 12px;
        }
        .btn-login {
            border-radius: 10px;
            padding: 12px;
            font-weight: 600;
            background: #dc3545;
            border: none;
            transition: 0.3s;
            width: 100%;
        }
        .btn-login:hover {
            background: #bb2d3b;
            transform: scale(1.05);
        }
        .login-footer {
            margin-top: 20px;
            text-align: center;
        }
        .login-footer a {
            color: #dc3545;
            text-decoration: none;
            font-weight: 500;
        }
        .login-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
  <%@include file="navbar.jsp" %>
    <div class="login-container">
        
        <!-- Left Image -->
        <div class="login-left"></div>
        
        <!-- Right Form -->
        <div class="login-right">
            <div class="login-header">
                <i class="bi bi-shield-lock-fill"></i>
                <h3>Admin Login</h3>
                <p class="text-muted">Sign in to manage Job Portal</p>
            </div>

            <form method="post" action="adminlogincode.jsp">
                <label class="form-label">Admin Email ID</label>
                <input type="email" class="form-control mb-3" name="email" placeholder="Enter Admin Email" required>

                <label class="form-label">Admin Password</label>
                <input type="password" class="form-control mb-4" name="password" placeholder="Enter Password" required>

                <button type="submit" class="btn btn-login">Login</button>
            </form>

            <div class="login-footer">
                <a href="#">Forgot Password?</a>
            </div>
        </div>

    </div>

    <%@include file="footerlinks.jsp" %>
</body>
</html>
