<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-img.svg" alt="">
      </div>

      <div class="content">
         <h3>Why choose us?</h3>
         <p>We at KART are dedicated to serving our sellers and customers their highest satisfaction levels.</p>
         <a href="contact.php" class="btn">Contact us</a>
      </div>

   </div>

</section>

<section class="reviews">
   
   <h1 class="heading">Client's reviews</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/pic-1.png" alt="">
         <p>The Pashmina Shawl is a true gem. It's incredibly soft, beautifully crafted, and versatile. I've worn it to formal events and casually, and it always adds an elegant touch to my outfits. The quality is outstanding, and it's become a wardrobe essential for me. Highly recommended!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Rafe Cameron</h3>
         <p>User</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-2.png" alt="">
         <p>Selling my miniature paintings has been an amazing journey. Each piece I create carries a piece of my heart, and it's a joy to share them with art lovers like you. It's heartwarming to see these artworks find new homes and bring smiles to people's faces. Thank you for supporting my passion and allowing me to share my art with the world.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Anujna Gupta</h3></h3>
         <p>Seller</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-3.png" alt="">
         <p>Selling handcrafted goods has been an incredible experience. Each piece I offer is a labor of love and creativity, crafted with precision and care. Seeing my customers fall in love with these handcrafted treasures is truly heartwarming. Your support not only sustains my craft but also helps preserve the rich heritage of our artisans. Thank you for choosing to support handmade. Your patronage fuels the creativity and passion that goes into every piece, making this journey immensely rewarding. </p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Tarak Singhania</h3>
         <p>Seller</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-4.png" alt="">
         <p>I recently purchased Indian jewelry, and I must say, I'm utterly mesmerized. The intricate designs, vibrant colors, and attention to detail are absolutely stunning. Thank you for offering such exquisite pieces. I'm proud to be a part of preserving and celebrating Indian craftsmanship.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Alyssia S</h3>
         <p>User</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-5.png" alt="">
         <p>My blue pottery purchase has been a delight! These hand-painted pieces are not only stunning but also surprisingly durable. They've added a unique charm to my home, and I'm proud to support local artisans. Highly recommended for both beauty and functionality!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Gabriel Centineo</h3>
         <p>User</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-6.png" alt="">
         <p>Selling Kutch embroidery is a joy. Each piece is a testament to India's rich heritage, a burst of color and tradition. Your support empowers artisans, making this journey both beautiful and rewarding. Thank you for choosing Kutch embroidery.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Anika Singh</h3>
         <p>Seller</p>
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>