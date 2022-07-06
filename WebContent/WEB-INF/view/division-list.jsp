<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>NFL Blog</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/nfl.ico" type="image/x-icon"/>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>


			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-user"></i>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="user-edit-profile" class="dropdown-item"> <!-- Message Start -->
							<div class="media align-items-center">
								<img
									src="${pageContext.request.contextPath}/${loginAuthor.image}"
									alt="User Avatar" class="img-brand-50 mr-3 img-circle" style="width: 128px"; height="128px">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										<sec:authentication property="principal.username" />
									</h3>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="author-change-password" class="dropdown-item"> <i class="fas fa-key"></i>
							Change password
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item"> <form:form
								action="${pageContext.request.contextPath}/logout">
								<i class="fas fa-sign-out-alt"></i>
								<input type="submit" value="Sign out">
							</form:form>
						</a>
					</div></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- User Logo -->
			<a href="author-list" class="brand-link"> <img
				src="${pageContext.request.contextPath}/dist/img/nfl-img.png"
				alt="NFL Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">NFL Blog</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               <sec:authorize access="hasRole('admin')">
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Authors <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="author-list" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>Authors list</p>
								</a></li>
								<li class="nav-item"><a href="author-form" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>Add Author</p>
								</a></li>
							</ul></li>
							</sec:authorize>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Blogs <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="blog-list" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>Blogs list</p>
								</a></li>
								<li class="nav-item"><a href="blog-form" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>Add Blog</p>
								</a></li>
							</ul></li>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Categories <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="category-list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Categories list</p>
								</a></li>
								<li class="nav-item"><a href="category-form"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Add Category</p>
								</a></li>
							</ul></li>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Divisions <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="division-list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Divisions list</p>
								</a></li>
								<li class="nav-item"><a href="division-form"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Add Division</p>
								</a></li>
							</ul></li>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Teams <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="team-list" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>Teams list</p>
								</a></li>
								<li class="nav-item"><a href="team-form" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>Add Team</p>
								</a></li>
							</ul></li>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Contact <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="contact-list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Contact list</p>
								</a></li>
							</ul></li>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Comments <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="comment-list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Comments list</p>
								</a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Divisions</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<sec:authorize access="hasRole('admin')">
									<li class="breadcrumb-item"><a href="author-list">Authors</a></li>
								</sec:authorize>
								<li class="breadcrumb-item"><a href="blog-list">Blogs</a></li>
								<li class="breadcrumb-item"><a href="category-list">Categories</a></li>
								<li class="breadcrumb-item"><a href="division-list">Divisions</a></li>
								<li class="breadcrumb-item"><a href="team-list">Teams</a></li>
								<li class="breadcrumb-item"><a href="contact-list">Contacts</a></li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">

							<div class="card">
								<div class="card-header">
									<h3 class="card-title">All Divisions</h3>
									<div class="card-tools">
										<a href="division-form" class="btn btn-success"> <i
											class="fas fa-plus-square"></i> Add new Division
										</a>
									</div>
									<div class="card-tools"></div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th style="width: 9%" class="text-center">Order at the
													front</th>
												<th style="width: 20px">Status</th>
												<th class="text-center">Title</th>
												<th class="text-center">Photo</th>
												<th class="text-center">Title button</th>
												<th class="text-center">URL button</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="division" items="${divisionList}">
												<tr>
													<td class="text-center">${division.numOrder}</td>
													<c:if test="${division.enabled == true}">
														<td class="text-center"><span class="text-success">enabled</span>
														</td>
													</c:if>
													<c:if test="${division.enabled == false}">
														<td class="text-center"><span class="text-danger">disabled</span>
														</td>
													</c:if>
													<td class="text-center">${division.title}</td>
													<td class="text-center"><img
														src="${pageContext.request.contextPath}/${division.image}"
														style="max-width: 80px;"></td>
													<td class="text-center">${division.titleButton}</td>
													<td class="text-center">${division.urlButton}</td>
													<td class="text-center">
														<div class="btn-group">
															<a href="division-form-update?id=${division.id}"
																class="btn btn-info"> <i class="fas fa-edit"></i>

															</a> <a href="division-enable?id=${division.id}"
																class="btn btn-info"> <c:if
																	test="${division.enabled}">
																	<i class="fas fa-eye"></i>
																</c:if> <c:if test="${!division.enabled}">
																	<i class="fas fa-eye-slash"></i>
																</c:if>
															</a>
															<button type="button" class="btn btn-info"
																data-toggle="modal"
																data-target="#delete-modal-${division.id}">
																<i class="fas fa-trash"></i>
															</button>
														</div>
													</td>
												</tr>

												<div class="modal fade" id="delete-modal-${division.id}">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title">Delete Division</h4>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">
																<p>Are you sure you want to delete division?</p>
																<strong></strong>
															</div>
															<div class="modal-footer justify-content-between">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Cancel</button>
																<a href="division-delete?id=${division.id}"
																	class="btn btn-danger">Delete</a>
															</div>
														</div>
														<!-- /.modal-content -->
													</div>
													<!-- /.modal-dialog -->
												</div>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
								<div class="card-footer clearfix"></div>
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->



		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="float-right d-none d-sm-inline">Spring</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2021 <a href="#">NFL Blog</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
</body>
</html>
