<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	overflow-y: hidden;
}

.card-body {
	box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
	border-radius:9px;
}
</style>
<%@include file="../component/allCSS.jsp"%>
<%@include file="../component/adminindexCSS.jsp"%>
</head>
<body>

	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="navbar.jsp"%></div>

	<div class="container p-5">
		<div class="row">

			<div class="col-md-6 offset-md-3">
				<div class="card-body">
					<p class="text-center fs-4">Patient Comment</p>

					<%
					int id = Integer.parseInt(request.getParameter("id"));
					AppointmentDao dao = new AppointmentDao(DBconnect.getConn());

					Appointment ap = dao.getAppointmentById(id);
					%>
					<form class="row" action="../updateStatus" method="post">
						<div class="col-md-6">
							<label>Patient Name</label> <input type="text" readonly
								value="<%=ap.getFullName()%>" class="form-control">
						</div>

						<div class="col-md-6">
							<label>Age</label> <input type="text" value="<%=ap.getAge()%>"
								readonly class="form-control">
						</div>


						<div class="col-md-6">
							<br> <label>Mob No</label> <input type="text" readonly
								value="<%=ap.getPhNo()%>" class="form-control">
						</div>

						<div class="col-md-6">
							<br> <label>Diseases</label> <input type="text" readonly
								value="<%=ap.getDiseases()%>" class="form-control">
						</div>

						<div class="col-md-12">
							<br> <label>Comment</label>
							<textarea required name="comm" class="form-control" row="3"
								cols=""></textarea>
						</div>

						<input type="hidden" name="id" value="<%=ap.getId()%>"> <input
							type="hidden" name="did" value="<%=ap.getDoctorId()%>">

						<button class=" mt-3 btn btn-primary col-md-6 offset-md-3"
							style="background: linear-gradient(to top left, #28b487, #7dd56f);">Submit</button>

					</form>

				</div>

			</div>
		</div>
	</div>






</body>
</html>
