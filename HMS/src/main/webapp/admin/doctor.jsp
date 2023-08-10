<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>


<div class="container mt-5">
	<div class="card point-card">
	<div class="card-body">
	<button type="button" class="btn btn-success" data-bs-toggle="modal"
		data-bs-target="#exampleModal">Add Doctor</button>
		<p class="fs-3 text-center ">Doctor Details</p>
		<c:if test="${not empty succMsg}">
			<p class="text-center text-success fs-3">${succMsg}</p>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		<c:if test="${not empty errorMsg}">
			<p class="text-center text-danger fs-3">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<table class="table">
			<thead>
				<tr>
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
	DoctorDao dao2=new DoctorDao(DBConnect.getConn());
	List<Doctor> list2=dao2.getAllDoctor();
	for(Doctor d:list2)
	{%>
	<tr>
	<td><%=d.getFullName() %></td>
	<td><%=d.getDob() %></td>
	<td><%=d.getQualification() %></td>
	<td><%=d.getSpecialist() %></td>
	<td><%=d.getEmail() %></td>
	<td><%=d.getMobNo() %></td>
	<td>
	<a href="edit_doc.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary" >Edit</a>
	<a href="../deleteDoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger">Delete</a>
	</td>
	
	</tr>
	
		
	<%}
	%>
			</tbody>
		</table>
	</div>
	</div>
</div>
	

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Doctor</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<form action="../addDoctor" method="post">
					<div class="mb-3">
						<label  class="form-label">Full Name</label> <input type="text" name="fullname" required class="form-control">
					</div>
					<div class="mb-3">
						<label  class="form-label">DOB</label><input type="date" name="dob" class="form-control">
				</div>
					<div class="mb-3">
						<label  class="form-label">Qualification</label> <input type="text" name="qualification" required class="form-control">
					</div>
					<div class="mb-3">
						<label  class="form-label">Specialist</label><select name="specialist" required class="form-control">
						<option>--Select---</option>
						<% SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
						List<Specialist> list=dao.getAllSpecialist();
						for(Specialist s:list)
						{%>
						<option><%=s.getSpecialistName() %></option>
							
						<%}
						
						
						%>
						</select>
				</div>
					<div class="mb-3">
						<label  class="form-label">Email</label> <input type="email" name="email" required class="form-control">
					</div>
					<div class="mb-3">
						<label  class="form-label">Mob No</label><input type="text" name="mobno" required class="form-control">
				</div>
				<div class="mb-3">
						<label  class="form-label">Password</label> <input type="password" name="password" required class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					
				</div>
			</div>
		</div>
	</div>



</body>
</html>