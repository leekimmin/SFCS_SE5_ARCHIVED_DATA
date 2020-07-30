<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/view/client/static" var="url"></c:url>
<title>Register</title>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- BOOTSTRAP STYLES-->
<link href="${url}/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" />

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/plugins/animate.css">
<link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<!-- <link rel="stylesheet" href="${url}/plugins/sky-forms-pro/skyforms/css/sky-forms.css"> -->
<!-- <link rel="stylesheet" href="${url}/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css"> -->

<!-- CSS Page Styles -->
<link rel="stylesheet" href="${url}/css/pages/log-reg-v3.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">
			<!-- Topbar v3 -->
			<jsp:include page="topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Breadcrumbs v4 ===-->
		<div class="breadcrumbs-v4">
			<div class="container">
				<span class="page-name">Đăng nhập</span>
				<h1>
					<span class="shop-red">SMART FOOD BÁCH KHOA XIN CHÀO</span>
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="/welcome">Trang chủ</a></li>
					<li class="active">Đăng ký</li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Register ===-->
		<div class="log-reg-v3 content-md margin-bottom-30">
			<div class="container">
				<div class="row">
					<div class="col-md-7 md-margin-bottom-50">
						<h2 class="welcome-title">Chào mừng bạn đến với SFCS</h2>
						<p>SFCS được Trường Đại Học Bách Khoa TP.HCM thiết lập và hoạt động vào tháng 5/2020.</p>
						<p>BK Food Court sẽ đem cho các bạn những món ăn ngon, bổ dưỡng và an toàn vệ sinh.</p>
						<br>
						<div class="row margin-bottom-50">
							<div class="col-sm-4 md-margin-bottom-20">
								<div class="site-statistics">
									<span>10+</span> <small>Thương hiệu</small>
								</div>
							</div>
							<div class="col-sm-4 md-margin-bottom-20">
								<div class="site-statistics">
									<span>2345</span> <small>Thành viên</small>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="site-statistics">
									<span>6h30 - 21h00</span> <small>Giờ hoạt động</small>
								</div>
							</div>
						</div>
						<div class="members-number">
							<h3>
								Địa chỉ: Đại học Bách Khoa Tp. Hồ Chí Minh, Quận Thủ Đức, Thành phố Hồ Chí Minh
							</h3>
							<img class="img-responsive" src="${url}/img/address.png" alt="">
						</div>
					</div>

					<div class="col-md-5">
						<form id="sky-form4" class="log-reg-block sky-form"
							action="register" method="post">
							<h2>Đăng ký tài khoản</h2>
							<h3 style="color: red;"> ${alertMsg}</h3>

							<div class="login-input reg-input">
								<div class="row">
									<div class="col-md-6 md-margin-bottom-50">
										<section>
											<label class="input" > <input type="text"
												name="firstname" placeholder="Họ" class="form-control">
											</label>
										</section>
									</div>
									<div class="col-md-6 md-margin-bottom-50">
										<section>
											<label class="input"> <input type="text"
												name="lastname" placeholder="Tên" class="form-control">
											</label>
										</section>
									</div>
								</div>
								<section>
									<label class="input"> <input type="text"
										name="username" placeholder="Tên đăng nhập" class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="email" name="email"
										placeholder="Địa chỉ Email" class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="password"
										name="password" placeholder="Mật khẩu" id="password"
										class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="password"
										name="passwordConfirm" placeholder="Nhập lại mật khẩu"
										class="form-control">
									</label>
								</section>
								<section>
									<label class="input">Giới tính</label>
									<input type="radio" value="M" name="gender"/> Nam
									<input type="radio" value="F" name="gender"/> Nữ
								</section>
								<section>
									<label>Ngày tháng năm sinh</label><br>
									<label class="input"> <input type="date"
										name="birthday" class="form-control">
									</label>
								</section>
							</div>
							<button class="btn-u btn-u-sea-shop btn-block margin-bottom-20"
								type="submit">Tạo tài khoản</button>
						</form>

						<div class="margin-bottom-20"></div>
						<p class="text-center">
							Đã có tài khoản? <a href="${pageContext.request.contextPath }/login">Đăng nhập</a>
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
			<!--/end container-->
		</div>
		<!--=== End Register ===-->

		<!--=== Shop Subscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>đăng ký để nhận <strong>bản tin hàng tuần</strong> của chúng tôi</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Nhập địa chỉ email..."> <span
								class="input-group-btn">
								<button class="btn" type="button">
									<i class="fa fa-envelope-o"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Shop Suvbscribe ===-->

		<!--=== Footer v4 ===-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script src="${url}/plugins/jquery/jquery.min.js"></script>
	<script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="${url}/plugins/back-to-top.js"></script>
	<script src="${url}/plugins/smoothScroll.js"></script>
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/forms/page_registration.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			Registration.initRegistration();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>