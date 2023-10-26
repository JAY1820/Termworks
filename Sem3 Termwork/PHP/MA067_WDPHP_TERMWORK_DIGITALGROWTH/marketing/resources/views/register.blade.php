<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
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
        .register-container {
            max-width: 400px;
            padding: 20px;
            background: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            height: 70%;
            margin: 20px;
        }
        .register-container h2 {
            color: #ff5831;
        }
        .register-container .btn {
            background: #ff5831;
            border: none;
        }
        .register-container .btn:hover {
            background: #ff4017;
        }
    </style>
</head>
<body id="top">
    <!-- Header (You can create a header partial and include it here) -->
    <header>
        <nav>
            @include('header')
        </nav>
    </header>

    <div class="register-container">
        <h2 class="text-center">Register</h2>
        <form method="POST" action="{{ route('register') }}">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <div class="mb-3">
                <label for="password_confirmation" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Confirm your password" required>
            </div>
            <div class="mb-3">
                <label for="service_id" class="form-label">Service ID</label>
                <input type="text" class="form-control" id="service_id" name="service_id" placeholder="Enter your service ID" required>
            </div>
            <div class="mb-3">
                <label for="registration_date" class="form-label">Registration Date</label>
                <input type="date" class="form-control" id="registration_date" name="registration_date">
            </div>
            <button type="submit" class="btn btn-block text-white mx-auto">Register</button>
        </form>
        <p class="text-center">
            Already have an account? <br>
            <a href="{{ route('login') }}" class="btn btn-block text-white" style="background: #ff5831;">Login</a>
        </p>
    </div>

    <!-- Footer (You can create a footer partial and include it here) -->
    <footer>
    </footer>
</body>
</html>
