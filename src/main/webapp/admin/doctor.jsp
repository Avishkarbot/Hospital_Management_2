<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allCSS.jsp"%>
<%@include file="../component/adminindexCSS.jsp"%>
<style>
body {
	overflow-y: hidden;
}
</style>
</head>
<body>
	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="navbar.jsp"%></div>

	<!--  -->
	<p class="fs-3 text-center admin-heading mt-4">Add Doctor</p>
	<div class="container col-8 card p-3" style="box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px; border-radius:30px;">
		
		<form action="../addDoctor" method="post" class="row g-3 d-flex justify-content-between">
			<div class="col-md-5">
				<label class="form-label fw-bold">Full Name</label> <input type="text"
					required name="fullname" class="form-control">
			</div>
			<div class="col-md-5">
				<label class="form-label fw-bold">Date Of Birth</label> <input type="date" required
					name="dob" class="form-control">
			</div>
			<div class="col-md-5">
				<label class="form-label fw-bold">Qualification</label> <input required
					name="qualification" type="text" class="form-control">
			</div>
			<div class="col-md-5">
				<label class="form-label fw-bold">Specialist</label> <select name="spec"
					required class="form-control">
					<option>--select--</option>

					<%
					SpecialistDao dao = new SpecialistDao(DBconnect.getConn());
					List<Specialist> list = dao.getAllSpecialist();

					for (Specialist s : list) {
					%>
					<option><%=s.getSpecialistName()%></option>
					<%
					}
					%>


				</select>
			</div>
			<div class="col-5">
				<label class="form-label fw-bold">Email</label> <input type="text" required
					name="email" class="form-control">
			</div>
			<div class="col-md-5">
				<label class="form-label fw-bold">Mob No</label> <input type="text" required
					name="mobno" class="form-control">
			</div>
			<div class="col-5">
				<label class="form-label fw-bold">Password</label> <input required
					name="password" type="password" class="form-control">
			</div>
			<div class="col-12 text-center">
				<button type="submit" class="btn btn-primary col-5 mt-4 " style="background: linear-gradient(to top left, #28b487, #7dd56f);">Submit</button>
			</div>
		</form>
	</div>
	<!--  -->
</body>
</html>