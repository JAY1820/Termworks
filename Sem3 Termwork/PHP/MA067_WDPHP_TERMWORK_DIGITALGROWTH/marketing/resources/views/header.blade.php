<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digital Growth - We're available for marketing</title>
    <link rel="shortcut icon" href="{{ asset('favicon.svg') }}" type="image/svg+xml">
    <link href="{{ asset('css/mystyle.css') }}" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500;700&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body id="top">
<header class="header" data-header>
    <div class="container">
        <a href="#" class="logo">Digital Growth</a>
        <nav class="navbar container" data-navbar>
            <ul class="navbar-list">
                <li>
                    <a href="/home" class="navbar-link" data-nav-link>Home</a>
                </li>
                <li>
                    <a href="#service" class="navbar-link" data-nav-link>Services</a>
                </li>
                <li>
                    <a href="#project" class="navbar-link" data-nav-link>Project</a>
                </li>
                <li>
                    <a href="/aboutus" class="navbar-link" data-nav-link>About Us</a>
                </li>

                <!-- <li>
                    <a href="/blog" class="navbar-link" data-nav-link>Blog</a>
                </li> -->
                <li>
                    <a href="/contactus" class="navbar-link" data-nav-link>Contact Us</a>
                </li>

                 @guest
                    <li class="nav-item">
                        <a class="btn btn-primary" href="{{ route('login') }}">Login</a>
                    </li>
                    
                @else
                    <li class="nav-item">
                        <a class="navbar-link" href="{{ route('addtocart') }} ">Join With Us</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="">Profile</a>
                    </li> -->
                    @auth
                    <form method="POST" action="{{ route('logout') }}">
                        @csrf
                        <button class="btn btn-primary" type="submit">Logout</button>
                    </form>
                 @endauth
                @endguest



            </ul>
        </nav>
        <button class="nav-toggle-btn" aria-label="Toggle menu" data-nav-toggler>
            <ion-icon name="menu-outline" class="open"></ion-icon>
            <ion-icon name="close-outline" class="close"></ion-icon>
        </button>
    </div>
</header>
</body>
</html>
