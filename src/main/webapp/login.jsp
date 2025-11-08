    <%-- 
    Document   : login
    Created on : 10 Sept 2025, 3:52:53 pm
    Author     : rajus
--%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Job Portal Login</title>
     <%@include file="headerlinks.jsp" %>
     <%@include file="navbar.jsp" %>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #f5f5f5;
      height: 100vh;
      display: flex;
    }

    /* Left Image Section */
    .left-section {
      flex: 1;
      background: #1a43bf url('images/z1.jpg') no-repeat center center/cover;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #fff;
      font-size: 2rem;
      font-weight: bold;
    }

    /* Right Form Section */
    .right-section {
      flex: 1;
      display: flex;
      align-items: center;
      justify-content: center;
      background: #ffffff;
    }

    .login-card {
      background: #fff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      width: 350px;
    }

    .login-card h3 {
      text-align: center;
      margin-bottom: 25px;
      color: #1a43bf;
    }

    .form-control {
      width: 100%;
      padding: 12px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
    }

    .btn-login {
      background: #fa6021;
      border: none;
      padding: 12px;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      transition: 0.3s;
    }

    .btn-login:hover {
      background: #1a43bf;
    }

    .links {
      margin-top: 15px;
    }

    .links a {
      color: #fa6021;
      text-decoration: none;
      font-size: 14px;
    }

    .links a:hover {
      color: #1a43bf;
    }
  </style>
</head>
<body>

  <!-- Left Section for Image -->
  <div class="left-section">
    
</div>

  <!-- Right Section for Login -->
  <div class="right-section">
    <div class="login-card">
      <h3>Job Portal Login</h3>
      <form method="post" action="logincode.jsp">
        <!-- Email -->
        <input type="email" name="email" class="form-control" placeholder="Enter Email Address" required>

        <!-- Password -->
        <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" required>

        <!-- Login Button -->
        <button type="submit" class="btn-login text-white">Login</button>
      </form>

      <!-- Extra Links -->
      <div class="text-center mt-3 links">
        <a href="forgotPassword.jsp">Forgot Password?</a> | 
        <a href="resetpasswordpage.jsp">reset password</a>
      </div>
    </div>
  </div>

</body>
</html>




