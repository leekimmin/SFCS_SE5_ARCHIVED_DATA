<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin tài khoản</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
<!--
	$(document).ready(function() {

		var readURL = function(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('.avatar').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$(".file-upload").on('change', function() {
			readURL(this);
		});
	});
//-->
</script>

<body>
	<hr>
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-10">
				<h1>Thông tin tài khoản</h1>
			</div>
			<div class="col-sm-2">
				<a href="${pageContext.request.contextPath }" class="pull-right"><img
					title="profile image" class="img-circle img-responsive"
					src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<!--left col-->
				<c:url value="/member/myaccount" var="myaccount"></c:url>
				<form class="form" action="${myaccount}" method="post"
					id="registrationForm" enctype="multipart/form-data">
					<input name="role" value="${sessionScope.account.roleId}" hidden="" >
					<input name="id" value="${sessionScope.account.id}" hidden="">
					<div class="text-center">
						<c:url value="/image?fname=${sessionScope.account.avatar}"
							var="imgUrl"></c:url>
						<img src="${imgUrl }" class="avatar img-square img-thumbnail"
							alt="avatar">
						<h6>Thay đổi hình đại diện</h6>
						<input type="file" name="avatar" class="text-center center-block file-upload">
					</div>
				</hr>
				<br>
			</div>
			<!--/col-3-->
			<div class="col-sm-9">
				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<hr>
						<div class="form-group">
						<h4 style="color: red;"> ${alertMsg}</h4>
							<div class="col-xs-6">
								<label for="firstname"><h4>Họ:</h4></label> <input
									type="text" class="form-control" name="firstname" id="firstname"
									value="${sessionScope.account.firstname}"
									title="enter your first name if any.">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">
								<label for="lastname"><h4>Tên:</h4></label> <input
									type="text" class="form-control" name="lastname" id="lastname"
									value="${sessionScope.account.lastname}"
									title="enter your first name if any.">
							</div>
						</div>
											
						<div class="form-group">
							<div class="col-xs-6">
								<label for="birthday"><h4>Ngày sinh:</h4></label> <input
									type="date" class="form-control" name="birthday"
									id="birthday" value="${sessionScope.account.birthday}">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">
								<label for="gender"><h4>Giới tính:</h4></label>
								<div class="checkbox">
									<c:choose>
										<c:when test="${sessionScope.account.gender == 'M'}">
											<label> <input type="radio" value="M" name="gender" checked="checked" />Nam </label>
											<label> <input type="radio" value="F" name="gender"/>Nữ </label>
										</c:when>
										<c:otherwise>
											<label> <input type="radio" value="M" name="gender" />Nam </label>
											<label> <input type="radio" value="F" name="gender" checked="checked" />Nữ </label>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">
								<label for="username"><h4>Tên đăng nhập:</h4></label> <input
									type="text" class="form-control" name="username"
									id="username" value="${sessionScope.account.username}" disabled="disabled">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">
								<label for="email"><h4>Email:</h4></label> <input
									type="text" class="form-control" name="email" id="email"
									value="${sessionScope.account.email}"
									title="enter your first name if any.">
							</div>
						</div>
						
						<div class="form-group">

							<div class="col-xs-6">
								<label for="phone"><h4>Số điện thoại:</h4></label> <input
									type="text" class="form-control" name="phone" id="phone"
									value="${sessionScope.account.phone}"
									title="enter your first name if any.">
							</div>
						</div>
						
						<div class="form-group">

							<div class="col-xs-6">
								<label for="address"><h4>Địa chỉ:</h4></label> <input
									type="text" class="form-control" name="address" id="address"
									value="${sessionScope.account.address }"
									title="enter your first name if any.">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">
								<label for="password"><h4>Mật khẩu:</h4></label> <input
									type="password" class="form-control" name="password" id="phone"
									value="${sessionScope.account.password}"
									title="enter your phone number if any.">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">
							<label for="passwordConfirm"><h4>Nhập lại mật khẩu:</h4></label> <input
									type="password" class="form-control" name="passwordConfirm" id="phone"
									required="required"
									title="enter your phone number if any.">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-12">
								<br>
								<button class="btn btn-lg btn-success" type="submit">
									<i class="glyphicon glyphicon-ok-sign"></i> Lưu lại
								</button>
								<button class="btn btn-lg" type="reset">
									<i class="glyphicon glyphicon-repeat"></i> Đặt lại
								</button>
							</div>
						</div>
						</form>
						<hr>
					</div>

					<!--/tab-pane-->
					<div class="tab-pane" id="messages">
						<h2></h2>
						<hr>
					</div>

					<!--/tab-pane-->
					<div class="tab-pane" id="settings">
						<hr>
						<form class="form" action="" method="post" id="registrationForm">
							<div class="form-group">
								<div class="col-xs-6">
									<label for="first_name"><h4>Họ:</h4></label> <input
										type="text" class="form-control" name="first_name"
										id="first_name" placeholder="first name"
										title="enter your first name if any.">
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-xs-6">
									<label for="last_name"><h4>Tên:</h4></label> <input
										type="text" class="form-control" name="last_name"
										id="last_name" placeholder="last name"
										title="enter your last name if any.">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-6">
									<label for="phone"><h4>Số điện thoại:</h4></label> <input type="text"
										class="form-control" name="phone" id="phone"
										placeholder="enter phone"
										title="enter your phone number if any.">
								</div>
							</div>

	
							<div class="form-group">
								<div class="col-xs-6">
									<label for="email"><h4>Email:</h4></label> <input type="email"
										class="form-control" name="email" id="email"
										placeholder="you@email.com" title="enter your email.">
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-xs-6">
									<label for="email"><h4>Địa chỉ:</h4></label> <input
										type="email" class="form-control" id="location"
										placeholder="somewhere" title="enter a location">
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-xs-6">
									<label for="password"><h4>Mật khẩu:</h4></label> <input
										type="password" class="form-control" name="password"
										id="password" placeholder="password"
										title="enter your password.">
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-xs-6">
									<label for="password2"><h4>Xác thực:</h4></label> <input
										type="password" class="form-control" name="password2"
										id="password2" placeholder="password2"
										title="enter your password2.">
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success pull-right" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Lưu lại
									</button>
									<!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
								</div>
							</div>
						</form>
					</div>
				</div>
				<!--/tab-pane-->
			</div>
			<!--/tab-content-->
		</div>
		<!--/col-9-->
	</div>
	<!--/row-->
</body>
</html>