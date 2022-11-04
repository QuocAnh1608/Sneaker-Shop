<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Manager</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<link href="../views/css/bootstrap.min.css" rel="stylesheet">
<link href="../views/css/table.css" rel="stylesheet">
<%@include file="commit/head.jsp"%>
</head>
<body>

	<div class="container-fluid position-relative d-flex p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->

		<!-- Sidebar Start -->
		<div class="sidebar pe-4 pb-3">
			<nav class="navbar bg-secondary navbar-dark">
				<a href="<c:url value='/index'/>" class="navbar-brand mx-4 mb-3">
					<h3 class="text-primary">
						<i class="fa fa-user-edit me-2"></i>Publlo
					</h3>
				</a>
				<div class="d-flex align-items-center ms-4 mb-4">
					<div class="position-relative">
						<img class="rounded-circle"
							src="<c:url value= '/views/img/l1.jpg'/> " alt=""
							style="width: 40px; height: 40px;">
						<div
							class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
					</div>
					<div class="ms-3">
						<h6 class="mb-0">Hi: </h6>
						<span>${user.fullname}</span>
					</div>
				</div>
				<form action=""></form>
				<div class="navbar-nav w-100">

					<a href="<c:url value='/User'/>" class="nav-item nav-link"><i
						class="fa fa-table me-2" ></i>Tables</a> 
						<a href="<c:url value= '/Manager'/> "
						class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Product</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="<c:url value='/sign-up'/>" class="dropdown-item">Sign In</a> <a
								href="<c:url value='/sign-out'/>" class="dropdown-item">Sign
								Up</a>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<!-- Sidebar End -->


		<!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<nav
				class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
				<a href="index.jsp" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0">
						<i class="fa fa-user-edit"></i>
					</h2>
				</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
					class="fa fa-bars"></i>
				</a>

				<div class="navbar-nav align-items-center ms-auto">


					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <img
							class="rounded-circle me-lg-2"
							src="<c:url value= '/views/img/l1.jpg'/> " alt=""
							style="width: 40px; height: 40px;"> <span
							class="d-none d-lg-inline-flex">Hi</span>
						</a>
						<div
							class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
							<a href="<c:url value='/Product#menu'/>"
								class="dropdown-item">Product Page</a> <a href="<c:url value='/sign-out'/>"
								class="dropdown-item">Log Out</a>
						</div>
					</div>
				</div>
			</nav>
			<!-- Navbar End -->
		<form action="/Demoasm/UserServlet" method="post">
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">

					<div class="col-12">
						<div class="bg-secondary rounded h-100 p-4">
							<h6 class="mb-4">Table</h6>
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th scope="col" ></th>
											<th scope="col" colspan="2">Username</th>
											
											<th scope="col" colspan="2">Fullname</th>
											
											<th scope="col" colspan="2">Phone</th>
											
										</tr>
									</thead>
									<tbody>
											<tr>
												<th scope="row"></th>
												<td colspan="2"> <div><input type="text" required="required" placeholder="Nhập Username" name="id" value="${fill.id}"></div> </td>
												
												<td colspan="2"> <div><input type="text" required="required" placeholder="Nhập Tên" name="fullname" value="${fill.fullname}"></div> </td>
												
												<td> <div><input type="text" required="required" placeholder="Nhập sdt" name="sdt" value="${fill.sdt}"></div> </td>
												<td> </td>
											</tr>
											<tr>
											<th scope="row"></th>
												<td colspan="2"> Password <div><input type="password" required="required" placeholder="Nhập Password" name="passwords" value="${fill.passwords}"></div> </td>
												
												<td colspan="2"> </td>
												<td>  </td>
												
												<td> </td>
											</tr>
											<tr>
											<th scope="row"></th>
												<td colspan="2">Email <div><input type="text" required="required" placeholder="Nhập Email" name="email" value="${fill.email}"></div> </td>
												
												<td colspan="2">  Roles<br> <div> <input type="radio" name="roles" ${fill.roles?"checked":""} value="true">Admin 
												<input type="radio" name="roles" ${!fill.roles?"checked":""} value="false">User </div></td>
												
												<td>  </td>
												<td></td>
											</tr>
											<tr>
												<th scope="row"></th>
												<td> <button type="submit" style="width: 150px;height: 40px;font-size: larger;" class="btn btn-outline-success" formaction="/Demoasm/insert">Insert</button> </td>
												<td> <button type="submit" style="width: 150px;height: 40px;font-size: larger;" class="btn btn-outline-warning" formaction="/Demoasm/update">Update</button></td>
												<td> <button type="submit" style="width: 150px;height: 40px;font-size: larger;" class="btn btn-outline-danger" 	formaction="/Demoasm/delete">Delete</button> </td>
												<td> <button type="submit" style="width: 150px;height: 40px;font-size: larger;" class="btn btn-outline-warning" formaction="/Demoasm/reset">Reset</button></td>
												<td>  </td>
												<td></td>
											</tr>
											
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
			<!-- Table Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">

					<div class="col-12">
						<div class="bg-secondary rounded h-100 p-4">
							<h6 class="mb-4">Responsive Table</h6>
							<div class="table-responsive">


								<table class="table">
									<thead>

										<tr>
											<th scope="col">#</th>
											<th scope="col">Username</th>
											<th scope="col">Password</th>
											<th scope="col">Fullname</th>
											<th scope="col">Email</th>
											<th scope="col">Phone</th>
											<th scope="col">Roles</th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<c:set var="stt" value="0"></c:set>
										<c:forEach var="users" items="${users}">
											<tr>
												<c:set var="stt" value="${stt+1}"></c:set>
												<th scope="row">${stt}</th>
												<td>${users.id}</td>
												<td>${users.passwords }</td>
												<td>${users.fullname }</td>
												<td>${users.email }</td>
												<td>${users.sdt }</td>
												<td>${users.roles }</td>
												<td> <a href="/Demoasm/edit?id=${users.id}">Edit</a> </td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- Table End -->



			<!-- Footer End -->
		</div>
		<!-- Content End -->


		<!-- Back to Top -->

	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<%@include file="commit/bot.jsp"%>
	<!-- Template Javascript -->
	<script src="../views/js/main.js"></script>
</body>

</html>