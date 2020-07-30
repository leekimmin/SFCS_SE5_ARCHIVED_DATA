<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>User Management</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->

<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="${url}/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
</head>
<body>
	<div id="wrapper">

		<jsp:include page="/view/admin/view/nav-bar.jsp"></jsp:include>

		<!-- /. NAV TOP  -->
		<jsp:include page="/view/admin/view/slide-bar.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>List Users</h2>
						<h5>You can manage users in here</h5>
						<button onclick="location.href='${pageContext.request.contextPath }/admin/user/add'" type="button">
         				Add New Account</button>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-heading">Advanced Tables</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>ID</th>
												<th>Avatar</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Birthdate</th>
												<th>Gender</th>
												<th>Email</th>
												<th>Phone</th>
												<th>Address</th>
												<th>User Name</th>
												<th>Password</th>
												<th>Role</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${userList }" var="list">
												<tr class="odd gradeX">
													<td>${list.id }</td>
													<c:url value="/image?fname=${list.avatar }" var="imgUrl"></c:url>
													<td><img height="70" width="90" src="${imgUrl}" /></td>
													<td>${list.firstname }</td>
													<td>${list.lastname }</td>
													<td>${list.birthday }</td>
													<td>${list.gender }</td>
													<td>${list.email }</td>
													<td>${list.phone }</td>
													<td>${list.address }</td>
													<td>${list.username }</td>
													<td>${list.password }</td>
													<td class="center">
														<c:choose>
															<c:when test="${list.roleId == 1 }">Customer</c:when>
															<c:when test="${list.roleId == 2 }">Admin</c:when>
															<c:when test="${list.roleId == 3 }">Cook</c:when>
															<c:when test="${list.roleId == 4 }">Vendor</c:when>
															<c:when test="${list.roleId == 5 }">Manager</c:when>
														</c:choose>
													</td>
													<td>
														<a href="<c:url value='/admin/user/edit?id=${list.id }'/>" class="center">Edit</a> | 
														<a href="<c:url value='/admin/user/delete?id=${list.id }'/>" class="center">Delete</a>
													</td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>

			</div>

		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="${url}/js/dataTables/jquery.dataTables.js"></script>
	<script src="${url}/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>

</body>
</html>