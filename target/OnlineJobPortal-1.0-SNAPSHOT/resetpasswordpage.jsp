<%-- 
    Document   : resetpasswordpage
    Created on : 7 Oct 2025, 9:08:28 pm
    Author     : sadhna kushwaha
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password | JobMatrix</title>
    <link rel="icon" href="images/job_matrix.jpg" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .reset-container {
            max-width: 400px;
            margin: 100px auto 50px;
            padding: 30px 25px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .reset-container h2 {
            text-align: center;
            color: #1e3c72;
            margin-bottom: 25px;
        }

        .form-control {
            border-radius: 8px;
            margin-bottom: 15px;
            padding: 12px 15px;
            border: 1px solid #ddd;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #1e3c72;
            box-shadow: 0 0 8px rgba(30,60,114,0.2);
        }

        .btn-reset {
            width: 100%;
            background: linear-gradient(to right, #1e3c72, #2a5298);
            color: #fff;
            font-weight: 600;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-reset:hover {
            background: linear-gradient(to right, #2a5298, #3a62a8);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(30,60,114,0.3);
        }

        @media(max-width: 576px){
            .reset-container {
                margin: 50px 15px;
                padding: 25px 20px;
            }
        }
    </style>
</head>
<body>

    <div class="reset-container">
        <h2>Reset Password</h2>
        <form method="post" action="resetpasswordpagecode.jsp">
            <input type="password" name="newpass" class="form-control" placeholder="New Password" required />
            <input type="password" name="confirmpass" class="form-control" placeholder="Confirm Password" required />
            <button type="submit" class="btn-reset">Reset Password</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>