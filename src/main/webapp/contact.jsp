<%-- 
    Document   : contact
    Created on : 10 Sept 2025, 3:52:21 pm
    Author     : rajus
--%>







<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerlinks.jsp" %>
        <link rel="stylesheet" href="css/cont.css">
    </head>
    <body>
        <%@include  file="navbar.jsp"%>

        <div class="order" id="Order">
            <h1><span>Drop Your</span>Message</h1>

            <div class="order_main">

                <div class="order_image">
                    <img src="images/z1.jpg">
                </div>

                <form action="contactcode.jsp" method="post">
                    <div class="input">
                        <p>Name</p>
                        <input type="text" name="name" placeholder="your name">
                    </div>

                    <div class="input">
                        <p>Email</p>
                        <input type="email" name="email" placeholder="your email">
                    </div>

                    <div class="input">
                        <p>Mobile Number</p>
                        <input type="text" name="mobile" placeholder="your number">
                    </div>

                    <div class="input">
                        <p>Role</p>
                        <input type="text" name="role" placeholder="Employee">
                    </div>

                    <div class="input">
                        <p>Address</p>
                        <input type="text" name="address" placeholder="your address">
                    </div>

                    <div class="input">
                        <p>Message</p>
                        <input type="text" name="message" placeholder="Message">
                    </div>

                    <button type="submit" class="order_btn">Send Message</button>
                </form>


            </div>

        </div>



        <%@include  file="footerpagelinks.jsp"%>
        <%@include file="footerlinks.jsp" %>


        <script>
            document.getElementById('year').textContent = new Date().getFullYear();
        </script>
    </body>
</html>