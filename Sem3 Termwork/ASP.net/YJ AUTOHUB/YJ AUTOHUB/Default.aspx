<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YJ_AUTOHUB.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YJ AUTOHUB</title>

     <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    
    <!-- Include jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <!-- Include Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <!-- Custom CSS Styles -->
    <style>
        .jumbotron {
            background-color: #eeeeee;
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
        <%-- Headar start --%>
    <div>
        <div class="jumbotron text-center" style="margin-bottom: 0">
            <h1>YJ AUTOHUB</h1>
            <p>Your Ultimate Destination for Cars, Bikes, and Scooters</p>
        </div>
         <%-- Headar end --%>

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
                    <!-- navbar-brand -->
                    <a class="navbar-brand" href="Default.aspx">
                        <img src="icons/safeIcons.png" alt="#" height="30" />
                        YJ Aut Hub
                    </a>
                </div>

                <!-- navbar-collapse collapse -->
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
                        <!-- Products Dropdown -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products</a>
                            <ul class="dropdown-menu">
                                <li><a href="Products.aspx">All Products</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Cars.aspx">Cars</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Bikes.aspx">Bikes</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Scooty.aspx">Scooty</a></li>
                            </ul>
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
   
            <!-- Image slider section -->
          <div class="container">
            <h2>Explore Our Featured Vehicles</h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <asp:Image ID="imgCar1" runat="server" ImageUrl="ImgSlider/car1.jpg" AlternateText="Car 1" CssClass="img-responsive" />
                        <div class="carousel-caption">
                            <h3>Stylish Cars</h3>
                            <p>Experience luxury and performance with our top-of-the-line car collection.</p>
                            <asp:HyperLink ID="lnkViewCars" runat="server" CssClass="btn btn-lg btn-primary" NavigateUrl="Cars.aspx" Text="View Cars"></asp:HyperLink>
                        </div>
                    </div>
                    <div class="item">
                        <asp:Image ID="imgCar2" runat="server" ImageUrl="ImgSlider/car2.jpg" AlternateText="Car 2" CssClass="img-responsive" />
                        <div class="carousel-caption">
                            <h3>Thrilling Cars</h3>
                            <p>Discover adventure with our powerful and dynamic car selection.</p>
                            <asp:HyperLink ID="lnkViewBikes" runat="server" CssClass="btn btn-lg btn-primary" NavigateUrl="Bikes.aspx" Text="View Bikes"></asp:HyperLink>
                        </div>
                    </div>
                    <div class="item">
                        <asp:Image ID="imgScooter1" runat="server" ImageUrl="ImgSlider/car3.jpg" AlternateText="Scooter 1" CssClass="img-responsive" />
                        <div class="carousel-caption">
                            <h3>Convenient Scooters</h3>
                            <p>Experience urban mobility with our range of comfortable and efficient scooters.</p>
                            <asp:HyperLink ID="lnkViewScooters" runat="server" CssClass="btn btn-lg btn-primary" NavigateUrl="Scooters.aspx" Text="View Scooters"></asp:HyperLink>
                        </div>
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span></a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span></a>
            </div>
        </div>

            <!-- Image slider section ends -->

            <!-- Middle Content Section -->

         <div class="container center">
            <hr />
            <div class="row">
                <div class="col-lg-4">
                    <!-- Content for Cars -->
                    <asp:Image ID="imgCars" runat="server" ImageUrl="Images/scooty1.jpg" AlternateText="Cars" CssClass="img-circle" Width="140" Height="140" />
                    <h2>Cars</h2>
                    <p>Explore a wide range of stylish and powerful cars at YJ Auto Hub. Our collection includes the latest models from top brands with advanced features and unmatched performance.</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <!-- Content for Bikes -->
                    <asp:Image ID="imgBikes" runat="server" ImageUrl="Images/scooty1.jpg" AlternateText="Bikes" CssClass="img-circle" Width="140" Height="140" />
                    <h2>Bikes</h2>
                    <p>Discover thrilling biking experiences with our selection of high-performance bikes. From sporty models to cruisers, YJ Auto Hub has the perfect ride for every adventure.</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <!-- Content for Scooters -->
                    <asp:Image ID="imgScooters" runat="server" ImageUrl="Images/scooty1.jpg" AlternateText="Scooters" CssClass="img-circle" Width="140" Height="140" />
                    <h2>Scooters</h2>
                    <p>Experience convenience and style with our collection of efficient and comfortable scooters. YJ Auto Hub offers a range of options for urban commuting and leisure rides.</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading">
                    SPECIAL FRIDAY DEAL
                </div>
                <div class="panel-body">
                    <div class="row" style="padding-top: 50px">
                        <asp:Repeater ID="rptrProducts" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-3 col-md-3">
                                    <a href='<%# "ProductView.aspx?PID=" + Eval("PID") %>' style="text-decoration: none;">
                                        <div class="thumbnail">
                                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# "Images/ProductImages/" + Eval("PID") + "/" + Eval("ImageName") + Eval("Extention") %>'
                                                AlternateText='<%# Eval("ImageName") %>' />
                                            <div class="caption">
                                                <div class="probrand">
                                                    <%# Eval("BrandName") %>
                                                </div>
                                                <div class="proName">
                                                    <%# Eval("PName") %>
                                                </div>
                                                <div class="proPrice">
                                                    <span class="proOgPrice">
                                                        <%# Eval("PPrice", "{0:0,00}") %>
                                                    </span>
                                                    <%# Eval("PSelPrice", "{0:c}") %>
                                                    <span class="proPriceDiscount">(<%# Eval("DiscAmount", "{0:0,00}") %>off)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="panel-footer">
                    Buy 50 vehicles and get a special offer
                 </div>
            </div>
        </div>
            <!-- Middle Content Section end -->

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
            <!-- ... footer content code  end... -->

        </div>
</form>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
