<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
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
</head>
<body>
	<c:if test="${empty doctObj}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="navbar.jsp"%></div>


	<div class="container p-3">
		<p class="fs-3 text-center admin-heading">Patient Details</p>
		<c:if test="${not empty errorStatus}">
			<p class="fs-4 text-center text-danger">${errorStatus}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succStatus}">
			<p class=" fs-4 text-center text-success">${succStatus}</p>
			<c:remove var="succMsg" scope="session" />
		</c:if>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">Full Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Age</th>
					<th scope="col">Appointment Date</th>
					<th scope="col">Email</th>
					<th scope="col">Mob No</th>
					<th scope="col">Diseases</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				Doctor d = (Doctor) session.getAttribute("doctObj");
				AppointmentDao dao = new AppointmentDao(DBconnect.getConn());
				List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());
				for (Appointment ap : list) {
				%>
				<tr>
					<th><%=ap.getFullName()%></th>
					<td><%=ap.getGender()%></td>
					<td><%=ap.getAge()%></td>
					<td><%=ap.getAppoinDate()%></td>
					<td><%=ap.getEmail()%></td>
					<td><%=ap.getPhNo()%></td>
					<td><%=ap.getDiseases()%></td>
					<td><%=ap.getStatus()%></td>
					<td>
						<%
						if ("Pending".equals(ap.getStatus())) {
						%> <a href="comment.jsp?id=<%=ap.getId()%>"
						class="btn btn-success btn-sm">Comment</a> <%
 } else {
 %> <a href="#" class="btn btn-success btn-sm disabled">Comment</a> <%
 }
 %>
					</td>
				</tr>
				<%
				}
				%>



			</tbody>
		</table>
	</div>




</body>
</html>