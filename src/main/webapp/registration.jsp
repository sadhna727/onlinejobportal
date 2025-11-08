<%-- 
    Document   : registration
    Created on : 10 Sept 2025, 3:53:03 pm
    Author     : rajus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Candidate Registration - Job Portal</title>
    <%@include file="headerlinks.jsp" %>
   

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
               background: url('images/x1.jepg.jpg') no-repeat center center fixed;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background-size: cover;
        }
        .register-box {
            background: #fff;
            border-radius: 15px;
            width: 90%;
            max-width: 480px;
            padding: 30px;
            margin-top: 90px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }
        .register-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .register-header i {
            font-size: 50px;
            color: #5b86e5;
        }
        .register-header h3 {
            font-weight: 700;
            margin-top: 10px;
            color: #333;
        }
        .form-control {
            border-radius: 10px;
            padding: 12px;
        }
        .btn-register {
            border-radius: 25px;
            padding: 12px;
            font-weight: 600;
            width: 100%;
          /*  background: linear-gradient(135deg, #36d1dc, #5b86e5);  */
          background-color:  #f94449;
            color: white;
            border: none;
            transition: 0.3s;
        }
        .btn-register:hover {
           background: linear-gradient(135deg, #5b86e5, #36d1dc); 
            transform: scale(1.05);
        }
        .register-footer {
            text-align: center;
            margin-top: 15px;
        }
        .register-footer a {
            color: #5b86e5;
            font-weight: 600;
            text-decoration: none;
        }
        .register-footer a:hover {
            text-decoration: underline;
        }
        .input-label {
            font-weight: 500;
            margin-top: 10px;
            margin-bottom: 5px;
            display: block;
        }
     
    </style>
</head>
<body>
  <%@include file="navbar.jsp" %>
  <br><br>
      <br><br><br>
      <br><br>
      <br><br><br>
    <div class="register-box">
        <div class="register-header">
            <i class="bi bi-person-circle"></i>
            <h3>Candidate Registration</h3>
            <p class="text-muted">Create your account to apply for jobs</p>
        </div>

        <form method="post" action="registrationcode.jsp">
            <label class="input-label">First Name</label>
            <input type="text" name="fname" required placeholder="Enter First Name" class="form-control" />

            <label class="input-label">Last Name</label>
            <input type="text" name="lname" required placeholder="Enter Last Name" class="form-control" />

            <label class="input-label">Email ID</label>
            <input type="email" name="email" required placeholder="Enter Email" class="form-control" />

            <label class="input-label">Password</label>
            <input type="password" name="password" required placeholder="Enter Password" class="form-control" />

            <label class="input-label">Mobile Number</label>
            <input type="tel" name="mobile" required placeholder="Enter Mobile Number" class="form-control mb-4" />

            <button type="submit" class="btn-register">Register Now</button>
        </form>

        <div class="register-footer">
            Already have an account? <a href="login.jsp">Login here</a>
        </div>
    </div>

    <%@include file="footerlinks.jsp" %>
</body>
</html>
