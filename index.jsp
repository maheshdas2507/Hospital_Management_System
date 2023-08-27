<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>





<html>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
</style>
<body>
	<%@include file="component/navbar.jsp"%>
	
	
<%-- 	<% Connection conn=DBConnect.getConn();
	out.print(conn);
	%> --%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/doctor.jpg" class="d-block w-100" height="500px"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/hospital1.jpg" class="d-block w-100" height="500px"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/patient.jpg" class="d-block w-100" height="500px"
					alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!--Section-2  -->
	<div class="container p-3">
		<p class="text-center fs-2">Key Features of our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% safety</p>
								<p>fygssjdskdokspdsdkdok</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% safety</p>
								<p>fygssjdskdokspdsdkdok</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% safety</p>
								<p>fygssjdskdokspdsdkdok</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% safety</p>
								<p>fygssjdskdokspdsdkdok</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 ">
				<img src="img/images.png" alt="" width="250px" height="300px">
			</div>
		</div>
	</div>
<br/>

	<!--Section-4  -->

	<div class="container p-2">
		<p class="text-center fs-2">OUR TEAM</p>

		<div class="row">
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/images.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani simi</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/images.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani simi</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/images.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani simi</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/images.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani simi</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@include file="component/footer.jsp" %>
</body>
</html>
