<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>About</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="assets/css/about.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet" />
		<script src="https://kit.fontawesome.com/1faa5cc1ce.js"></script>
		
		<!-- CSS only -->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	</head>
	
	<body>
		<%@include file="/includes/navbarHobo.jsp"%>
		
		<section id="ftanggota">
			<div class="col-12 text-center">
	            <h1><b>Team Member</b></h1>
	         	<span class="sub-title">Kelompok 2 UAS Praktik Pemrograman Multiplatform</span>
	        </div>
			<div class="container text-center">
				<div class="card">
					<div class="content">
						<div class="imgBx">
							<img src="assets/img/adiat.jpg" alt="Adiat" style="width:100%">
						</div>
						<div class="contentBx">
							<h3>Adiat Rahman<br><span>V3421002</span></h3>
							<i class="fa-brands fa-github service-icon"></i>
		                  	adiatraa
						</div>
					</div>
				</div>
				
				<div class="card">
					<div class="content">
						<div class="imgBx">
							<img src="assets/img/bariq.jpg" alt="Bariq" style="width:100%">
						</div>
						<div class="contentBx">
							<h3>Ahmad Bariq<br><span>V3421009</span></h3>
							<i class="fa-brands fa-github service-icon"></i>
		                  	bariqfaw
						</div>
					</div>
				</div>
				
				<div class="card">
					<div class="content">
						<div class="imgBx">
							<img src="assets/img/aubin.jpg" alt="Aubin" style="width:100%">
						</div>
						<div class="contentBx">
							<h3>Aubin Sava<br><span>V3421017</span></h3>
							<i class="fa-brands fa-github service-icon"></i>
		                  	aubinsava
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="card">
						<div class="content">
							<div class="imgBx">
								<img src="assets/img/bagus.jpg" alt="Bagus" style="width:100%">
							</div>
							<div class="contentBx">
								<h3>Bagus Brang<br><span>V3421022</span></h3>
								<i class="fa-brands fa-github service-icon"></i>
								bagusbw
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="content">
							<div class="imgBx">
								<img src="assets/img/adi.jpg" alt="Adi" style="width:100%">
							</div>
							<div class="contentBx">
								<h3>Cahyo Adi<br><span>V3421026</span></h3>
								<i class="fa-brands fa-github service-icon"></i>
		                  		chyoadi
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
		<script>
			window.addEventListener("scroll", function(){
				const header = document.querySelector("header");
				header.classList.toggle("sticky", window.scrollY > 0);
			});
		</script>	
	</body>
</html>
