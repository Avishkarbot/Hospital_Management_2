<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	<c:if test="${ empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4 form-1">
				<div class="card-body">
					<p class="text-center fs-3">Change Password</p>
					<c:if test="${not empty succUserPassword }">
						<p class="text-center text-success fs-3">${succUserPassword}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorUserPassword }">
						<p class="text-center text-danger fs-5">${errorUserPassword}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="userChangePassword" method="post">
							<div class="mb-3">
								<label>Enter New Password</label> <input type="text"
									name="newPassword" class="form-control" required>
							</div>

							<div class="mb-3">
								<label>Enter Old Password</label> <input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							<input type="hidden" value="${userObj.id }" name="uid">
							<button class="btn btn-success col-md-12" style="background: linear-gradient(to top left, #28b487, #7dd56f);">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>