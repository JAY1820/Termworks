<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service page</title>
    <link rel="shortcut icon" href="{{ asset('favicon.svg') }}" type="image/svg+xml">
    <link href="{{ asset('css/mystyle.css') }}" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500;700&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body id="top">

    <!-- header contet -->
    @include('header')
<!-- main contet -->
    <section class="section service" id="service" aria-label="service">
        <div class="container">

          <h2 class="h2 section-title">Services We Provided</h2>

          <p class="section-text">
          At our company, we offer a wide range of services to help you grow your business and online presence.
          </p>

          <ul class="grid-list">

            <li>
              <div class="service-card">

                <div class="card-icon" style="background-color: #13c4a1">
                  <ion-icon name="chatbox"></ion-icon>
                </div>

                <h3 class="h3">
                  <a href="#" class="card-title">SEO Optimization</a>
                </h3>

                <p class="card-text">
                Our SEO experts will optimize your website to improve its search engine rankings
                 and drive more organic traffic to your site.
                </p>

              </div>
            </li>

            <li>
              <div class="service-card">

                <div class="card-icon" style="background-color: #6610f2">
                  <ion-icon name="desktop"></ion-icon>
                </div>

                <h3 class="h3">
                  <a href="#" class="card-title">Digital Marketing</a>
                </h3>

                <p class="card-text">
                 Our digital marketing team will create effective online marketing strategies
                  to promote your products and services across various digital platforms.
                </p>

              </div>
            </li>

            <li>
              <div class="service-card">

                <div class="card-icon" style="background-color: #ffb700">
                  <ion-icon name="bulb"></ion-icon>
                </div>

                <h3 class="h3">
                  <a href="#" class="card-title">Market Research</a>
                </h3>

                <p class="card-text">
                We conduct in-depth market research to help
                 you understand your target audience and make informed business decisions.
                </p>

              </div>
            </li>

            <li>
              <div class="service-card">

                <div class="card-icon" style="background-color: #fc3549">
                  <ion-icon name="phone-portrait"></ion-icon>
                </div>

                <h3 class="h3">
                  <a href="#" class="card-title">Keyword Targeting</a>
                </h3>

                <p class="card-text">
                We will easily  identify and target the most relevant keywords 
                for your business to increase your online  business visibility.
                </p>

              </div>
            </li>

            <li>
              <div class="service-card">

                <div class="card-icon" style="background-color: #00d280">
                  <ion-icon name="archive"></ion-icon>
                </div>

                <h3 class="h3">
                  <a href="#" class="card-title">Email Marketing</a>
                </h3>

                <p class="card-text">
                Our email marketing campaigns will help you engage with your audience and convert leads into customers.
                We are experts in these.
                </p>

              </div>
            </li>

            <li>
              <div class="service-card">

                <div class="card-icon" style="background-color: #ff612f">
                  <ion-icon name="build"></ion-icon>
                </div>
                <h3 class="h3">
                  <a href="#" class="card-title">Marketing & Reporting</a>
                </h3>

                <p class="card-text">
                Our comprehensive marketing and reporting services will 
                provide valuable insights into your campaign performance.
                </p>

              </div>
            </li>

          </ul>

        </div>
      </section> 
</body>
</html>
