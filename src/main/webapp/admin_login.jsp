<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<%@include file="component/allCSS.jsp" %>
</head>
<body>
<div style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include file="component/navbar.jsp" %></div>

<!-- Form -->
<div class="container p-5 ">
	<div class="row">
		<div class="col-md-4 offset-md-4 form-1">
			<div class="card-body">
				<p class="fs-4 text-center">Admin Login</p>
				<div class="text-center"><span style="color:red;">${error}</span></div>	<br>
				<form action="adminLogin" method="post">
					<div class="mb-3">
						<label class="form-label">Email address</label>
						<input required name="email" type="email" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Password</label>
						<input required name="password" type="password" class="form-control">
					</div>
					
					<button type="submit" class="btn bg-success text-white col-md-12" style="background: linear-gradient(to top left, #28b487, #7dd56f);">Login</button>
				
				</form>
		
			</div>
		
		</div>
		
	</div>

</div>

</body>
</html>