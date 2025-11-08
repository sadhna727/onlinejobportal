<%-- 
   Document   : feedback
   Created on : 9 Sept 2025, 7:34:38 pm
   Author     : mahes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Feedback | JobFinder</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

        <style>
            body {
                background-color: #f8f9fa;
            }
            .feedback-header {

                background-color: #F5F5F5;


                padding: 60px 0;
                text-align: center;
            }
            .feedback-header h1 span{
                color: #fa6021;
            }

            .feedback-header h1 {
                font-weight: 700;
                /* color: #f94449;   */
                color: #1a43bf;

            }
            .feedback-card {
                border-radius: 1rem;
                box-shadow: 0 4px 20px rgba(0,0,0,0.08);
                padding: 30px;
                background: #fff;
            }
            .rating i {
                font-size: 1.8rem;
                color: #ccc;
                cursor: pointer;
                transition: color 0.3s;
            }
            .rating i.active {
                color: #ffc107;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <br><!-- comment -->
        <br><!-- comment -->
        <!-- HEADER -->
        <section class="feedback-header">
            <div class="container">
                <h1>We Value <span> Your Feedback</span></h1>
                <p class="lead">Help us improve JobFinder by sharing your experience.</p>
            </div>
        </section>

        <!-- FEEDBACK FORM -->
        <section class="py-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="feedback-card">
                            <h4 class="mb-4">Share Your Thoughts</h4>

                            <!-- Rating -->
                            <div class="mb-4">
                                <label class="form-label d-block">Rate Your Experience</label>
                                <div class="rating" id="starRating">
                                    <i class="fa fa-star" data-value="1"></i>
                                    <i class="fa fa-star" data-value="2"></i>
                                    <i class="fa fa-star" data-value="3"></i>
                                    <i class="fa fa-star" data-value="4"></i>
                                    <i class="fa fa-star" data-value="5"></i>
                                </div>
                            </div>

                            <!-- Feedback Form -->
                            <form method="post" action="feedbackcode.jsp">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label for="name" class="form-label">Full Name</label>
                                        <input type="text" name="name" class="form-control" placeholder="Your Name" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="email" class="form-label">Email Address</label>
                                        <input type="email" name="email" class="form-control" placeholder="Your Email" required>
                                    </div>
                                    <div class="col-12">
                                        <label for="feedback" class="form-label">Your Feedback</label>
                                        <textarea name="feedback" rows="5" class="form-control" placeholder="Write your feedback here..." required></textarea>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="date" class="form-label">Date</label>
                                        <input type="date" id="date" name="date" class="form-control" placeholder="Date" required>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary px-4" type="submit">Submit Feedback</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- FOOTER -->
        <%@include file="footerpagelinks.jsp" %>

        <!-- Bootstrap JS -->
        <%@include file="footerlinks.jsp" %>

        <script>
            document.getElementById('year').textContent = new Date().getFullYear();

            // Star Rating Logic
            const stars = document.querySelectorAll('#starRating i');
            stars.forEach(star => {
                star.addEventListener('click', function () {
                    let value = this.getAttribute('data-value');
                    stars.forEach((s, i) => {
                        s.classList.toggle('active', i < value);
                    });
                });
            });
        </script>

    </body>
</html>