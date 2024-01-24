<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login</title>
<%@include file="component/allCSS.jsp"%>
<style>
body {
	overflow-y: hidden;
}
</style>
</head>
<body>
	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="component/navbar.jsp"%></div>

	<div class="container p-5 ">
		<div class="row">
			<div class="col-md-4 offset-md-4 form-1">
				<div class="card-body">
					<p class="fs-4 text-center">Doctor Login</p>

					<div class="text-center">
						<span style="color: red;">${succDoctLogOut}</span>
					</div>

					<c:if test="${not empty errorrDoctLogin }">
						<p class="text-center text-danger fs-5">${errorrDoctLogin}</p>
						<c:remove var="errorrDoctLogin" scope="session" />
					</c:if>
					<form action="doctorLogin" method="post">
						<div class="mb-3">
							<label class="form-label">Email address</label> <input required
								name="email" type="email" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Password</label> <input required
								name="password" type="password" class="form-control">
						</div>

						<button type="submit" class="btn bg-success text-white col-md-12"
							style="background: linear-gradient(to top left, #28b487, #7dd56f);">Login</button>

					</form>

				</div>

			</div>

		</div>

	</div>

</body>
</html>