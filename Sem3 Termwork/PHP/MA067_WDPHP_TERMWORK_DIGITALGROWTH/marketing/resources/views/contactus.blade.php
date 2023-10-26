<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact us</title>
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
    <section class="section contact" id="contact" aria-label="contact">
        <div class="container">

          <h2 class="h2 section-title">Let's Contact With Us</h2>

          <p class="section-text">
             We are eager to assist you in your journey towards digital growth and success.
          </p>

          <form action="" class="contact-form">

            <div class="input-wrapper">
              <input type="text" name="name" aria-label="name" placeholder="Your name*" required class="input-field">

              <input type="email" name="email_address" aria-label="email" placeholder="Email address*" required
                class="input-field">
            </div>

            <div class="input-wrapper">
              <input type="text" name="subject" aria-label="subject" placeholder="Subject" class="input-field">

              <input type="number" name="phone" aria-label="phone" placeholder="Phone number" class="input-field">
            </div>

            <textarea name="message" aria-label="message" placeholder="Your message...*" required
              class="input-field"></textarea>

            <div class="checkbox-wrapper">
              <input type="checkbox" name="terms_and_policy" id="terms" required class="checkbox">

              <label for="terms" class="label">
                Accept <a href="#" class="label-link">Terms of Services</a> and <a href="#" class="label-link">Privacy
                  Policy</a>
              </label>
            </div>

            <button type="submit" class="btn btn-primary">Send Message</button>

          </form>

          <ul class="contact-list">

            <li class="contact-item">
              <div class="contact-card">

                <div class="card-icon">
                  <ion-icon name="mail-outline" aria-hidden="true"></ion-icon>
                </div>

                <div class="card-content">

                  <h3 class="h3 card-title">Mail Here</h3>

                  <a href="mailto:iamjay1820@gmail.com" class="card-link">iamjay1820@gmail.com</a>
                </div>
              </div>
            </li>
            <li class="contact-item">
              <div class="contact-card">
                <div class="card-icon">
                  <ion-icon name="map-outline" aria-hidden="true"></ion-icon>
                </div>
                <div class="card-content">
                  <h3 class="h3 card-title">Visit Here</h3>
                  <address class="card-address">
                    Mumbai ,India - 400001<br>
                  </address>
                </div>
              </div>
            </li>
            <li class="contact-item">
              <div class="contact-card">
                <div class="card-icon">
                  <ion-icon name="headset-outline" aria-hidden="true"></ion-icon>
                </div>
                <div class="card-content">
                  <h3 class="h3 card-title">Call Here</h3>
                  <a href="tel:+1234567890" class="card-link">+123 456 7890</a>
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
