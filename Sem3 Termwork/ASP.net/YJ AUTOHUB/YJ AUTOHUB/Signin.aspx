<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="YJ_AUTOHUB.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
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

        /* Login form styles */
        .login-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 4px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .login-container input[type="submit"] {
            padding: 10px;
            width: 100%;
            background-color: #007BFF;
            color: white;
            border-radius: 4px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <%-- Header start --%>
        <div class="jumbotron text-center" style="margin-bottom: 0">
            <h1>YJ AUTOHUB</h1>
            <p>Your Ultimate Destination for Cars, Bikes, and Scooters</p>
        </div>
         <%-- Header end --%>

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
       

        <!-- Container (login Section) -->
        <div class="container-fluid">

              <div class="container login-container">
            <h2>Login</h2>
            <asp:TextBox ID="txtLoginEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>        
             <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control"></asp:TextBox>
             <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" ClientIDMode="AutoID" /> <br /><br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" PostBackUrl="~/Register.aspx" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
            
        <!-- Container End -->
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
                            <li><a href="Products.aspx">Products</a>

                            </li>
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

        </div>
    </form>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
