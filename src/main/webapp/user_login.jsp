<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
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



	<!-- Form -->
	<div class="container p-5 ">
		<div class="row">
			<div class="col-md-4 offset-md-4 form-1">
				<div class="card-body">
					<p class="fs-4 text-center">User Login</p>

					<c:if test="${not empty errorUserLogin }">
						<p class="text-center text-danger fs-5">${errorUserLogin}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>

					<c:if test="${empty succUserLogout }">
						<p class="text-center text-success fs-5">${succUserLogout}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<form action="userLogin" method="post">
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
					<br>Don't have account?<a href="signup.jsp"
						class="text-decoration-none"> create one</a>

				</div>

			</div>

		</div>

	</div>
</body>
</html>