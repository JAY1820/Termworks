<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Customer</title>
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
        .new-customer {
            max-width: 400px;
            padding: 20px;
            background: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            height: 70%;
            margin: 20px;
        }
        .new-customer h2 {
            color: #ff5831;
        }
        .new-customer .btn {
            background: #ff5831;
            border: none;
        }
        .new-customer .btn:hover {
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

    <div class="new-customer">
        <h2 class="text-center">SELECT A PLAN</h2>
        <form method="POST" action="{{ route('contactus') }}">
            @csrf
            <div class="mb-3">
                <label for="service_id" class="form-label">Service ID</label>
                <input type="text" class="form-control" id="service_id" name="service_id" placeholder="Enter your service ID" required>
            </div>
            <div class="mb-3">
                <label for="plan_name" class="form-label">Select a Plan</label>
                <select class="form-select" id="plan_name" name="plan_name" required>
                    <option value="Plan A">SEO Optimization</option>
                    <option value="Plan B">Digital Marketing</option>
                    <option value="Plan C">Market Research</option>
                    <option value="Plan D">Keyword Targeting</option>
                    <option value="Plan E">Email Marketing</option>
                    <option value="Plan F">Marketing & Reporting</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="plan_description" class="form-label">Please write a Description</label>
                <textarea class="form-control" id="plan_description" name="plan_description" rows="4" placeholder="Enter your plan description" required></textarea>
            </div>
            <div class="mb-3">
                <label for="plan_price" class="form-label">Your estimate budget</label>
                <input type="text" class="form-control" id="plan_price" name="plan_price" placeholder="Enter your estimate cost" required>
            </div>

            <button type="submit" class="btn btn-block text-white mx-auto">Submit</button>
        </form>
    </div>
    
</body>
</html>
