<%-- 
    Document   : forgotpasswordpage
    Created on : 7 Oct 2025, 9:21:04 pm
    Author     : sadhna kushwaha
--%>
<%-- 
    Document   : forgotpasswordpage
    Created on : 29 Sept 2025, 4:08:04 pm
    Author     : rajus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password - JobMatrix</title>
    <link rel="icon" href="images/job_matrix.jpg" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to right, #0d6efd, #0b5ed7);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .forgot-card {
            background: #fff;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }
        .forgot-card h2 {
            margin-bottom: 20px;
            color: #0d6efd;
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-primary {
            width: 100%;
            border-radius: 8px;
        }
        .error-msg {
            color: red;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="forgot-card">
        <h2><i class="fas fa-key me-2"></i>Forgot Password</h2>
        <p class="mb-4">Enter your registered email to receive an OTP for password reset.</p>

        <%-- Display error message from session if any --%>
        <%
            String errorMsg = (String) session.getAttribute("errorMsg");
            if(errorMsg != null){
        %>
            <div class="error-msg"><%= errorMsg %></div>
        <%
                session.removeAttribute("errorMsg");
            }
        %>

        <form method="post" action="forgotpasswordcode.jsp">
            <div class="mb-3">
                <input type="email" name="email" class="form-control" placeholder="Email ID" required>
            </div>
            <button type="submit" class="btn btn-primary">Verify Email</button>
        </form>
        <p class="mt-3">
            <a href="login.jsp">Back to Login</a>
        </p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>