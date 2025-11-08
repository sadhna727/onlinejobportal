<%-- 
    Document   : verifyforgototpcode
    Created on : 7 Oct 2025, 9:18:35 pm
    Author     : sadhna kushwaha
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="icon" href="images/job_matrix.jpg" />
<%
    String otp = request.getParameter("otp");

    String otp1 = session.getAttribute("fotp").toString();

    if (otp.equals(otp1)) {
        response.sendRedirect("resetpasswordpage.jsp");
    }
    else{
    out.print("OTP Incorrect");
    }

%>