<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
<!-- <link rel="stylesheet" href="style.css"> -->
<!-- Boxicons CDN Link -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
/* Googlefont Poppins CDN Link */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.sidebar {
	position: fixed;
	height: 100%;
	width: 240px;
	background: #000;
	transition: all 0.5s ease;
}

.sidebar.active {
	width: 60px;
}

.sidebar .logo-details {
	height: 80px;
	display: flex;
	align-items: center;
}

.sidebar .logo-details i {
	font-size: 28px;
	font-weight: 500;
	color: #fff;
	min-width: 60px;
	text-align: center
}

.sidebar .logo-details .logo_name {
	color: #fff;
	font-size: 24px;
	font-weight: 500;
}

.sidebar .nav-links {
	margin-top: 10px;
}

.sidebar .nav-links li {
	position: relative;
	list-style: none;
	height: 50px;
}

.sidebar .nav-links li a {
	height: 100%;
	width: 100%;
	display: flex;
	align-items: center;
	text-decoration: none;
	transition: all 0.4s ease;
}

.sidebar .nav-links li a.active {
	background: #081D45;
}

.sidebar .nav-links li a:hover {
	background: #081D45;
}

.sidebar .nav-links li i {
	min-width: 60px;
	text-align: center;
	font-size: 18px;
	color: #fff;
}

.sidebar .nav-links li a .links_name {
	color: #fff;
	font-size: 15px;
	font-weight: 400;
	white-space: nowrap;
}

.sidebar .nav-links .log_out {
	position: absolute;
	bottom: 0;
	width: 100%;
}

.home-section {
	position: relative;
	background: #f5f5f5;
	min-height: 100vh;
	width: calc(100% - 240px);
	left: 240px;
	transition: all 0.5s ease;
}

.sidebar.active ~ .home-section {
	width: calc(100% - 60px);
	left: 60px;
}

.home-section nav {
	display: flex;
	justify-content: space-between;
	height: 80px;
	background: #fff;
	display: flex;
	align-items: center;
	position: fixed;
	width: calc(100% - 240px);
	left: 240px;
	z-index: 100;
	padding: 0 20px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	transition: all 0.5s ease;
}

.sidebar.active ~ .home-section nav {
	left: 60px;
	width: calc(100% - 60px);
}

.home-section nav .sidebar-button {
	display: flex;
	align-items: center;
	font-size: 24px;
	font-weight: 500;
}

nav .sidebar-button i {
	font-size: 35px;
	margin-right: 10px;
}

.home-section nav .search-box {
	position: relative;
	height: 50px;
	max-width: 550px;
	width: 100%;
	margin: 0 20px;
}

nav .search-box input {
	height: 100%;
	width: 100%;
	outline: none;
	background: #F5F6FA;
	border: 2px solid #EFEEF1;
	border-radius: 6px;
	font-size: 18px;
	padding: 0 15px;
}

nav .search-box .bx-search {
	position: absolute;
	height: 40px;
	width: 40px;
	background: #2697FF;
	right: 5px;
	top: 50%;
	transform: translateY(-50%);
	border-radius: 4px;
	line-height: 40px;
	text-align: center;
	color: #fff;
	font-size: 22px;
	transition: all 0.4 ease;
}

.home-section nav .profile-details {
	display: flex;
	align-items: center;
	background: #F5F6FA;
	border: 2px solid #EFEEF1;
	border-radius: 6px;
	height: 50px;
	min-width: 190px;
	padding: 0 15px 0 2px;
}

nav .profile-details img {
	height: 40px;
	width: 40px;
	border-radius: 6px;
	object-fit: cover;
}

nav .profile-details .admin_name {
	font-size: 15px;
	font-weight: 500;
	color: #333;
	margin: 0 10px;
	white-space: nowrap;
}

nav .profile-details i {
	font-size: 25px;
	color: #333;
}

.home-section .home-content {
	position: relative;
	padding-top: 104px;
}

.home-content .overview-boxes {
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-wrap: wrap;
	padding: 0 20px;
	margin-bottom: 26px;
	width: 100%;
}

.overview-boxes .box {
	display: flex;
	align-items: center;
	justify-content: center; /* 
	width: calc(100%/ 4 - 15px);/*  */ */
	background: #fff;
	width: 100%;
	padding: 15px 14px;
	border-radius: 12px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

.overview-boxes .box-topic {
	font-size: 20px;
	font-weight: 500;
}

.home-content .box .number {
	display: inline-block;
	font-size: 35px;
	margin-top: -6px;
	font-weight: 500;
}

.home-content .box .indicator {
	display: flex;
	align-items: center;
}

.home-content .box .indicator i {
	height: 20px;
	width: 20px;
	background: #8FDACB;
	line-height: 20px;
	text-align: center;
	border-radius: 50%;
	color: #fff;
	font-size: 20px;
	margin-right: 5px;
}

.box .indicator i.down {
	background: #e87d88;
}

.home-content .box .indicator .text {
	font-size: 12px;
}

.home-content .box .cart {
	display: inline-block;
	font-size: 32px;
	height: 50px;
	width: 50px;
	background: #cce5ff;
	line-height: 50px;
	text-align: center;
	color: #66b0ff;
	border-radius: 12px;
	margin: -15px 0 0 6px;
}

.home-content .box .cart.two {
	color: #2BD47D;
	background: #C0F2D8;
}

.home-content .box .cart.three {
	color: #ffc233;
	background: #ffe8b3;
}

.home-content .box .cart.four {
	color: #e05260;
	background: #f7d4d7;
}

.home-content .total-order {
	font-size: 20px;
	font-weight: 500;
}

.home-content .sales-boxes {
	display: flex;
	justify-content: space-between;
	/* padding: 0 20px; */
}

/* left box */
.home-content .sales-boxes .recent-sales {
	width: 65%;
	background: #fff;
	padding: 20px 30px;
	margin: 0 20px;
	border-radius: 12px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

.home-content .sales-boxes .sales-details {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.sales-boxes .box .title {
	font-size: 24px;
	font-weight: 500;
	/* margin-bottom: 10px; */
}

.sales-boxes .sales-details li.topic {
	font-size: 20px;
	font-weight: 500;
}

.sales-boxes .sales-details li {
	list-style: none;
	margin: 8px 0;
}

.sales-boxes .sales-details li a {
	font-size: 18px;
	color: #333;
	font-size: 400;
	text-decoration: none;
}

.sales-boxes .box .button {
	width: 100%;
	display: flex;
	justify-content: flex-end;
}

.sales-boxes .box .button a {
	color: #fff;
	background: #0A2558;
	padding: 4px 12px;
	font-size: 15px;
	font-weight: 400;
	border-radius: 4px;
	text-decoration: none;
	transition: all 0.3s ease;
}

.sales-boxes .box .button a:hover {
	background: #0d3073;
}

/* Right box */
.home-content .sales-boxes .top-sales {
	width: 35%;
	background: #fff;
	padding: 20px 30px;
	margin: 0 20px 0 0;
	border-radius: 12px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

.sales-boxes .top-sales li {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin: 10px 0;
}

.sales-boxes .top-sales li a img {
	height: 40px;
	width: 40px;
	object-fit: cover;
	border-radius: 12px;
	margin-right: 10px;
	background: #333;
}

.sales-boxes .top-sales li a {
	display: flex;
	align-items: center;
	text-decoration: none;
}

.sales-boxes .top-sales li .product, .price {
	font-size: 17px;
	font-weight: 400;
	color: #333;
}
/* Responsive Media Query */
@media ( max-width : 1240px) {
	.sidebar {
		width: 60px;
	}
	.sidebar.active {
		width: 220px;
	}
	.home-section {
		width: calc(100% - 60px);
		left: 60px;
	}
	.sidebar.active ~ .home-section {
		/* width: calc(100% - 220px); */
		overflow: hidden;
		left: 220px;
	}
	.home-section nav {
		width: calc(100% - 60px);
		left: 60px;
	}
	.sidebar.active ~ .home-section nav {
		width: calc(100% - 220px);
		left: 220px;
	}
}

@media ( max-width : 1150px) {
	.home-content .sales-boxes {
		flex-direction: column;
	}
	.home-content .sales-boxes .box {
		width: 100%;
		overflow-x: scroll;
		margin-bottom: 30px;
	}
	.home-content .sales-boxes .top-sales {
		margin: 0;
	}
}

@media ( max-width : 1000px) {
	.overview-boxes .box {
		width: calc(100%/ 2 - 15px);
		margin-bottom: 15px;
	}
}

@media ( max-width : 700px) {
	nav .sidebar-button .dashboard, nav .profile-details .admin_name, nav .profile-details i
		{
		display: none;
	}
	.home-section nav .profile-details {
		height: 50px;
		min-width: 40px;
	}
	.home-content .sales-boxes .sales-details {
		width: 560px;
	}
}

@media ( max-width : 550px) {
	.overview-boxes .box {
		width: 100%;
		margin-bottom: 15px;
	}
	.sidebar.active ~ .home-section nav .profile-details {
		display: none;
	}
}

@media ( max-width : 400px) {
	.sidebar {
		width: 0;
	}
	.sidebar.active {
		width: 60px;
	}
	.home-section {
		width: 100%;
		left: 0;
	}
	.sidebar.active ~ .home-section {
		left: 60px;
		width: calc(100% - 60px);
	}
	.home-section nav {
		width: 100%;
		left: 0;
	}
	.sidebar.active ~ .home-section nav {
		left: 60px;
		width: calc(100% - 60px);
	}
}
/* Popup Open button */
.open-button {
	color: #FFF;
	background: #0066CC;
	padding: 10px;
	text-decoration: none;
	border: 1px solid #0157ad;
	border-radius: 3px;
}

.open-button:hover {
	background: #01478e;
}

.popup {
	position: fixed;
	top: 40px;
	left: 0px;
	background: rgba(0, 0, 0, 0.75);
	width: 100%;
	height: 100%;
	display: none;
}

/* Popup inner div */
.popup-content {
	width: 500px;
	margin: 0 auto;
	box-sizing: border-box;
	padding: 40px;
	margin-top: 20px;
	box-shadow: 0px 2px 6px rgba(0, 0, 0, 1);
	border-radius: 3px;
	background: #fff;
	position: relative;
}

/* Popup close button */
.close-button {
	width: 25px;
	height: 25px;
	position: absolute;
	top: 0px;
	right: -0px;
	border-radius: 50px;
	background: rgba(0, 0, 0, 0.8);
	font-size: 20px;
	text-align: center;
	color: #fff;
	text-decoration: none;
}

.close-button:hover {
	background: rgba(0, 0, 0, 1);
}

@media screen and (max-width: 720px) {
	.popup-content {
		width: 90%;
	}
}
</style>
</head>
<body>
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx bxl-c-plus-plus'></i> <span class="logo_name">CMS</span>
		</div>
		<ul class="nav-links">
			<li><a href="#" class="active"> <i class='bx bx-grid-alt'></i>
					<span class="links_name">Dashboard</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-box'></i> <span
					class="links_name">Students</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-list-ul'></i> <span
					class="links_name">Active Student</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-pie-chart-alt-2'></i> <span
					class="links_name">FeePaid</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-coin-stack'></i> <span
					class="links_name">Courses</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-book-alt'></i> <span
					class="links_name">Problems</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-user'></i> <span
					class="links_name">Teacher</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-message'></i> <span
					class="links_name">Messages</span>
<!-- 			</a></li> -->
<!-- 			<li><a href="#"> <i class='bx bx-heart'></i> <span -->
<!-- 					class="links_name"></span> -->
<!-- 			</a></li> -->
<!-- 			<li><a href="#"> <i class='bx bx-cog'></i> <span -->
<!-- 					class="links_name">Setting</span> -->
<!-- 			</a></li> -->
			<li class="log_out"><a href="/logout"> <i
					class='bx bx-log-out'></i> <span class="links_name">Log out</span>
			</a></li>
		</ul>
	</div>
	<section class="home-section">
		<nav>
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i> <span class="dashboard">Dashboard</span>
			</div>

			<div class="profile-details">
				<!--<img src="images/profile.jpg" alt="">-->
				<span class="admin_name">${userName}</span> <i
					class='bx '></i>
			</div>
		</nav>

		<div class="home-content  ">
			<div class="overview-boxes">
				<c:if test="${role == 'student'  }">
					<div class="box">
						<div class="right-side text-center">
							<label for="colFormLabelLg"
								class="col-sm-2 col-form-label col-form-label-lg">Uploads</label>
							<div class="accordion accordion-flush" id="accordionFlushExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="flush-headingOne">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
											aria-expanded="false" aria-controls="flush-collapseOne">
											Id</button>
									</h2>
									<div id="flush-collapseOne"
										class="accordion-collapse collapse w-100"
										aria-labelledby="flush-headingOne"
										data-bs-parent="#accordionFlushExample">
										<div class="accordion-body">
											<div class="container row ">
												<div col-md-12>
													<small class="text-muted">Document
														Uploads(govt*Any)</small>
													<form>
														<div class="input-group mb-3">
															<label class="input-group-text" for="inputGroupFile01">Upload
																your id</label> <input type="file" class="form-control"
																id="inputGroupFile01">
														</div>
														<input type="submit" class="btn btn-primary"
															name="uploadsumbit" />

													</form>

												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
										aria-expanded="false" aria-controls="flush-collapseOne">
										Educational Document</button>
								</h2>
								<div id="flush-collapseOne"
									class="accordion-collapse collapse w-100"
									aria-labelledby="flush-headingOne"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
										<div class="container row ">
											<div col-md-12>
												<small class="text-muted">Document Uploads(govt*Any)</small>
												<form>
													<div class="input-group mb-3">
														<label class="input-group-text" for="inputGroupFile01">Upload
															your id</label> <input type="file" class="form-control"
															id="inputGroupFile01">
													</div>
													<input type="submit" class="btn btn-primary"
														name="uploadsumbit" />

												</form>

											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
										aria-expanded="false" aria-controls="flush-collapseOne">
										12th MarkSheet</button>
								</h2>
								<div id="flush-collapseOne"
									class="accordion-collapse collapse w-100"
									aria-labelledby="flush-headingOne"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
										<div class="container row ">
											<div col-md-12>
												<small class="text-muted">Document Uploads(govt*Any)</small>
												<form>
													<div class="input-group mb-3">
														<label class="input-group-text" for="inputGroupFile01">Upload
															your id</label> <input type="file" class="form-control"
															id="inputGroupFile01">
													</div>
													<input type="submit" class="btn btn-primary"
														name="uploadsumbit" />

												</form>

											</div>

										</div>
									</div>
								</div>
							</div>

						</div>
						<i class='bx bxs-user cart   four'></i>
					</div>
				</c:if>
			</div>


			<div class="sales-boxes ">
				<div class="recent-sales box row col-8">
					<div class="title">${userName}${fn:toUpperCase(cu.role)}</div>
					<label for="colFormLabelLg"
						class="col-sm-2 col-form-label col-form-label-lg"> <c:if
							test="${role == 'admin'  }">User</c:if></label>

					<div class="container ">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<c:if test="${role == 'teacher'  }">
								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">First</th>
											<th scope="col">Last</th>
											<th scope="col">Handle</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
									</tbody>
								</table>


							</c:if>



							<%-- 	<c:if test="${role == 'admin'  }"> --%>
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
										aria-expanded="false" aria-controls="flush-collapseOne">
										Add User To The System</button>
								</h2>
								<div id="flush-collapseOne" class="accordion-collapse collapse"
									aria-labelledby="flush-headingOne"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
										<form class="row g-3 needs-validation" novalidate>
											<div class="col-md-3">
												<label for="validationCustom04" class="form-label">User
													ID</label> <select class="form-select" id="adduserid"
													onchange="changeFunc();" required>
													<option selected  value="">Choose...</option>
													
												</select>
												<div class="invalid-feedback">Please select a UserId
													state.</div>
											</div>




											<div class="col-md-4">
												<label for="validationCustom01" class="form-label">First
													name</label> <input readonly type="text"  class="form-control"
													id="firstname" value="Mark" required>
												<div class="valid-feedback">Looks good!</div>
											</div>
											<div class="col-md-4">
												<label for="validationCustom02" class="form-label">Last
													name</label> <input type="text" class="form-control" id="lastname"
													value="Otto" required>
												<div class="valid-feedback">Looks good!</div>
											</div>
											<div class="col-md-4">
												<label for="validationCustomUsername" class="form-label">Username</label>
												<div class="input-group has-validation">
													<span class="input-group-text" id="inputGroupPrepend">@</span>
													<input type="email" readonly class="form-control"
														id="email" aria-describedby="inputGroupPrepend" required>
													<div class="invalid-feedback">Please choose a
														username.</div>
												</div>
											</div>

											<!-- ajex  -->
											<div class="col-md-3">
												<label for="validationCustom04" class="form-label">Role</label>
												<select class="form-select" id="roleid" required>
													<option selected disabled value="">Choose...</option>
													<option>...</option>
												</select>
												<div class="invalid-feedback">Please select a role
													state.</div>
											</div>
											<div class="col-md-3">
												<label for="validationCustom05" class="form-label">Phone
													Number</label> <input type="text" readonly class="form-control"
													id="phone" required>

											</div>

											<div class="col-4 offset-4">
												<button class="btn btn-primary" onclick="userDetailWithRole();" type="submit">Add
													User with Role</button>
											</div>
										</form>



									</div>
								</div>
								<hr />
								<div class="accordion-item">
									<h2 class="accordion-header" id="flush-headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
											aria-expanded="false" aria-controls="flush-collapseTwo">Delete
											User To The System</button>
									</h2>
									<div id="flush-collapseTwo" class="accordion-collapse collapse"
										aria-labelledby="flush-headingTwo"
										data-bs-parent="#accordionFlushExample">
										<div class="accordion-body">
											<form class="row g-3 needs-validation" novalidate>
												<div class="col-md-3">
													<label for="validationCustom04" class="form-label">User
														ID</label> <select class="form-select" onchange="changeFuncDelete();" id="deleteuser"
														required>
														<option selected disabled value="">Choose...</option>
														<option>...</option>
													</select>
													<div class="invalid-feedback">Please select a UserId
														state.</div>
												</div>




												<div class="col-md-4">
													<label for="validationCustom01" class="form-label">First
														name</label> <input type="text" class="form-control"
														id="deletefirstname" value="Mark" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
												<div class="col-md-4">
													<label for="validationCustom02" class="form-label">Last
														name</label> <input type="text" class="form-control"
														id="deletelastname" value="Otto" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
												<div class="col-md-4">
													<label for="validationCustomUsername" class="form-label">Username</label>
													<div class="input-group has-validation">
														<span class="input-group-text" id="inputGroupPrepend">@</span>
														<input type="text" class="form-control"
															id="deleteemail"
															aria-describedby="inputGroupPrepend" required>
														<div class="invalid-feedback">Please choose a
															username.</div>
													</div>
												</div>
											
												<!-- ajex  -->
										
												<div class="col-md-3">
													<label for="validationCustom05" class="form-label">Phone
														Number</label> <input type="text" class="form-control"
														id="deletephone" required>

												</div>

												<div class="col-4 offset-4">
													<button class="btn btn-primary" onclick="onClickDelete();" type="submit">Delete
														User</button>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="flush-headingThree">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#flush-collapseThree" aria-expanded="false"
											aria-controls="flush-collapseThree">Update User to
											the System</button>
									</h2>
									<div id="flush-collapseThree"
										class="accordion-collapse collapse"
										aria-labelledby="flush-headingThree"
										data-bs-parent="#accordionFlushExample">
										<div class="accordion-body">
											<form class="row g-3 needs-validation" novalidate>
												<div class="col-md-3">
													<label for="validationCustom04" class="form-label">User
														ID</label> <select class="form-select" onchange="changeFuncUpdate();" id="updateuser"
														required>
														<option selected disabled value="">Choose...</option>
														<option>...</option>
													</select>
													<div class="invalid-feedback">Please select a UserId
														state.</div>
												</div>




												<div class="col-md-4">
													<label for="validationCustom01" class="form-label">First
														name</label> <input type="text" class="form-control"
														id="updatefirstname" value="Mark" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
												<div class="col-md-4">
													<label for="validationCustom02" class="form-label">Last
														name</label> <input type="text" class="form-control"
														id="updatelastname" value="Otto" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
												<div class="col-md-4">
													<label for="validationCustomUsername" class="form-label">Username</label>
													<div class="input-group has-validation">
														<span class="input-group-text" id="inputGroupPrepend">@</span>
														<input type="text" class="form-control"
															id="updateemail"
															aria-describedby="inputGroupPrepend" required>
														<div class="invalid-feedback">Please choose a
															username.</div>
													</div>
												</div>
											
												<!-- ajex  -->
												
												<div class="col-md-3">
													<label for="validationCustom05" class="form-label">Phone
														Number</label> <input type="text" class="form-control"
														id="updatephone" required>

												</div>

												<div class="col-4 offset-4">
													<button class="btn btn-primary" onclick="updateuserDetail();" type="submit">Update
														User to the System</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<label for="colFormLabelLg"
						class="col-sm-2 col-form-label col-form-label-lg">Course</label>
					<div class="container ">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#CourseAdd"
										aria-expanded="false" aria-controls="flush-collapseOne">
										Add Course To The System</button>
								</h2>
								<div id="CourseAdd" class="accordion-collapse collapse"
									aria-labelledby="flush-headingOne"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
										<form class="row g-3 needs-validation" novalidate>
<!-- 											<div class="col-md-3"> -->
<!-- 												<label for="validationCustom04" class="form-label">Book -->
<!-- 													ID</label> <select class="form-select" id="validationCustom04" -->
<!-- 													required> -->
<!-- 													<option selected disabled value="">Choose...</option> -->
<!-- 													<option>...</option> -->
<!-- 												</select> -->
<!-- 												<div class="invalid-feedback">Please select a UserId -->
<!-- 													state.</div> -->
<!-- 											</div> -->




<!-- 											<div class="col-md-4"> -->
<!-- 												<label for="validationCustom01" class="form-label">CourseID -->
<!-- 													</label> <input type="text" class="form-control" -->
<!-- 													id="CourseID" value="coursename"  required> -->
<!-- 												<div class="valid-feedback">Looks good!</div> -->
<!-- 											</div> -->
											<div class="col-md-4">
												<label for="validationCustom02" class="form-label">CourseName
													</label> <input type="text" class="form-control"
													id="CourseName" value="Otto" required>
												<div class="valid-feedback">Looks good!</div>
											</div>
											<div class="col-md-4">
												<label for="validationCustomUsername" class="form-label">CourseDuration</label>
												<div class="input-group has-validation">
													<span class="input-group-text" id="inputGroupPrepend">@</span>
													<input type="text" class="form-control"
														id="CourseDuration"
														aria-describedby="inputGroupPrepend" required>
													<div class="invalid-feedback">Please choose a
														username.</div>
												</div>
											</div>
											

											<div class="col-4 offset-4">
												<button class="btn btn-primary" onclick="onClickAddCourses();" type="submit">Add
													Courses </button>
											</div>
										</form>



									</div>
								</div>
								<hr />
								<div class="accordion-item">
									<h2 class="accordion-header" id="flush-headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#CourseDelete"
											aria-expanded="false" aria-controls="flush-collapseTwo">
											Delete Course To The System</button>
									</h2>
									<div id="CourseDelete" class="accordion-collapse collapse"
										aria-labelledby="flush-headingTwo"
										data-bs-parent="#accordionFlushExample">
										<div class="accordion-body">
											<form class="row g-3 needs-validation" novalidate>
												<div class="col-md-3">
													<label for="validationCustom04" class="form-label">Course
														ID</label> <select class="form-select" onchange="changeFuncDeleteCourse();" id="deleteCourseId"
														required>
														<option selected disabled value="">Choose...</option>
														<option>...</option>
													</select>
													<div class="invalid-feedback">Please select a UserId
														state.</div>
												</div>




												<div class="col-md-4">
													<label for="validationCustom01" class="form-label">Course
														name</label> <input type="text" class="form-control"
														id="deletecoursename" value="Mark" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
												<div class="col-md-4">
													<label for="validationCustom02" class="form-label">CourseDuration
														</label> <input type="text" class="form-control"
														id="Courseduration" value="Otto" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
											
												<div class="col-4 offset-4">
													<button class="btn btn-primary" onclick="deleteCourseByid();" type="submit">Delete
														Coruse</button>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="flush-headingThree">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#CourseUpdate"
											aria-expanded="false" aria-controls="flush-collapseThree">Update
											Course to the System</button>
									</h2>
									<div id="CourseUpdate" class="accordion-collapse collapse"
										aria-labelledby="flush-headingThree"
										data-bs-parent="#accordionFlushExample">
										<div class="accordion-body">
											<form class="row g-3 needs-validation" novalidate>
<!-- 												<div class="col-md-3"> -->
<!-- 													<label for="validationCustom04" class="form-label">BookID -->
<!-- 														</label> <select class="form-select" id="validationCustom04" -->
<!-- 														required> -->
<!-- 														<option selected disabled value="">Choose...</option> -->
<!-- 														<option>...</option> -->
<!-- 													</select> -->
<!-- 													<div class="invalid-feedback">Please select a UserId -->
<!-- 														state.</div> -->
<!-- 												</div> -->




												<div class="col-md-4">
													<label for="validationCustom01" class="form-label">CouserName
														name</label> <input type="text" class="form-control"
														id="courseupdatename" value="Mark" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
												<div class="col-md-4">
													<label for="validationCustom02" class="form-label">CouserDuration
													</label> <input type="text" class="form-control"
														id="courseupdateduration" value="Otto" required>
													<div class="valid-feedback">Looks good!</div>
												</div>
											
											
												<!-- ajex  -->
												<div class="col-md-3">
													<label for="validationCustom04" class="form-label">CourseID</label>
													<select class="form-select" id="updateCourseId" onchange="changeFuncUpdateCourse();"
														required>
														<option selected disabled value="">Choose...</option>
														<option>...</option>
													</select>
													<div class="invalid-feedback">Please select a role
														state.</div>
												</div>
						

												<div class="col-4 offset-4">
													<button class="btn btn-primary" onclick="updateucourseDetail();" type="submit">Update
														Course to the System</button>
												</div>
											</form>
										</div>
									</div>
								</div>
								
								<div>
								<label for="colFormLabelLg"
						class="col-sm-2 col-form-label col-form-label-lg">All_Information</label>
								</div>
								<div>  here show the data</div>
								
								
							</div>
						</div>
					</div>
<!-- 					<label for="colFormLabelLg" -->
<!-- 						class="col-sm-2 col-form-label col-form-label-lg">Teacher</label> -->
<!-- 					<div class="container "> -->
<!-- 						<div class="accordion accordion-flush" id="accordionFlushExample"> -->
<!-- 							<div class="accordion-item"> -->
<!-- 								<h2 class="accordion-header" id="flush-headingOne"> -->
<!-- 									<button class="accordion-button collapsed" type="button" -->
<!-- 										data-bs-toggle="collapse" data-bs-target="#teacher-add" -->
<!-- 										aria-expanded="false" aria-controls="flush-collapseOne"> -->
<!-- 										Add Teacher To The System</button> -->
<!-- 								</h2> -->
<!-- 								<div id="teacher-add" class="accordion-collapse collapse" -->
<!-- 									aria-labelledby="flush-headingOne" -->
<!-- 									data-bs-parent="#accordionFlushExample"> -->
<!-- 									<div class="accordion-body"> -->
<!-- 										<form class="row g-3 needs-validation" novalidate> -->
<!-- 											<div class="col-md-3"> -->
<!-- 												<label for="validationCustom04" class="form-label">Teacher -->
<!-- 													ID</label> <select class="form-select" id="validationCustom04" -->
<!-- 													required> -->
<!-- 													<option selected disabled value="">Choose...</option> -->
<!-- 													<option>...</option> -->
<!-- 												</select> -->
<!-- 												<div class="invalid-feedback">Please select a -->
<!-- 													TeacherId</div> -->
<!-- 											</div> -->




<!-- 											<div class="col-md-4"> -->
<!-- 												<label for="validationCustom01" class="form-label">First -->
<!-- 													name</label> <input type="text" class="form-control" -->
<!-- 													id="validationCustom01" value="Mark" required> -->
<!-- 												<div class="valid-feedback">Looks good!</div> -->
<!-- 											</div> -->
<!-- 											<div class="col-md-4"> -->
<!-- 												<label for="validationCustom02" class="form-label">Last -->
<!-- 													name</label> <input type="text" class="form-control" -->
<!-- 													id="validationCustom02" value="Otto" required> -->
<!-- 												<div class="valid-feedback">Looks good!</div> -->
<!-- 											</div> -->
<!-- 											<div class="col-md-4"> -->
<!-- 												<label for="validationCustomUsername" class="form-label">Username</label> -->
<!-- 												<div class="input-group has-validation"> -->
<!-- 													<span class="input-group-text" id="inputGroupPrepend">@</span> -->
<!-- 													<input type="text" class="form-control" -->
<!-- 														id="validationCustomUsername" -->
<!-- 														aria-describedby="inputGroupPrepend" required> -->
<!-- 													<div class="invalid-feedback">Please choose a -->
<!-- 														username.</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 											<div class="col-md-6"> -->
<!-- 												<label for="validationCustom03" class="form-label">City</label> -->
<!-- 												<input type="text" class="form-control" -->
<!-- 													id="validationCustom03" required> -->
<!-- 												<div class="invalid-feedback">Please provide a valid -->
<!-- 													city.</div> -->
<!-- 											</div> -->
<!-- 											ajex  -->
<!-- 											<div class="col-md-3"> -->
<!-- 												<label for="validationCustom04" class="form-label">Role</label> -->
<!-- 												<select class="form-select" id="validationCustom04" required> -->
<!-- 													<option selected disabled value="">Choose...</option> -->
<!-- 													<option>...</option> -->
<!-- 												</select> -->
<!-- 												<div class="invalid-feedback">Please select a role -->
<!-- 													state.</div> -->
<!-- 											</div> -->
<!-- 											<div class="col-md-3"> -->
<!-- 												<label for="validationCustom05" class="form-label">Phone -->
<!-- 													Number</label> <input type="text" class="form-control" -->
<!-- 													id="validationCustom05" required> -->

<!-- 											</div> -->

<!-- 											<div class="col-4 offset-4"> -->
<!-- 												<button class="btn btn-primary" type="submit">Add -->
<!-- 													Teacher with Role</button> -->
<!-- 											</div> -->
<!-- 										</form> -->



<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<hr /> -->
<!-- 								<div class="accordion-item"> -->
<!-- 									<h2 class="accordion-header" id="flush-headingTwo"> -->
<!-- 										<button class="accordion-button collapsed" type="button" -->
<!-- 											data-bs-toggle="collapse" data-bs-target="#deleteTeacher" -->
<!-- 											aria-expanded="false" aria-controls="flush-collapseTwo"> -->
<!-- 											Delete Teacher To The System</button> -->
<!-- 									</h2> -->
<!-- 									<div id="deleteTeacher" class="accordion-collapse collapse" -->
<!-- 										aria-labelledby="flush-headingTwo" -->
<!-- 										data-bs-parent="#accordionFlushExample"> -->
<!-- 										<div class="accordion-body"> -->
<!-- 											<form class="row g-3 needs-validation" novalidate> -->
<!-- 												<div class="col-md-3"> -->
<!-- 													<label for="validationCustom04" class="form-label">Teacher -->
<!-- 														ID</label> <select class="form-select" id="validationCustom04" -->
<!-- 														required> -->
<!-- 														<option selected disabled value="">Choose...</option> -->
<!-- 														<option>...</option> -->
<!-- 													</select> -->
<!-- 													<div class="invalid-feedback">Please select a Teacher -->
<!-- 														state.</div> -->
<!-- 												</div> -->




<!-- 												<div class="col-md-4"> -->
<!-- 													<label for="validationCustom01" class="form-label">First -->
<!-- 														name</label> <input type="text" class="form-control" -->
<!-- 														id="validationCustom01" value="Mark" required> -->
<!-- 													<div class="valid-feedback">Looks good!</div> -->
<!-- 												</div> -->
<!-- 												<div class="col-md-4"> -->
<!-- 													<label for="validationCustom02" class="form-label">Last -->
<!-- 														name</label> <input type="text" class="form-control" -->
<!-- 														id="validationCustom02" value="Otto" required> -->
<!-- 													<div class="valid-feedback">Looks good!</div> -->
<!-- 												</div> -->
<!-- 												<div class="col-md-4"> -->
<!-- 													<label for="validationCustomUsername" class="form-label">Username</label> -->
<!-- 													<div class="input-group has-validation"> -->
<!-- 														<span class="input-group-text" id="inputGroupPrepend">@</span> -->
<!-- 														<input type="text" class="form-control" -->
<!-- 															id="validationCustomUsername" -->
<!-- 															aria-describedby="inputGroupPrepend" required> -->
<!-- 														<div class="invalid-feedback">Please choose a -->
<!-- 															username.</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 												<div class="col-md-6"> -->
<!-- 													<label for="validationCustom03" class="form-label">City</label> -->
<!-- 													<input type="text" class="form-control" -->
<!-- 														id="validationCustom03" required> -->
<!-- 													<div class="invalid-feedback">Please provide a valid -->
<!-- 														city.</div> -->
<!-- 												</div> -->
<!-- 												ajex  -->

<!-- 												<div class="col-md-3"> -->
<!-- 													<label for="validationCustom05" class="form-label">Phone -->
<!-- 														Number</label> <input type="text" class="form-control" -->
<!-- 														id="validationCustom05" required> -->

<!-- 												</div> -->

<!-- 												<div class="col-4 offset-4"> -->
<!-- 													<button class="btn btn-primary" type="submit">Delete -->
<!-- 														Teacher</button> -->
<!-- 												</div> -->
<!-- 											</form> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="accordion-item"> -->
<!-- 									<h2 class="accordion-header" id="flush-headingThree"> -->
<!-- 										<button class="accordion-button collapsed" type="button" -->
<!-- 											data-bs-toggle="collapse" data-bs-target="#updateTeacher" -->
<!-- 											aria-expanded="false" aria-controls="flush-collapseThree">Update -->
<!-- 											User to the System</button> -->
<!-- 									</h2> -->
<!-- 									<div id="updateTeacher" class="accordion-collapse collapse" -->
<!-- 										aria-labelledby="flush-headingThree" -->
<!-- 										data-bs-parent="#accordionFlushExample"> -->
<!-- 										<div class="accordion-body"> -->
<!-- 											<form class="row g-3 needs-validation" novalidate> -->
<!-- 												<div class="col-md-3"> -->
<!-- 													<label for="validationCustom04" class="form-label">User -->
<!-- 														ID</label> <select class="form-select" id="validationCustom04" -->
<!-- 														required> -->
<!-- 														<option selected disabled value="">Choose...</option> -->
<!-- 														<option>...</option> -->
<!-- 													</select> -->
<!-- 													<div class="invalid-feedback">Please select a UserId -->
<!-- 														state.</div> -->
<!-- 												</div> -->




<!-- 												<div class="col-md-4"> -->
<!-- 													<label for="validationCustom01" class="form-label">First -->
<!-- 														name</label> <input type="text" class="form-control" -->
<!-- 														id="validationCustom01" value="Mark" required> -->
<!-- 													<div class="valid-feedback">Looks good!</div> -->
<!-- 												</div> -->
<!-- 												<div class="col-md-4"> -->
<!-- 													<label for="validationCustom02" class="form-label">Last -->
<!-- 														name</label> <input type="text" class="form-control" -->
<!-- 														id="validationCustom02" value="Otto" required> -->
<!-- 													<div class="valid-feedback">Looks good!</div> -->
<!-- 												</div> -->
<!-- 												<div class="col-md-4"> -->
<!-- 													<label for="validationCustomUsername" class="form-label">Username</label> -->
<!-- 													<div class="input-group has-validation"> -->
<!-- 														<span class="input-group-text" id="inputGroupPrepend">@</span> -->
<!-- 														<input type="text" class="form-control" -->
<!-- 															id="validationCustomUsername" -->
<!-- 															aria-describedby="inputGroupPrepend" required> -->
<!-- 														<div class="invalid-feedback">Please choose a -->
<!-- 															username.</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 												<div class="col-md-6"> -->
<!-- 													<label for="validationCustom03" class="form-label">City</label> -->
<!-- 													<input type="text" class="form-control" -->
<!-- 														id="validationCustom03" required> -->
<!-- 													<div class="invalid-feedback">Please provide a valid -->
<!-- 														city.</div> -->
<!-- 												</div> -->
<!-- 												ajex  -->
<!-- 												<div class="col-md-3"> -->
<!-- 													<label for="validationCustom04" class="form-label">Role</label> -->
<!-- 													<select class="form-select" id="validationCustom04" -->
<!-- 														required> -->
<!-- 														<option selected disabled value="">Choose...</option> -->
<!-- 														<option>...</option> -->
<!-- 													</select> -->
<!-- 													<div class="invalid-feedback">Please select a role -->
<!-- 														state.</div> -->
<!-- 												</div> -->
<!-- 												<div class="col-md-3"> -->
<!-- 													<label for="validationCustom05" class="form-label">Phone -->
<!-- 														Number</label> <input type="text" class="form-control" -->
<!-- 														id="validationCustom05" required> -->

<!-- 												</div> -->

<!-- 												<div class="col-4 offset-4"> -->
<!-- 													<button class="btn btn-primary" type="submit">Update -->
<!-- 														Teacher to the System</button> -->
<!-- 												</div> -->
<!-- 											</form> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->


					<div class="button mt-5">
						<a class="open-button" popup-open="popup-1"
							href="javascript:void(0)">See All</a>

						<div class="popup" popup-name="popup-1">
							<div class="popup-content">
								<h2 class="mt-5 ">Add Problem</h2>
								<form id="" class="row g-3 needs-validation">
									<div class="input-group input-group-lg">
										<span class="input-group-text" id="inputGroup-sizing-lg">problem</span>
										<input type="text" id="problemToSave" name="problemToSave"
											class="form-control" aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-lg">
									</div>
									<div class="input-group mb-3">
										<input type="text" id="solutionKeyToSave"
											name="solutionKeyToSave" class="form-control"
											placeholder="problemName" aria-label="Username"> <span
											class="input-group-text">@</span> <input type="text"
											id="solutionValueToSave" name="solutionValueToSave"
											class="form-control" placeholder="Server" aria-label="Server">
									</div>
									<button type="button" id="problem" class="btn btn-primary">Save</button>
									<button type="button" id="update" class="btn btn-secondary">Update</button>


								</form>
								<h3 id="response"></h3>
								<a class="close-button mt-5" popup-close="popup-1"
									href="javascript:void(0)">x</a>
							</div>
						</div>
					</div>
				</div>
				<div class="top-sales box d-flex">


					<div class="row ">
						<div class="mt-5 p-5 " id="whatnew">What's New</div>
					<div>
							<form action="">
								<div class=" " id="role">Role</div>
								<div class="input-group flex-nowrap">
									<span class="input-group-text" id="addon-wrapping">@</span> <input
										type="text" class="form-control" placeholder="role"
										aria-label="role" id="rolesave" aria-describedby="addon-wrapping">
										<input type="submit" onclick="saveRole();">
										
										
								</div>

							</form>
						</div>



					</div>


				</div>
			</div>
		</div>
	</section>
	<script src="/js/dashBorad.js"></script>



</body>
</html>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>



</body>
</html>