<nav
	class="navbar navbar-expand-lg navbar-dark container-fluid">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><img alt=""
			src="../image/Meddic_img.png"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active fw-bold"
					aria-current="page" href="index.jsp"> Home</a></li>
				<li class="nav-item"><a class="nav-link active fw-bold"
					aria-current="page" href="doctor.jsp">Doctor</a></li>
				<li class="nav-item"><a class="nav-link active fw-bold"
					aria-current="page" href="view_doctor.jsp">View Doctor</a></li>
				<li class="nav-item"><a class="nav-link active fw-bold"
					aria-current="page" href="patient.jsp">Patient</a></li>
			</ul>
			<form action="" class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false"><i
							class="fas fa-sign-in-alt fw-bold"></i> Admin</button>
					<ul class="dropdown-menu adminLog-out">
						<li><a class="dropdown-item" href="../adminLogout">Log out</a></li>

					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>