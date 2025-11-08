<%-- 
    Document   : verifyforgototp
    Created on : 7 Oct 2025, 9:16:36 pm
    Author     : sadhna kushwaha
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon" href="images/job_matrix.jpg" />
        <title>Verify OTP- Forgot Paswword Page</title>
    </head>
    <body>
        <h1>Verify OTP!</h1>
        <p>
            We have sent you an OTP on the registered email ,please check and enter the same otp to verify it's you trying to reset your Password.
            
        </p>
        <br><!-- comment -->
        <form method="post" action="verifyforgototpcode.jsp">
            Enter OTP Code 
            <input type="number" name="otp" placeholder="OTP" required />
            <br><br>
            <button>Verify OTP</button>
        </form>
    </body>
</html>
