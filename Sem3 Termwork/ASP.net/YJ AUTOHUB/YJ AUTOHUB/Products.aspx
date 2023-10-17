<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="YJ_AUTOHUB.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YJ AUTOHUB Products</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    
    <!-- Include jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <!-- Include Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <!-- Custom CSS Styles -->
    <style>
        body {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background for a 'glassy' effect */
            backdrop-filter: blur(10px); /* Blur the background for a 'glassy' effect */
        }

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

        /* Custom Card Styles */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            width: 100%;
            margin-bottom: 20px;
            background-color: #343a40; 
            color: #fff; 
        }

        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        }

        .card img {
            width: 100%; 
            height: auto; 
        }

        .card-title {
            font-weight: bold;
        }

        .card-text {
            font-size: 14px;
        }

        /* Add to Cart Button Style */
        .add-to-cart-button {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 10px;
            float:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header -->
            <div class="jumbotron text-center" style="margin-bottom: 0">
                <h1>YJ AUTOHUB Products</h1>
                <p>Your source for premium vehicles</p>
            </div>

            <!-- Header Navigation Bar (copied from Default.aspx) -->
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- navbar-brand -->
                        <a class="navbar-brand" href="Default.aspx">
                            <img src="icons/safeIcons.png" alt="#" height="30" />
                            YJ Aut Hub
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active">
                                <asp:LinkButton ID="lnkHome" runat="server" Text="Home" PostBackUrl="~/Default.aspx"></asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkAbout" runat="server" Text="About" PostBackUrl="~/About.aspx"></asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkProducts" runat="server" Text="Products" PostBackUrl="~/Products.aspx"></asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkCart" runat="server" Text="Cart" PostBackUrl="~/Cart.aspx"></asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkSignIn" runat="server" Text="Sign In" PostBackUrl="~/signin.aspx"></asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Car Section -->
            <div class="container">
                <h2>Cars</h2>
                <div class="row">
                    <!-- Car Card 1 -->
                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/car1.jpg" alt="Car image 1" />
                            <div class="card-body">
                                <h5 class="card-title">Tata Nexon</h5>
                                <p class="card-text">Experience the thrill of driving with our exclusive range of cars.</p>
                                <a href="#" class="btn btn-primary float-right">Price: ₹1200000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click" />
                            </div>
                        </div>
                    </div>

                    <!-- ... (More car cards) ... -->
                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/car2.jpg" alt="Car image 2" />
                            <div class="card-body">
                                <h5 class="card-title">Mahindra Thar </h5>
                                <p class="card-text">Experience the thrill of driving with our exclusive range of cars.</p>
                                <a href="#" class="btn btn-primary float-right">Price: ₹1500000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button1" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click2" />
                            </div>
                        </div>
                    </div>


                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/car3.jpg" alt="Car image 3" />
                            <div class="card-body">
                                <h5 class="card-title">Tata Safari</h5>
                                <p class="card-text">Experience the thrill of driving with our exclusive range of cars.</p>
                                <a href="#" class="btn btn-primary float-right">Price: ₹2000000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button2" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click3" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bike Section -->
            <div class="container">
                <h2>Bikes</h2>
                <div class="row">
                    <!-- Bike Card 1 -->
                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/bike1.jpg" alt="Car image 1" />
                            <div class="card-body">
                                <h5 class="card-title">Hero Super Splendor</h5>
                                <p class="card-text">Discover the joy of biking with our premium collection.</p>
                                <a href="#" class="btn btn-primary">Price: ₹90000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button3" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click4" />
                            </div>
                        </div>
                    </div>

                    <!-- ... (More bike cards) ... -->
                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/bike2.jpg" alt="Car image 1" />

                            <div class="card-body">
                                <h5 class="card-title">Splendor plus</h5>
                                <p class="card-text">Discover the joy of biking with our premium collection.</p>
                                <a href="#" class="btn btn-primary">Price: ₹100000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button4" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click5" />
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/bike3.jpg" alt="Car image 1" />

                            <div class="card-body">
                                <h5 class="card-title">Hero Super Splendor Xtec</h5>
                                <p class="card-text">Discover the joy of biking with our premium collection.</p>
                                <a href="#" class="btn btn-primary">Price: ₹90000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button5" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click6" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Scooty Section -->
            <div class="container">
                <h2>Scooters</h2>
                <div class="row">
                    <!-- Scooter Card 1 -->
                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/scooty1.jpg" alt="Car image 1" />
                            <div class="card-body">
                                <h5 class="card-title">TVS Ntorq 125</h5>
                                <p class="card-text">Enjoy the convenience and fun of our range of scooters and purchase from YJ autohub.</p>
                                <a href="#" class="btn btn-primary">Price: ₹70000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button6" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click7" />
                            </div>
                        </div>
                    </div>

                    <!-- ... (More scooter cards) ... -->
                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/scooty2.jpg" alt="Car image 1" />

                            <div class="card-body">
                                <h5 class="card-title">Honda Activa 125</h5>
                                <p class="card-text">Enjoy the convenience and fun of our range of scooters and purchase from YJ autohub.</p>
                                <a href="#" class="btn btn-primary">Price: ₹80000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button7" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click8" />
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="card">
                            <img class="card-img-top" src="Images/scooty3.jpg" alt="Car image 1" />
                            <div class="card-body">
                                <h5 class="card-title">Iron Golden Honda </h5>
                                <p class="card-text">Enjoy the convenience and fun of our range of scooters and purchase from YJ autohub.</p>
                                <a href="#" class="btn btn-primary">Price: ₹90000</a>
                                <!-- Add to Cart Button -->
                                <asp:Button ID="Button8" runat="server" Text="Add to Cart" CssClass="btn btn-success add-to-cart-button" OnClick="btnAddToCart_Click9" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- JavaScript for Adding to Cart -->
    <script>

    </script>
</body>
</html>
