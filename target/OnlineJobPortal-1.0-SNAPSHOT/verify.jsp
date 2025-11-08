<%-- 
    Document   : verify
    Created on : 12 Sept 2025, 2:55:35 pm
    Author     : rajus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       

        <div class="container">
            <div class="row">
                <div class="col-sm-6 mx-auto">
                    <form method="post" action="checkcode.jsp">
                        <p>
                            We Have just sent you a email with your OTP code for verification , 
                            check your inbox or spam folder
                        </p>
                        <br><!-- comment -->
                        Enter OTP Code
                        <input type="number" name="otpcode" required class="form-control" />
                        <br><!-- comment -->
                        <button>Verify OTP</button>
                        </br></br>
                        <p> iF you have any  got otp ,click here to resend <a href="resendotp.jsp"> resend otp</a></p>
                    </form>
                </div>
            </div>
        </div>
       
</html>
