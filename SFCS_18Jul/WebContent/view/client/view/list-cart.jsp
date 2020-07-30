<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Vào Giỏ Hàng</title>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<c:url value="/view/client" var="url"></c:url>

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/static/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/static/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/static/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/static/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/static/plugins/animate.css">
<link rel="stylesheet" href="${url}/static/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/static/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/static/plugins/jquery-steps/css/custom-jquery.steps.css">
<link rel="stylesheet"
	href="${url}/static/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/static/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/static/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/static/css/custom.css">
</head>
<body>
	<!-- Subiz -->
	<script>
		(function(s, u, b, i, z) {
			u[i] = u[i] || function() {
				u[i].t = +new Date();
				(u[i].q = u[i].q || []).push(arguments);
			};
			z = s.createElement('script');
			var zz = s.getElementsByTagName('script')[0];
			z.async = 1;
			z.src = b;
			z.id = 'subiz-script';
			zz.parentNode.insertBefore(z, zz);
		})(document, window, 'https://widgetv4.subiz.com/static/js/app.js', 'subiz');
		subiz('setAccount', 'acqetkhujxyunuatbxzw');
	</script>
	<!-- End Subiz -->
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
				<span class="page-name">Đặt Hàng</span>
				<h1>TẬN HƯỞNG CÙNG <span class="shop-yellow">SFCS</span></h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="${url}/view/index.jsp">Trang Chủ</a></li>
					<li class="active">Giỏ Hàng</li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Content Medium Part ===-->
		<div class="content-md margin-bottom-30">
			<div class="container">
				<form class="shopping-cart" action="#">
					<div><div class="header-tags">
						<div class="overflow-h">
							<h2>Giỏ Hàng</h2>
							<p>Đánh giá &amp; chỉnh sửa đơn hàng</p>
							<i class="rounded-x fa fa-check"></i>
					</div></div>
					<section>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead><tr>
									<th>Món</th>
									<th>Đơn Giá</th>
									<th>Số Lượng</th>
									<th>Thành Tiền</th>
								</tr></thead>
							<tbody>
			
							<c:forEach items="${sessionScope.cart}" var="map">
								<tr><f:setLocale value="vi_VN"/>
									<c:url value="/image?fname=${map.value.product.image }" var="imgUrl"></c:url>
									<td class="product-in-table"><img class="img-responsive" src="${imgUrl}" alt="">
										<div class="product-it-in">
											<h3>${map.value.product.name }</h3>
											<span>${map.value.product.des }</span>
										</div>
									</td>
									<td><f:formatNumber value="${map.value.product.price }" type="currency"/></td>
									<td>${map.value.quantity }</td>
									<td class="shop-red"><f:formatNumber value="${map.value.product.price * map.value.quantity }" type="currency"/></td>
									<td><a href="${pageContext.request.contextPath}/member/cart/remove?pId=${map.value.product.id}">
										<button type="button" class="close">
											<span>&times;</span><span class="sr-only">Đóng</span>
										</button>
									</a></td>
								</tr>
							</c:forEach>
							</tbody>
								
							<tbody>
								<td></td>
								<td><strong>TỔNG TIỀN</strong></td>
								<td></td>
				
									<c:set var="total" value="${0}"/> 
										<c:forEach items="${sessionScope.cart}" var="map">
											<c:set var="total" value="${total + map.value.quantity * map.value.product.price}" />
										</c:forEach>	
								<td class="shop-red"><f:formatNumber value="${total}" type="currency"/></td>
								<td></td>
							</tbody>
							
							</table>
						</div>
					</section>
					
					
					
					<div class="header-tags">
						<div class="overflow-h">
							<h2>Thanh Toán</h2>
							<i class="rounded-x fa fa-credit-card"></i>
						</div>
					</div>
					
					<section>
						<div class="row">
							<div class="col-md-6 md-margin-bottom-50">
								<h2 class="title-type">Chọn phương thức thanh toán </h2>
								<!-- Accordion -->
								<div class="accordion-v2">
									<div class="panel-group" id="accordion">
										
										
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
													Thanh toán bằng MoMo
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="content margin-left-10">
													<a href="#">
														<img src="${url}/static/img/LogoMomo.png" alt="MoMo">
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End Accordion -->
							</div>
							
							<div class="col-md-6">
								<h2 class="title-type">Những câu hỏi thường gặp</h2>
								<!-- Accordion -->
								<div class="accordion-v2 plus-toggle">
									<div class="panel-group" id="accordion-v2">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion-v2" href="#collapseOne-v2"> 
														Tôi có thể sử dụng phương thức nào để thanh toán trên SFCS? 
													</a>
												</h4>
											</div>
											<div id="collapseOne-v2" class="panel-collapse collapse in">
												<div class="panel-body">Khi thanh toán đơn hàng, SFCS sẽ hỗ trợ bạn liên kết
												và thanh toán bằng tài khoản trên ví điện tử MoMo của bạn</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="collapsed" data-parent="#accordion-v2" href="#collapseTwo-v2">
														Tôi có thể sử dụng voucher của các cửa hàng khi đặt hàng bằng SFCS được không ?
													</a>
												</h4>
											</div>
											<div id="collapseTwo-v2" class="panel-collapse collapse">
												<div class="panel-body">Hiện tại, SFCS chỉ áp dụng ưu đãi ứng với chương trình khuyến mãi của các cửa hàng.
												Khi đó, các món ăn được khuyến mãi sẽ tự động được cập nhật giá ưu đãi và hiện lên thông báo cho bạn.
												Vậy nên voucher là một hình thức khuyến mãi khác, bạn chỉ được áp dụng khi bạn mua hàng trực tiếp tại cửa hàng đó.
												 
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="collapsed" data-parent="#accordion-v2" href="#collapseThree-v2">
														Làm thế nào để được hoàn tiền nếu như đơn hàng bị hủy sau khi đã thanh toán?
													</a>
												</h4>
											</div>
											<div id="collapseThree-v2" class="panel-collapse collapse">
												<div class="panel-body">Hệ thống SFCS sẽ cập nhật liên tục số lượng hàng hóa tại các cửa hàng.
												Nếu như hết hàng, hệ thống sẽ báo lại và không cho phép bạn thực hiện thanh toán.
												Trường hợp xảy ra sai sót, bạn có thể liên hệ với tổng đài của chúng tôi qua SĐT: 0123.456.789 hoặc
												email: foodcourt@gmail.com 
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" class="collapsed" data-parent="#accordion-v2" href="#collapseFour-v2">
														Khoảng bao lâu để tôi nhận được đơn hàng của mình ?
													</a>
												</h4>
											</div>
											<div id="collapseFour-v2" class="panel-collapse collapse">
												<div class="panel-body">Điều này tùy thuộc vào thời gian chuẩn bị ở bếp và địa chỉ nhận đơn hàng của bạn.
												Tuy nhiên SFCS cam kết sẽ luôn thực hiện giao hàng trong thời gian sớm nhất có thể để đem đến cho bạn
												những bữa ăn thơm ngon và tiện lợi nhất. 
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End Accordion -->
							</div>
						</div>
					</section>

					
				</div>
			</form>
		</div>
		<!--/end container-->
	</div>
	<!--=== End Content Medium Part ===-->

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
		<!--=== End Shop Subscribe ===-->

		<!--=== Footer v4 ===-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script src="${url}/static/plugins/jquery/jquery.min.js"></script>
	<script src="${url}/static/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="${url}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="${url}/static/plugins/back-to-top.js"></script>
	<script src="${url}/static/plugins/smoothScroll.js"></script>
	<script src="${url}/static/plugins/jquery-steps/build/jquery.steps.js"></script>
	<script
		src="${url}/static/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/static/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/static/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/static/js/shop.app.js"></script>
	<script src="${url}/static/js/forms/page_login.js"></script>
	<script src="${url}/static/js/plugins/stepWizard.js"></script>
	<script src="${url}/static/js/forms/product-quantity.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Login.initLogin();
			App.initScrollBar();
			StepWizard.initStepWizard();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>