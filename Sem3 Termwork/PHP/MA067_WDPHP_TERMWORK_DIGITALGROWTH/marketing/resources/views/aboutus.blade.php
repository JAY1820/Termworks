<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About us</title>
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
    <section class="section about" id="about" aria-label="about">
        <div class="container">

          <div class="about-banner img-holder" style="--width: 720; --height: 960;">
          
          <img src="{{ asset('images/about-banner.png') }}" width="720" height="960" loading="lazy" alt="about banner"
            class="img-cover">
            <button class="play-btn" aria-label="Play video">
              <ion-icon name="play" aria-hidden="true"></ion-icon>
            </button>
          </div>

                  <div class="about-content">

        <h2 class="h2 section-title">About Us</h2>

        <p class="section-text">
            We are a dedicated team committed to providing the best digital marketing services in the UK. Our passion for innovation and growth fuels our desire to help businesses succeed online.
        </p>

        <h3 class="h3">Who We Are</h3>

        <p class="section-text">
            We are Digital Growth, a leading digital marketing agency in the UK. Our team consists of experts in SEO, PPC, social media marketing, web design and development. We believe in delivering results that matter.
        </p>

        <h3 class="h3">Our Success</h3>

        <ul class="about-list">

            <li class="about-item">
                <ion-icon name="checkmark-circle" aria-hidden="true"></ion-icon>

                <p class="section-text">
                    We have helped over 500 businesses increase their online presence and achieve their digital marketing goals.
                </p>
            </li>

            <li class="about-item">
                <ion-icon name="checkmark-circle" aria-hidden="true"></ion-icon>

                <p class="section-text">
                    Our innovative strategies have resulted in an average of 60% increase in web traffic for our clients.
                </p>
            </li>

            <li class="about-item">
                <ion-icon name="checkmark-circle" aria-hidden="true"></ion-icon>

                <p class="section-text">
                    We have been recognized as the best digital marketing agency in 2023, a testament to our commitment and expertise.
                </p>
            </li>

        </ul>

<h3 class="h3">Our Mission</h3>

<p class="section-text">
    Our mission is to empower businesses by providing them with effective and innovative digital marketing solutions. We aim to drive growth and success for our clients by leveraging our expertise in SEO, PPC, social media marketing, web design and development.
</p>

</div>


        </div>
      </section>
        
    <!-- footer -->
    @include('footer')

    </div>

  
</body>
</html>
