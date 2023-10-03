﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="YJ_AUTOHUB.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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

        /* Centered registration form */
        .registration-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 4px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .registration-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .registration-container input[type="text"],
        .registration-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .registration-container input[type="submit"] {
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
        <!-- ... Your header navigation bar code ... -->

        <!-- Container (registration Section) -->
        <div class="container-fluid bg-grey">
            <div class="registration-container">
                <h2>Registration</h2>

                <asp:TextBox ID="txtName" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                    InitialValue="" ErrorMessage="Name is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ErrorMessage="Invalid email format" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                <br /><br />

                <asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" 
                    ValidationExpression="^\d{10}$" ErrorMessage="Mobile number must be 10 digits" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                <br /><br />

                <asp:TextBox ID="txtCity" runat="server" placeholder="City" CssClass="form-control"></asp:TextBox>
                <br /><br />

                <asp:TextBox ID="txtPincode" runat="server" placeholder="Pincode" CssClass="form-control"></asp:TextBox>
                <br /><br />

                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                    InitialValue="" ErrorMessage="Password is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" CssClass="form-control"></asp:TextBox>
                <asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToValidate="txtConfirmPassword"
                    ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                <br /><br />

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnRegister_Click" CssClass="btn btn-primary" />
            </div>
        </div>
        <!-- Container End -->

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
                            <li><a href="#"><i class="fa fa-linkedin"></i>Linkdin</a></li>
                            
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
