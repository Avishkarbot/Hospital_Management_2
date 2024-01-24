<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allCSS.jsp"%>
<%@include file="../component/adminindexCSS.jsp"%>
<style type="text/css">
body{
	overflow-y:hidden;
}
</style>
</head>
<body>
	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="navbar.jsp"%></div>
	<p class="fs-3 text-center admin-heading mt-4">Add Doctor</p>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
	Doctor d = dao2.getDoctorById(id);
	%>
	<div class="container col-8 card p-3"
		style="box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px; border-radius: 30px;">
		<form action="../updateDoctor" method="post" class="row g-3 d-flex justify-content-between">
			<div class="mb-3 col-md-4">
				<label class="form-label">Full Name</label> <input type="text"
					required name="fullname" class="form-control"
					value="<%=d.getFullName()%>">
			</div>

			<div class="mb-3 col-md-4">
				<label class="form-label">DOB</label> <input type="date" required
					name="dob" class="form-control" value="<%=d.getDob()%>">
			</div>

			<div class="mb-3 col-md-4">
				<label class="form-label">Qualification</label> <input required
					name="qualification" type="text" class="form-control"
					value="<%=d.getQualification()%>">
			</div>
			<div class="mb-3 col-md-4">
				<label class="form-label">Specialist</label> <select name="spec"
					required class="form-control">
					<option><%=d.getSpecialist()%></option>

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

			<div class="mb-3 col-md-4">
				<label class="form-label">Email</label> <input type="text" required
					name="email" class="form-control" value="<%=d.getEmail()%>">
			</div>

			<div class="mb-3 col-md-4">
				<label class="form-label">Mob No</label> <input type="text" required
					name="mobno" class="form-control" value="<%=d.getMobno()%>">
			</div>

			<div class="mb-3 col-md-4">
				<label class="form-label">Password</label> <input required
					name="password" type="text" class="form-control"
					value="<%=d.getPassword()%>">
			</div>
			<input type="hidden" name="id" value="<%=d.getId()%>">

			<div class="text-center col-12">
				<button type="submit" class="btn btn-primary col-5 "
				style="background: linear-gradient(to top left, #28b487, #7dd56f);">Update</button>
			</div>
		</form>
	</div>
</body>
</html>