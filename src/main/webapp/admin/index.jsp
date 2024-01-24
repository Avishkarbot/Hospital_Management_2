<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allCSS.jsp"%>
<%@include file="../component/adminindexCSS.jsp"%>
<style>
	.specialist-card{
		border:4px solid #ffbd03;
	}
</style>
</head>
<body>
	<%DoctorDao dao = new DoctorDao(DBconnect.getConn()); %>
	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="navbar.jsp"%></div>
	<br>
	<div class="admin-dashHeading d-flex justify-content-center">
		<h3 class="admin-heading">Admin Dashboard</h3>
	</div>
	<br>
	<div class="text-center">
		<span style="color: green;">${specSucc}</span>
	</div>
	<br>
	<div class="text-center">
		<span style="color: green;">${specError}</span>
	</div>
	
	
	
	<div class="container container-1">
		<div class="row d-flex justify-content-around ">
			<div class="cards col-3 text-center">
				<i class="fa-solid fa-user-doctor fa-3x" style="color: #fff;"></i> <br>
				<h5>Doctor</h5>
				<p><%dao.countDoctor();%></p>
			</div>
			<div class="cards col-3 text-center">
				<i class="fa-solid fa-users fa-3x" style="color: #fff;"></i>
				<h5>Users</h5>
				<p><%dao.countUser();%></p>
			</div>
		</div>
		<div class="row d-flex justify-content-around">
			<div class="cards col-3 text-center">
				<i class="fa-solid fa-calendar-check fa-3x" style="color: #fff;"></i>
				<h5>Total Appointment</h5>
				<p><%dao.countAppointment();%></p>
			</div>
			<div class="cards specialist-card col-3 text-center"
				data-bs-toggle="modal" data-bs-target="#exampleModal">
				<i class="fa-solid fa-notes-medical fa-3x" style="color: #fff;"></i>
				<h5>Specialist</h5>
				<p><%dao.countSpecialist();%></p>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
						title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control mt-2">
						</div>
						<div class="d-flex justify-content-between mt-5">
							<button type="submit" class="btn btn-primary bg-success">Add</button>
							<button type="button" class="btn btn-secondary bg-success"
								data-bs-dismiss="modal">Close</button>
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>