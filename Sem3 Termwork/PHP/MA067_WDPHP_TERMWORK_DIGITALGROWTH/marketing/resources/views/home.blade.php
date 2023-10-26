
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
<!-- use header.blade.php decorative here -->
        @include('header')
        <!-- main menu -->
       <section class="section hero" id="home" aria-label="hero">
        <div class="container">
          <div class="hero-content">
            <p class="hero-subtitle">Digital Marketing</p>
            <h1 class="h1 hero-title">We are available for marketing</h1>
            <p class="hero-text">
              Digital Growth is a marketing agency that specializes in SEO, Social Media Marketing, Email Marketing,
                Lead Generation, and PR. We create custom marketing plans based on your business, sales, and marketing
            </p>
            <a href="#" class="btn btn-primary">Get Started</a>
          </div>
          <figure class="hero-banner">
          <img src="{{ asset('images/hero-banner.png') }}" width="720" height="673" alt="hero banner" class="w-100" >
          </figure>
        </div>
      </section>
      <!--- #SERVICE -->
        @include('services')
      <!-- project -->
      <section class="section project" id="project" aria-label="project">
        <div class="container">

          <h2 class="h2 section-title">Our Recent Projects</h2>

          <p class="section-text">
          Take a look at some of our latest projects showcasing our commitment
           to excellence and innovation.
          </p>
          <ul class="grid-list">
            <li>
              <div class="project-card">

                <figure class="card-banner img-holder" style="--width: 510; --height: 700;">
                <img src="{{ asset('images/project-1.jpg') }}" width="510" height="700" loading="lazy"
                    alt="Designing a better cinema experience" class="img-cover">
                </figure>
                <div class="card-content">
                  <p class="card-subtitle">SEO Optimization</p>
                  <h3 class="h3">
                    <a href="#" class="card-title">Designing a better cinema experience</a>
                  </h3>
                  <a href="#" class="btn btn-primary">View Details</a>
                </div>
              </div>
            </li>

            <li>
              <div class="project-card">

              <figure class="card-banner img-holder" style="--width: 510; --height: 700;">
                <img src="{{ asset('images/project-3.jpg') }}" width="510" height="700" loading="lazy"
                    alt="Designing a better cinema experience" class="img-cover">
                </figure>

                <div class="card-content">

                  <p class="card-subtitle">Digital Marketing</p>

                  <h3 class="h3">
                    <a href="#" class="card-title">Building design process within teams</a>
                  </h3>

                  <a href="#" class="btn btn-primary">View Details</a>

                </div>

              </div>
            </li>
                   
            <li>
              <div class="project-card">
              <figure class="card-banner img-holder" style="--width: 510; --height: 700;">
                <img src="{{ asset('images/project-1.jpg') }}" width="510" height="700" loading="lazy"
                    alt="Designing a better cinema experience" class="img-cover">
                </figure>
                <div class="card-content">
                  <p class="card-subtitle">Development</p>
                  <h3 class="h3">
                    <a href="#" class="card-title">Redesigning the Gujrat govermnet app</a>
                  </h3>
                  <a href="#" class="btn btn-primary">View Details</a>
                </div>
              </div>
            </li>

          </ul>

        </div>
      </section>
      <!-- - #CTA -->
      <section class="section cta" aria-label="cta" style="background-image: url('{{ asset('images/cta-bg.jpg') }}')">
        <div class="container">
          <p class="cta-subtitle">So What is Next?</p>
          <h2 class="h2 section-title">Are You Ready? Let's get to Work!</h2>
          <<a href="contactus" class="btn btn-secondary" data-nav-link>Contact Us</a>
        </div>
      </section>

      <!--  - #BLOG -->
              
    </article>
  </main>

  @include('footer')
  <!--  - ionicon link   -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
