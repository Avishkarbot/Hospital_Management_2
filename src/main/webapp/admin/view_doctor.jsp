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
</head>
<body>
	<div
		style="background: linear-gradient(to top left, #28b487, #7dd56f);"><%@include
			file="navbar.jsp"%></div>

	<div class="col-12">
		<div class="card text-center" style="border: none;">
			<div class="card-body">
				<p class="fs-3 text-center admin-heading">Doctor Details</p>
				<table class="table">
					<thead>
						<tr>
							<!-- <th scope="col">Sr.No</th> -->
							<th scope="col">Full Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Qualification</th>
							<th scope="col">Specialist</th>
							<th scope="col">Email</th>
							<th scope="col">Mob No</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
						List<Doctor> list2 = dao2.getAllDoctor();
						for (Doctor d : list2) {
						%>
						<tr>
							<!-- <td><%=d.getId()%></td> -->
							<td class="fw-bold"><%=d.getFullName()%></td>
							<td><%=d.getDob()%></td>
							<td><%=d.getQualification()%></td>
							<td><%=d.getSpecialist()%></td>
							<td><%=d.getEmail()%></td>
							<td><%=d.getMobno()%></td>
							<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
								class="btn btn-sm btn-primary"
								style="background: linear-gradient(to top left, #28b487, #7dd56f);">Edit</a>
								<a href="../deleteDoctor?id=<%=d.getId()%>"
								class="btn btn-sm btn-danger">Delete</a></td>

						</tr>
						<%
						}
						%>

					</tbody>

				</table>
			</div>
		</div>


	</div>

</body>
</html>