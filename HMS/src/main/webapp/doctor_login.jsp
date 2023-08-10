<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor_login.jsp</title>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
</style>
<%@include file="component/allcss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point-card">
				<div class="card-body">
					<p class="fs-4 text-center">Doctor Login</p>

					<form action="doctorLogin" method="post">
						<div class="mb-3">
							<label class="form-label">Email Address</label> <input required
								name="email" type="email" class="form-control">
						</div>
						
						<div class="mb-3">
							<label class="form-label">Password</label> <input required
								name="password" type="password" class="form-control">
						</div>
						
						<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>