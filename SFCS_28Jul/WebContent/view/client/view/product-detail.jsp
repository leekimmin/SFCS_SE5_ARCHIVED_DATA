<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<title>Chi Tiết Món Ăn</title>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

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
<link rel="stylesheet"
	href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/master-slider/quick-start/masterslider/style/masterslider.css">
<link rel='stylesheet'
	href="${url}/plugins/master-slider/quick-start/masterslider/skins/default/style.css">

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

		<!--=== Shop Product ===-->
		<div class="shop-product">
			<!-- Breadcrumbs v5 -->
			<div class="container">
				<ul class="breadcrumb-v5">
					<li><a href="index.html"><i class="fa fa-home"></i></a></li>
					<li><a href="#">Món Ăn</a></li>
					<li class="active">Chi tiết</li>
				</ul>
			</div>
			<!-- End Breadcrumbs v5 -->
			
			<f:setLocale value="vi_VN"/>
			<div class="container">
				<div class="row">
					<div class="col-md-6 md-margin-bottom-50">
						<div class="ms-showcase2-template">
							<!-- Master Slider -->
							<div class="master-slider ms-skin-default" id="masterslider">
								<div class="ms-slide">
									<c:url value="/image?fname=${product.image }" var="imgUrl"></c:url>
									<img class="ms-brd" src="${url}/img/blank.gif" data-src="${imgUrl}" alt="${product.name }">
								</div>
							</div>
							<!-- End Master Slider -->
						</div>
					</div>

					<div class="col-md-6">
						<div class="shop-product-heading">
							<h2>${product.name }</h2>
							<ul class="list-inline shop-product-social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-youtube"></i></a></li>
							</ul>
						</div>
						<!--/end shop product social-->

						<ul class="list-inline product-ratings margin-bottom-20">
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating fa fa-star"></i></li>
							<li><i class="rating fa fa-star"></i></li>
							<li class="product-review-list"><span>(1) <a href="#">Đánh Giá</a> | <a href="#"> Thêm Đánh Giá</a></span></li>
						</ul>
						<!--/end shop product ratings-->
						
						<span class="stall-name"> ${product.stall.name } </span> <br>
						<span class="deriptoion"> ${product.des } </span> <br> <br>
						<ul class="list-inline margin-bottom-20">
							<li class="shop-product-prices shop-red"><f:formatNumber value="${product.price * (100 - product.discount) / 100}" type="currency"/></li>
							<c:if test="${product.discount != '0'}">
								<li class="line-through"><f:formatNumber value="${product.price}" type="currency"/></li>			
							</c:if>
							<li><small class="shop-bg-red time-day-left"> Bán Chạy Nhất </small></li>
						</ul>
						<!--/end shop product prices-->
						
						<c:if test="${product.category.id == '5'}">
							<h3 class="shop-product-title">Size</h3>
							<ul class="list-inline product-size margin-bottom-20">
								<li><input type="radio" id="size-1" name="size"><label for="size-1">S</label></li>
								<li><input type="radio" id="size-2" name="size"><label for="size-2">M</label></li>
								<li><input type="radio" id="size-3" name="size" checked><label for="size-3">L</label></li>
							</ul>
							<h3 class="shop-product-title">Toping</h3>
							<ul class="list-inline product-top margin-bottom-10">
								<li><label class="checkbox"> <input type="checkbox" name="checkbox"/> <i></i> Trân Châu Trắng </label></li>
								<li></li>
								<li><label class="checkbox"> <input type="checkbox" name="checkbox"/> <i></i> Trân Châu Đen </label></li>
								<li></li>
								<li><label class="checkbox"> <input type="checkbox" name="checkbox"/> <i></i> Bánh Plan Trứng </label></li>
							</ul>
						</c:if>
						<!--/end product size and toping-->

						<h3 class="shop-product-title">Số Lượng</h3>
						<div class="margin-bottom-40">
							<form name="f1" class="product-quantity sm-margin-bottom-20"
								method="get" action="<c:url value="/member/cart/add"></c:url>">
								<input type="text" value="${product.id }" name="pId" hidden="">
								<button type='button' class="quantity-button" name='subtract' onclick='javascript: subtractQty();' value='-'>-</button>
								<input type='text' class="quantity-field" name='quantity' value="1" id='qty' />
								<button type='button' class="quantity-button" name='add' onclick='javascript: document.getElementById("qty").value++;' value='+'>+</button>
								<button type="submit" class="btn-u btn-u-sea-shop btn-u-lg">Thêm Vào Giỏ Hàng</button>
							</form>
						</div>
						<!--/end product quantity-->
						
						<ul><br></ul>
						<ul class="list-inline add-to-wishlist add-to-wishlist-brd">
							<li class="wishlist-in"><i class="fa fa-heart"></i> <a
								href="#">Thêm Vào Yêu Thích</a></li>
						</ul>
						<p class="wishlist-category">
							<strong>Phân Loại:</strong> <a href="#">${product.category.name}</a>
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
		</div>
		<!--=== End Shop Product ===-->

		<!--=== Content Medium ===-->
		<div class="content-md container">
			<div class="row margin-bottom-60">
				<div class="col-md-6 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="fa fa-truck"></i>
					</div>
					<div class="product-service-in">
						<h3>Đặt hàng nhanh chóng, tiện lợi</h3>
						<p> Chỉ với 1 cú click chuột tại nhà, SCFC sẽ đem đến
						cho bạn những bữa ăn ngon miệng với tốc độ sấm sét...</p>
						<a href="#">+Xem thêm</a>
					</div>
				</div>
				<div class="col-md-6 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="icon-earphones-alt"></i>
					</div>
					<div class="product-service-in">
						<h3>Chăm sóc khách hàng</h3>
						<p>Phương châm của SCFS là khách hàng còn hơn cả thượng đế. Chúng tôi
						luôn sẵn sàng lắng nghe những ý kiến đóng góp của quý khách hàng...</p>
						<a href="#">+Xem thêm</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Product Service ===-->
		</div>
		<!--/end container-->
		<!--=== End Content Medium ===-->

		<div class="container">
			<!--=== Illustration v3 ===-->

			<div class="heading heading-v1 margin-bottom-20">
				<h2>Thương hiệu nổi bật</h2>
			</div>
			<div class="row illustration-v4 margin-bottom-40">
				<div class="col-md-4">
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/mcdonald.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="${pageContext.request.contextPath }/product/stall?stall_id=6">McDonald's</a>
							</h4>
							<span class="thumb-product-type">Một trong những cửa hàng
								được giới trẻ yêu thích nhất hiện nay</span>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/kfc.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="${pageContext.request.contextPath }/product/stall?stall_id=4">KFC</a>
							</h4>
							<span class="thumb-product-type">Vị ngon trên từng ngón
								tay</span>
						</div>
					</div>
				</div>

				<div class="col-md-4 padding">
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/toco.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="${pageContext.request.contextPath }/product/stall?stall_id=12">Trà sữa Toco Toco</a>
							</h4>
							<span class="thumb-product-type">Nhấp nhô từng nhịp</span>
						</div>
					</div>
				</div>
			</div>
			
			<!--/end row-->
			<div class="row illustration-v4 margin-bottom-40">
				<div class="col-md-4">
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/phuclong.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="${pageContext.request.contextPath }/product/stall?stall_id=11">Phúc Long Coffee & Tea</a>
							</h4>
							<span class="thumb-product-type">Điểm 10 chất lượng cho các loại đồ uống</span>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/royaltea.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="${pageContext.request.contextPath }/product/stall?stall_id=10">The Royal Tea</a>
							</h4>
							<span class="thumb-product-type">Trà Quý's Tộc Hoàng Gia</span>
						</div>
					</div>
				</div>

				<div class="col-md-4 padding">
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/pizzahut.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="${pageContext.request.contextPath }/product/stall?stall_id=5">Pizza Hut</a>
							</h4>
							<span class="thumb-product-type">Thương hiệu Pizza ngon nhất Việt Nam</span>
						</div>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Illustration v3 ===-->
		</div>
		<!--/end cotnainer-->		

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							đăng ký để nhận <strong>bản tin hàng tuần</strong> của chúng tôi
						</h2>
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
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- Master Slider -->
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/masterslider.min.js"></script>
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/jquery.easing.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/master-slider.js"></script>
	<script src="${url}/js/forms/product-quantity.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			OwlCarousel.initOwlCarousel();
			MasterSliderShowcase2.initMasterSliderShowcase2();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
<![endif]-->

</body>
</body>
</html>