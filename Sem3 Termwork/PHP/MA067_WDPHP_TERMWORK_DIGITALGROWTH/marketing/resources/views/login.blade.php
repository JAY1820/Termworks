<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <link rel="shortcut icon" href="{{ asset('favicon.svg') }}" type="image/svg+xml">
    <link href="{{ asset('css/mystyle.css') }}" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500;700&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            max-width: 400px;
            padding: 20px;
            background: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            height: 60%;
            margin: 20px;
        }
        .login-container h2 {
            color: #ff5831;
        }
        .login-container .btn {
            background: #ff5831;
            border: none;
        }
        .login-container .btn:hover {
            background: #ff4017;
        }
    </style>
</head>
<body id="top">
    <!-- header -->
    @include('header')
    <!-- main content -->
    <div class="login-container">
        <h2 class="text-center">Login</h2>
        <form>
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
            </div>
            
            <button type="submit" class="btn btn-block text-white mx-auto" style="margin-left: 20px;">Login</button>
        
            
        </form>
        <!-- Add a line of text for registration -->
        <p class="text-center">
            Register if a New user? <br>
            <a href="{{ route('register') }}" class="btn btn-block text-white" style="background: #2ecc71;">Register</a>
        </p>
    </div>
    <!-- footer -->
    <!-- @include('footer') -->
</body>
</html>
