<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="YJ_AUTOHUB.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        .jumbotron {
            background: linear-gradient(to right, #000000, #434343);
            color: #fff;
            padding: 100px 25px;
        }

        .container-fluid {
            padding: 60px 50px;
        }

        .bg-grey {
            background-color: #f6f6f6;
        }

        .logo-small {
            color: #f4511e;
            font-size: 50px;
        }

        .logo {
            color: #f4511e;
            font-size: 200px;
        }

        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <div class="jumbotron text-center" style="margin-bottom: 0">
            <h1>YJ AUTOHUB</h1>
            <p>Your Ultimate Destination for Cars, Bikes, and Scooters</p>
        </div>

        <!-- Header Navigation Bar -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx">
                        <img src="icons/safeIcons.png" alt="#" height="30" />
                        YJ Auto Hub
                    </a>
                </div>

                <!-- Navbar Links -->
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Home LinkButton -->
                        <li class="active">
                            <asp:LinkButton ID="lnkHome" runat="server" Text="Home" PostBackUrl="~/Default.aspx"></asp:LinkButton>
                        </li>
                        <!-- About LinkButton -->
                        <li>
                            <asp:LinkButton ID="lnkAbout" runat="server" Text="About" PostBackUrl="~/About.aspx"></asp:LinkButton>
                        </li>
                        <!-- Products LinkButton -->
                        <li>
                            <asp:LinkButton ID="lnkProducts" runat="server" Text="Products" PostBackUrl="~/Products.aspx"></asp:LinkButton>
                        </li>
                        <!-- Cart LinkButton -->
                        <li>
                            <asp:LinkButton ID="lnkCart" runat="server" Text="Cart" PostBackUrl="~/Cart.aspx"></asp:LinkButton>
                        </li>
                        <!-- Sign In LinkButton -->
                        <li>
                            <asp:LinkButton ID="lnkSignIn" runat="server" Text="Sign In" PostBackUrl="~/signin.aspx"></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Container (About Section) -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <h2>About YJ AutoHub</h2>
                    <h4>Your Trusted Source for Premium Vehicles</h4>
                    <p>At YJ AutoHub, we're passionate about providing you with the best selection of cars, bikes, and scooters. Our team of experts handpicks every vehicle to ensure unmatched quality, performance, and style.</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-signal logo"></span>
                </div>
            </div>
        </div>

      
        <!-- Services Section -->
        <div class="container-fluid text-center">
            <h2>Services</h2>
            <h4>What We Offer</h4>
            <br />
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-off logo-small"></span>
                    <h4>POWER</h4>
                    <p>We provide powerful vehicles designed for performance and speed. Experience the thrill of the road with our high-performance cars and bikes.</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-heart logo-small"></span>
                    <h4>LOVE</h4>
                    <p>We are passionate about our vehicles and are dedicated to providing the best quality. Our love for automobiles drives our commitment to excellence.</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-lock logo-small"></span>
                    <h4>JOB DONE</h4>
                    <p>We get the job done right. Our team of experts ensures that every vehicle we offer meets the highest standards of quality and performance.</p>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-leaf logo-small"></span>
                    <h4>GREEN</h4>
                    <p>We are committed to environmental sustainability. Our green initiatives promote eco-friendly transportation options and reduced carbon emissions.</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-certificate logo-small"></span>
                    <h4>CERTIFIED</h4>
                    <p>All our vehicles are certified for quality and safety. We ensure that our customers receive reliable and certified vehicles they can trust.</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-wrench logo-small"></span>
                    <h4 style="color: #303030;">HARD WORK</h4>
                    <p>Our dedicated team works hard to deliver exceptional service. We are committed to making your vehicle buying experience the best it can be.</p>
                </div>
            </div>
        </div>
        <!-- end -->

        <!-- Footer Content -->
        <footer style="background-color: #333; color: white;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h4>About Us</h4>
                        <p>We are your ultimate destination for cars, bikes, and scooters. Explore our premium collection and experience luxury and adventure like never before.</p>
                    </div>
                    <div class="col-md-4">
                        <h4>Quick Links</h4>
                        <ul class="list-unstyled">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="About.aspx">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="Products.aspx">Products</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h4>Connect with Us</h4>
                        <ul class="list-unstyled">
                            <li><a href="#"><i class="fa fa-facebook"></i>Facebook</a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i>Instagram</a></li>
                        </ul>
                    </div>
                </div>
                <hr style="border-color: #777;" />
                <p class="text-center">&copy;<%= DateTime.Now.Year %> YJ AutoHub.in. All rights reserved.</p>
            </div>
        </footer>
    </div>
    </form>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
