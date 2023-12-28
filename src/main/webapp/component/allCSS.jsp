<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Preahvihear&display=swap"
	rel="stylesheet">


<style>
html {
	height: 1200px;
}

body {
	overflow-X: hidden;
}

.navbar-brand img {
	height: 35px;
}

.section1, .section3 {
	height: 85vh;
	display: flex;
	align-items: center;
	background-color:;
	color: #fff;
	padding-top: 40px;
}

.section1, .section3 img {
	height: 450px;
}

.content-1 {
	/* border: 2px solid blue; */
	padding-left: 50px;
	margin-top: 50px;
}

.wlcm-para {
	letter-spacing: 5px;
}

.content-1 h1 {
	/* letter-spacing: 1px; */
	font-size: 3.5rem;
	font-weight: 700;
}

.span-section1 {
	font-size: 3.5rem;
	font-weight: 700;
	color: #ffbd03;
}

.key {
	padding-top: 5px;
	padding-bottom: 10px;
}

.key-points {
	list-style-type: none;
	padding: 0;
}

.key-points li i {
	padding-right: 10px;
}

.about-us {
	padding: 10px;
	border-radius: 5px;
	background-color: #ffbd03;
	color: #198754;
	font-weight: 500;
}

.about-us:hover {
	color: #198754
}

.sections-1-2-heading {
	text-align: center;
	color: #198754;
	font-weight: 700;
	margin-bottom: 60px;
	margin-top: 30px;
}

.heading-span-sections {
	color: #198754;
}

.section3 {
	background-color: #fff;
	margin-bottom: 100px;
	margin-top: 40px;
}

.section3 p {
	color: black;
}

.section3 h2 {
	line-height: 55px;
	font-size: 50px;
	font-weight: 600;
	background-image: linear-gradient(to top left, #28b487, #7dd56f);
	background-clip: text;
	color: transparent;
}

.section3 .key p {
	opacity: 0.5;
}

span {
	font-weight: 600;
}

svg {
	border-left: solid #fff;
	border-right: solid #fff;
	border-bottom:;
	border-top:;
}

.card-section-2 {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
}

.card-1 {
	color: #fff;
	border-radius: 30px;
	margin-bottom: 40px;
	background: linear-gradient(to top left, #28b487, #7dd56f);
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

.card-1:hover {
	transform: scale(1.08);
	transition: 0.4s ease;
}

.card-1 i {
	border-radius: 50%;
	padding: 15px;
	background-color: #fff;
	margin-bottom: 22px;
}

.card-1 h5 {
	margin-bottom: 20px;
}

.card-1 p {
	opacity: 0.8;
}

.doctor-img-2 {
	height: 400px;
}

.form-1 {
	box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
	border-radius: 9px;
}

.cards {
	background: linear-gradient(to top left, #28b487, #7dd56f);
	color: #fff;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

.adminLog-out {
	width: 50%;
}

/*Section - 4*/
.rect-shape p {
	padding: 0;
	margin: 0;
}

.rect-shape {
	background-color: #198754;
	color: #fff;
	padding: 20px;
	height: 280px;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: hidden;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	background: linear-gradient(to top left, #28b487, #7dd56f);
	background-size: cover;
	margin-bottom: 140px;
}

.rect-shape h6 {
	margin-top: 20px;
	margin-bottom: 30px;
	font-family: 'Preahvihear', sans-serif;
}

.rect-shape p {
	margin-bottom: 20px;
}

.emrg-number {
	margin-bottom: 20px;
	font-weight:800;
}

.card-2-section {
	display: flex;
	justify-content: space-around;
	padding-left: 30px;
	padding-right: 30px;
}

.card-2 {
	border: none;
}

.card-2 img {
	height: 150px;
	border-radius: 100%;
	border: 6px solid #198754;
	margin-bottom: 20px;
}

.card-2 h6 {
	color: #198754;
}

.card-2 p {
	font-size: 13px;
	opacity: 0.7;
}

.ribbon {
	position: absolute;
	height: 30px;
	width: 30px;
	background-color: #ffdb03;
	border-radius: 100%;
	top: 20px;
	right: 50px;
	display: flex;
	justify-content: center;
	padding-top: auto;
	padding-bottom: auto;
}

/*Testimonials*/
.container {
	max-width: 1170px;
	margin: auto;
	padding: 0 15px;
}

.section-header {
	text-align: center;
	margin-bottom: 50px;
}

.section-header .title {
	font-size: 35px;
	font-weight: 600;
	text-transform: capitalize;
	line-height: 1.2;
}

.testimonials-item {
	background: linear-gradient(to top left, #28b487, #7dd56f);
	padding: 30px;
	border-radius: 30px;
	color: #fff
}

.testimonials-item .info {
	display: flex;
	align-items: center;
}

.testimonials-item img {
	max-width: 80px;
	border-radius: 50%;
	margin-right: 20px;
	vertical-align: middle;
}

.testimonials-item .name {
	font-size: 24px;
	text-transform: capitalize;
	font-weight: 600;
	line-height: 1.2;
}

.testimonials-item .job {
	text-transform: capitalize;
}

.testimonials-item p {
	margin-top: 20px;
}

.testimonials-item .rating {
	margin-top: 15px;
	font-size: 14px;
	color: yellow;
}

.testimonials .swiper-pagination {
	position: relative;
	margin-top: 40px;
	bottom: auto;
}

.testimonials .swiper-pagination-bullet {
	height: 12px;
	width: 12px;
	background-color: hsl(0, 0%, 100%);
	border: 2px solid #198754;
}
/*Custom Scroll Bar*/
/* width */
::-webkit-scrollbar {
	width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
	background: #fff;
}

/* Handle */
::-webkit-scrollbar-thumb {
	background: #ffbd03;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #ffbd03;
}
</style>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>