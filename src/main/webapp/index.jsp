<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@page import="com.db.DBconnect"%>
<%@page import="java.sql.Connection"%>
<title>Meddic.com</title>
<link rel="icon" href="image/Untitled design (2).png" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<%@include file="component/allCSS.jsp"%>

</head>
<body>

	<!-- navbar -->
	<div
		style="background: linear-gradient(to bottom left, #28b487, #2f9365);">


		<%@include file="component/navbar.jsp"%>


		<!-- Section-l -->

		<div class="section1 container-fluid">

			<div class="section1 container">

				<div class="row sec1">
					<div class="content-1 col-7">
						<p class="wlcm-para">WELCOME TO MEDDIC</p>
						<h1>
							We Are Here to <span class="span-section1">Hear</span> and <span
								class="span-section1">Heal</span> Your Health Problems
						</h1>

						<div class="key">
							<ul class="key-points">
								<li><i class="fa-solid fa-square-check t"
									style="color: #ffbd03"></i>Exceptional Service</li>
								<li><i class="fa-solid fa-square-check "
									style="color: #ffbd03"></i>Soft & Gentle</li>
							</ul>
						</div>

						<div>
							<a class="about-us text-decoration-none" aria-current="page"
								href="#">About us</a>
						</div>

					</div>
					<div class="img-2 col-5">
						<img src="image/doctor3.png" alt="" />
					</div>
				</div>
			</div>
		</div>
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
			<path fill="#fff" fill-opacity="1"
				d="M0,192L80,208C160,224,320,256,480,240C640,224,800,160,960,144C1120,128,1280,160,1360,176L1440,192L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
	</div>


	<!-- section 2 -->
	<h2 class="sections-1-2-heading">Our Department</h2>

	<div class="container card-section-2">
		<div class="card card-1 text-center col-6" style="width: 18rem;">
			<div class="card-body">
				<i class="fa-solid fa-tooth fa-3x" style="color: #198754;"></i>
				<h5 class="card-subtitle mb-2 text-body-secondary">Dental Care</h5>
				<p class="card-text">Dental anxiety can affect children and
					adults but you can.</p>
			</div>
		</div>
		<div class="card card-1  text-center col-6" style="width: 18rem;">
			<div class="card-body">
				<i class="fa-solid fa-eye fa-3x" style="color: #198754;"></i>
				<h5 class="card-subtitle mb-2 text-body-secondary">Dental Care</h5>
				<p class="card-text">Dental anxiety can affect children and
					adults but you can.</p>
			</div>
		</div>
		<div class="card card-1  text-center col-6" style="width: 18rem;">
			<div class="card-body">
				<i class="fa-solid fa-brain fa-3x" style="color: #198754;"></i>
				<h5 class="card-subtitle mb-2 text-body-secondary">Dental Care</h5>
				<p class="card-text">Dental anxiety can affect children and
					adults but you can.</p>
			</div>
		</div>
		<div class="card card-1 text-center col-6" style="width: 18rem;">
			<div class="card-body">
				<i class="fa-solid fa-wheelchair fa-3x" style="color: #198754;"></i>
				<h5 class="card-subtitle mb-2 text-body-secondary">Dental Care</h5>
				<p class="card-text">Dental anxiety can affect children and
					adults but you can.</p>
			</div>
		</div>
		<div class="card card-1  text-center col-6" style="width: 18rem;">
			<div class="card-body">
				<i class="fa-solid fa-vial fa-3x" style="color: #198754;"></i>
				<h5 class="card-subtitle mb-2 text-body-secondary">Dental Care</h5>
				<p class="card-text">Dental anxiety can affect children and
					adults but you can.</p>
			</div>
		</div>
		<div class="card card-1  text-center col-6" style="width: 18rem;">
			<div class="card-body">
				<i class="fa-solid fa-virus-covid fa-3x" style="color: #198754;"></i>
				<h5 class="card-subtitle mb-2 text-body-secondary">Dental Care</h5>
				<p class="card-text">Dental anxiety can affect children and
					adults but you can.</p>
			</div>
		</div>
	</div>

	<!-- Section - 3 -->

	<div class="section3 container-fluid">

		<div class="section-3 container">

			<div class="row sec1">
				<div class="img-2 col-5">
					<img src="image/doctor4.png" alt="" />
				</div>
				<div class="content-1 col-7">
					<p class="wlcm-para">25+ Years Of Experience</p>
					<h2 class="sec-3-heading">We Are Always Ensure Best Medical
						Treatment For Your Health</h2>

					<div class="key">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut</p>
					</div>

					<div>
						<a class="about-us text-decoration-none" aria-current="page"
							href="#">More About us</a>
					</div>

				</div>

			</div>
		</div>
	</div>

	<!-- Section - 4 -->

	<div class="container-fluid rect-shape text-center">
		<div>
			<p>Emergency hotline</p>
			<h1 class="emrg-number">+91 9874569874</h1>
			<h6>We provide 24/7 customer support. Please feel free to
				contact us for emergency case.</h6>
		</div>
	</div>

	<!-- Section - 5 -->
	<h2 class="sections-1-2-heading">
		Our Working Process</span>
	</h2>

	<div class="container card-2-section">
		<div class="card card-2  text-center col-6" style="width: 14rem;">
			<div class="card-body">
				<img alt="" src="image/doctor-logo-1.jpg">
				<h6 class="card-subtitle mb-2 text-body-secondary">Select
					Expert Doctor</h6>
				<p class="card-text-2">Every doctors on Doctrine platform are
					BMDC certified consult any patient.</p>
				<div class="ribbon">01</div>
			</div>
		</div>
		<div class="card card-2  text-center col-6" style="width: 14rem;">
			<div class="card-body">
				<img alt="" src="image/doctor-logo-2.jpg">
				<h6 class="card-subtitle mb-2 text-body-secondary">Make
					Appointment</h6>
				<p class="card-text-2">Make our consultations starts within 10
					minutes of making payments.</p>
				<div class="ribbon">02</div>
			</div>
		</div>
		<div class="card card-2  text-center col-6" style="width: 14rem;">
			<div class="card-body">
				<img alt="" src="image/doctor-logo-4.jpg">
				<h6 class="card-subtitle mb-2 text-body-secondary">Get
					Consultants</h6>
				<p class="card-text-2">Our doctors are committed to provide the
					best service by spending enough time.</p>
				<div class="ribbon">03</div>
			</div>
		</div>
		<div class="card card-2  text-center col-6" style="width: 14rem;">
			<div class="card-body">
				<img alt="" src="image/doctor-logo-3.jpg">
				<h6 class="card-subtitle mb-2 text-body-secondary">Get Care &
					Relief</h6>
				<p class="card-text-2">Our dedicated customer service team is
					available to assist you resolving.</p>
				<div class="ribbon">04</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<!-- section - 6 - Testimonials-->
	<div class="testimonials">
		<div class="container">
			<div class="section-header">
				<h2 class="header sections-1-2-heading">What our clients says</h2>
			</div>
			<div class="testimonials-content">
				<div class="swiper testimonials-slider js-testimonials-slider">
					<div class="swiper-wrapper">
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-1.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-2.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-3.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-4.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-5.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-4.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-4.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="swiper-slide testimonials-item">
							<div class="info">
								<img src="image/customer-4.jpg" alt="" />
								<div class="text-box">
									<h3 class="name">John Cena</h3>
									<span class="job">Web developer</span>
								</div>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Tenetur et odio quibusdam praesentium, quasi saepe hic
								dignissimos officia, sunt, ullam similique enim vitae nam?
								Pariatur .</p>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-pagination js-testimonials-pagination"></div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script>
		const swiper = new Swiper(".js-testimonials-slider", {
			grabCursor : true,
			spaceBetween : 30,
			pagination : {
				el : ".js-testimonials-pagination",
				clickable : true,
			},
			breakpoints : {
				767 : {
					slidesPerView : 2,
				},
			},
		});
	</script>


	<!-- section  -->
	<br>
	<br>
	<br>
	<br>
	<!-- Footer -->
	<%@include file="component/footer.jsp"%>
</body>
</html>