<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="../component/allCSS.jsp"%>
<%@include file="../component/adminindexCSS.jsp"%>
</head>
<body>
	<c:if test="${empty doctObj}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="navbar.jsp"%></div>
	<br>
	<br>
	<div class="admin-dashHeading d-flex justify-content-center">
		<h3 class="admin-heading">Doctor Dashboard</h3>
	</div>
	<br>
	<br>
	<div class="container container-1">
		<div class="row d-flex justify-content-around ">
			<div class="cards col-3 text-center">
				<i class="fa-solid fa-user-doctor fa-3x" style="color: #fff;"></i> <br>
				<h5>Doctor</h5>
				<p>109</p>
			</div>
			<div class="cards col-3 text-center">
				<i class="fa-solid fa-calendar-check fa-3x" style="color: #fff;"></i>
				<h5>Total Appointment</h5>
				<p>906</p>
			</div>
		</div>
	</div>
</body>
</html>