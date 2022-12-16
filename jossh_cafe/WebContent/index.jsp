<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JOSSH Cafe</title>
<!--  CSS Link -->
<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link rel="stylesheet" href="assets/css/index.css">
<link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
<link rel="shortcut icon" type="x-icon" href="assets/img/logo.png">
</head>
<body>

<%@include file="/includes/navbarHobo.jsp"%>

<section class="home">
	<div class="swiper bg-slider">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="assets/img/coffee1.jpg" />
          <div class="text-context">
          <h2 class="title">JOSSH <span>Cafe</span></h2>
          <p>Lakukan Proses Pemesanan di Cafe Jossh!</p>
          <a href="menu.jsp"><button class="read-btn">Pemesanan<i class="uil uil-arrow-right"></i></button></a>
          </div>
        </div>
        <div class="swiper-slide dark-layer">
          <img src="assets/img/coffee2.jpg" />
          <div class="text-context">
          <h2 class="title">Jossh <span>Cafe</span></h2>
          <p>Lakukan Proses Pemesanan di Cafe Jossh!</p>
          <button class="read-btn">Pemesanan<i class="uil uil-arrow-right"></i></button>
          </div>
        </div>
        <div class="swiper-slide dark-layer">
          <img src="assets/img/coffee3.jpg" />
          <div class="text-context">
          <h2 class="title">Jossh <span>Cafe</span></h2>
          <p>Lakukan Proses Pemesanan di Cafe Jossh!</p>
          <button class="read-btn">Pemesanan<i class="uil uil-arrow-right"></i></button>
          </div>
        </div>
        <div class="swiper-slide">
          <img src="assets/img/coffee4.jpg" />
          <div class="text-context">
          <h2 class="title">Jossh <span>Cafe</span></h2>
          <p>Lakukan Proses Pemesanan di Cafe Jossh!</p>
          <button class="read-btn">Pemesanan<i class="uil uil-arrow-right"></i></button>
          </div>
        </div>
      </div>
    </div>
    
    <div class="bg-slider-thumbs">
      <div class="swiper-wrapper thumbs-container">
        <img src="assets/img/coffee1.jpg" class="swiper-slide" alt="">
        <img src="assets/img/coffee2.jpg" class="swiper-slide" alt="">
        <img src="assets/img/coffee3.jpg" class="swiper-slide" alt="">
        <img src="assets/img/coffee4.jpg" class="swiper-slide" alt="">
      </div>
    </div>
</section>

<%@include file="/includes/footer.jsp"%>
</body>
</html>