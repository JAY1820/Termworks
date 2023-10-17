<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="YJ_AUTOHUB.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YJ AUTOHUB</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

    <!-- Custom CSS Styles -->
   
    <!-- Custom CSS Styles -->
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
   
        .panel.panel-default {
            margin-top: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .table {
            width: 100%;
        }

        .table thead th {
            background-color: #333;
            color: white;
            text-align: center;
        }

        .table tbody tr:hover {
            background-color: #ddd;
        }

        .panel-heading {
            background-color: #333;
            color: white;
            text-align: center;
        }

        .buy-product-button {
        display: block;
        margin: 0 auto;
        padding: 10px 20px; 
        background-color: #f4511e;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s;
        }

        .buy-product-button:hover {
        background-color: #ff6f2f;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
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

        <!-- Shopping Cart Panel -->
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">Shopping Cart</div>
                <div class="panel-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Product" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <%# Convert.ToInt32(Eval("Price")) * Convert.ToInt32(Eval("Quantity")) %>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                    <div class="panel-footer">
                         <asp:Label ID="lblTotalPrice" runat="server" Text="Total Price: $" CssClass="total-price-label"></asp:Label>
                        <asp:Button ID="btnBuyProduct" runat="server" Text="Buy Product" OnClick="btnBuyProduct_Click" CssClass="buy-product-button" />
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

        <!-- Include jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Include Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
