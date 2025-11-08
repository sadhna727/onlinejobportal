<%-- 
    Document   : about
    Created on : 14 Sept 2025, 4:14:30 pm
    Author     : rajus
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>About Us - Job Portal</title>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
        <!-- AOS Animation -->
        <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">

        <link rel="stylesheet" href="css/about.css">
    </head>
    <body>
        <%@include file="navbar.jsp" %>

        <section class="about" id="About">



            <h2 class="about-us">About <span>Us</span></h2>

            <p class="lead">We Connect Talent with Opportunity. Period. lo Do you want me to 

            </p>

            <div class="container">
                <div class="row g-4">

                    <!-- Card 1 -->
                    <div class="col-md-4" data-aos="fade-up">
                        <div class="about-card text-center">
                            <img src="images/offer-1.jpg" alt="Job Recommendation">
                            <div class="number">01</div>
                            <h5>Job Recommendation</h5>
                            <p>Personalized job matches tailored to your skills and preferences.</p>
                        </div>
                    </div>

                    <!-- Card 2 -->
                    <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="about-card text-center">
                            <img src="images/offer-2.jpg" alt="Career Advice">
                            <div class="number">02</div>
                            <h5>Career Advice</h5>
                            <p>Receive expert guidance to navigate your career path with confidence.</p>
                        </div>
                    </div>

                    <!-- Card 3 -->
                    <div class="col-md-4" data-aos="fade-up" data-aos-delay="400">
                        <div class="about-card text-center">
                            <img src="images/offer-3.jpg" alt="Portfolio">
                            <div class="number">03</div>
                            <h5>Create & Build Portfolio</h5>
                            <p>Showcase your expertise with a professional portfolio design.</p>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
        <script>
            AOS.init({
                duration: 1000,
                once: true
            });
        </script>
    </body>
</html>
