<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog page</title>
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
    <div class="container">
    <section class="section blog" id="blog" aria-label="blog">
        <div class="container">
          <h2 class="h2 section-title">Latest Articles Updated Weekly</h2>
          <p class="section-text">
            Our company blog is a great resource for all things digital marketing. We cover everything from SEO to social
            media, and we're always adding new content. Check out our latest articles below!
          </p>
          <ul class="grid-list">
            <li>
              <div class="blog-card">
                <figure class="card-banner img-holder" style="--width: 860; --height: 646;">
                <img src="{{ asset('images/blog-1.jpg') }}" width="860" height="646" loading="lazy"
                    alt="How to Become a Successful Entry Level UX Designer" class="img-cover">            
                </figure>
                <div class="card-content">
                  <time class="time" datetime="2022-06-16">October 18, 2023</time>
                  <h3 class="h3">
                    <a href="#" class="card-title">How to Become a Successful Entry Level UX Designer</a>
                  </h3>
                </div>
              </div>
            </li>

            <li>
              <div class="blog-card grid">
                <figure class="card-banner img-holder" style="--width: 860; --height: 646;">
                <img src="{{ asset('images/blog-2.jpg') }}" width="860" height="646" loading="lazy"
                    alt="How to Become a Successful Entry Level UX Designer" class="img-cover">
                </figure>
                <div class="card-content">

                  <time class="time" datetime="2022-06-16">October 16, 2023</time>

                  <h3 class="h3">
                    <a href="#" class="card-title">2022 Local SEO Success: The Year of Everywhere</a>
                  </h3>
                </div>
              </div>
            </li>

            <li>
              <div class="blog-card grid">
                <figure class="card-banner img-holder" style="--width: 860; --height: 646;">
                <img src="{{ asset('images/blog-3.jpg') }}" width="860" height="646" loading="lazy"
                    alt="How to Become a Successful Entry Level UX Designer" class="img-cover">
                </figure>
                <div class="card-content">
                  <time class="time" datetime="2022-06-16">October 08, 2023</time>
                  <h3 class="h3">
                    <a href="#" class="card-title">The Guide to Running a Client Discovery Process</a>
                  </h3>
                </div>
              </div>
            </li>

            <li>
              <div class="blog-card grid">
                <figure class="card-banner img-holder" style="--width: 860; --height: 646;">
                <img src="{{ asset('images/blog-4.jpg') }}" width="860" height="646" loading="lazy"
                    alt="How to Become a Successful Entry Level UX Designer" class="img-cover">
                </figure>
                <div class="card-content">
                  <time class="time" datetime="2022-06-16">October 10, 2023</time>
                  <h3 class="h3">
                    <a href="#" class="card-title">3 Ways to Get Client Approval for Scope Changes</a>
                  </h3>
                </div>
              </div>
            </li>
            
            <li>
              <div class="blog-card grid">
                <figure class="card-banner img-holder" style="--width: 860; --height: 646;">
                <img src="{{ asset('images/blog-5.jpg') }}" width="860" height="646" loading="lazy"
                    alt="How to Become a Successful Entry Level UX Designer" class="img-cover">
                </figure>
                <div class="card-content">
                  <time class="time" datetime="2022-06-16">October 16, 2023</time>
                  <h3 class="h3">
                    <a href="#" class="card-title">Top 10 Must-Read Blogs For Creative Agencies</a>
                  </h3>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </section>

    </div>
        <!-- footer -->
        @include('footer')
  
</body>
</html>
