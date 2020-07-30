<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<title>Product</title>
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
	href="${url}/plugins/noUiSlider/jquery.nouislider.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

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
				<span class="page-name">TRANG THỰC ĐƠN</span>
				<h1>TẬN HƯỞNG CÙNG <span class="shop-red">SFCS</span></h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="${pageContext.request.contextPath }">Trang Chủ</a></li>
					<li><a href="${pageContext.request.contextPath }/product/list">Thực Đơn</a></li>
					<li class="active">Danh Sách Món Ăn</li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Content Part ===-->
		<div class="content container">
			<div class="row">
				<div class="col-md-3 filter-by-block md-margin-bottom-60">
					<h1>Sắp xếp theo :</h1>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> Thương Hiệu <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>CƠM NGUYÊN KÝ<small><a href="#">(5)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>PHỞ 10 LÝ QUỐC SƯ<small><a href="#">(10)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>HOÀNG YẾN CUISINE<small><a href="#">(15)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>KFC<small><a href="#">(20)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>PIZZA HUT<small><a href="#">(18)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>MCDONALD'S<small><a href="#">(11)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>HOTTO<small><a href="#">(22)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>HANURI<small><a href="#">(22)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>TOUS LES JOURS<small><a href="#">(37)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>THE ROYAL TEA<small><a href="#">(32)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>PHÚC LONG COFFEE & TEA<small><a href="#">(35)</small>
										</label></li>
										<li><label class="checkbox"> 
											<input type="checkbox" name="checkbox" checked /> <i></i>TRÀ SỮA TOCO TOCO<small><a href="#">(30)</small>
										</label></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->
					
					<div class="panel-group" id="accordion-v2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v2" href="#collapseTwo">
										Phân Loại <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<li><a href="${pageContext.request.contextPath}/product/category?cate_id=1">ẨM THỰC VIỆT</a></li>
										<li><a href="${pageContext.request.contextPath}/product/category?cate_id=2">THỨC ĂN NHANH</a></li>	
										<li><a href="${pageContext.request.contextPath}/product/category?cate_id=3">LẨU & NƯỚNG</a></li>	
										<li><a href="${pageContext.request.contextPath}/product/category?cate_id=4">MÓN TRÁNG MIỆNG</a></li>
										<li><a href="${pageContext.request.contextPath}/product/category?cate_id=5">THỨC UỐNG</a></li>
										<li><a href="${pageContext.request.contextPath}/product/category?cate_id=6">MÓN KHÁC</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v2" href="#collapseTwo">
										Thương Hiệu <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=1">CƠM NGUYÊN KÝ</a><small>(5)</small></li>
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=2">PHỞ 10 LÝ QUỐC SƯ</a><small>(10)</small></li>	
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=3">HOÀNG YẾN CUISINE</a><small>(15)</small></li>	
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=4">KFC</a><small>(20)</small></li>
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=5">PIZZA HUT</a><small>(18)</small></li>
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=6">MCDONALD'S</a><small>(11)</small></li>		
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=7">HOTTO</a><small>(22)</small></li>
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=8">HANURI</a><small>(22)</small></li>					
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=9">TOUS LES JOURS</a><small>(37)</small></li>	
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=10">THE ROYAL TEA</a><small>(32)</small></li>
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=11">PHÚC LONG COFFEE & TEA</a><small>(35)</small></li>
										<li><a href="${pageContext.request.contextPath}/product/stall?stall_id=12">TRÀ SỮA TOCO TOCO</a><small>(30)</small></li>	
									</ul>
								</div>
							</div>
						</div>
					</div>
	
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v4"
										href="#collapseFour"> Giá Tiền <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseFour" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="slider-snap"></div>
									<p class="slider-snap-text">
										<span class="slider-snap-value-lower"></span> <span
											class="slider-snap-value-upper"></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group margin-bottom-30" id="accordion-v6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v6"
										href="#collapseSix"> Xếp Hạng <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseSix" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="stars-ratings stars-ratings-label">
										<input type="radio" name="stars-rating" id="stars-rating-5">
										<label for="stars-rating-5"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-4">
										<label for="stars-rating-4"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-3">
										<label for="stars-rating-3"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-2">
										<label for="stars-rating-2"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-1">
										<label for="stars-rating-1"><i class="fa fa-star"></i></label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->
					<button type="button"
						class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Reset</button>
				</div>

				<div class="col-md-9">
					<div class="row margin-bottom-5">
						<div class="col-sm-4 result-category">
							<h2>Ẩm Thực Việt</h2>
							<small class="shop-bg-red badge-results">45 Kết Quả</small>
						</div>
						<div class="col-sm-8">
							<ul class="list-inline clear-both">
								<li class="grid-list-icons"><a
									href="shop-ui-filter-list.html"><i class="fa fa-th-list"></i></a>
									<a href="shop-ui-filter-grid.html"><i class="fa fa-th"></i></a>
								</li>
								<li class="sort-list-btn">
									<h3>Sắp xếp theo :</h3>
									<div class="btn-group">
										<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
											Phổ Biến <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Tất Cả</a></li>
											<li><a href="#">Bán Chạy</a></li>
											<li><a href="#">Món mới</a></li>
										</ul>
									</div>
								</li>
								<li class="sort-list-btn">
									<h3>Hiển thị :</h3>
									<div class="btn-group">
										<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 
											Tất cả <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">20</a></li>
											<li><a href="#">10</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">3</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--/end result category-->
					
					<f:setLocale value="vi_VN"/>
					<div class="filter-results">
						<div class="row illustration-v2 margin-bottom-30">
						<c:forEach items="${productList }" var="p" >						
							<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>
							<div class="col-md-4">
								<div class="product-img product-img-brd">
									<a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
										<img class="full-width img-responsive" src="${p.image}" alt="">
									</a> 
									<a class="product-review" href="${pageContext.request.contextPath }/product/detail?id=${p.id}">Nhận xét nhanh</a> 
									<a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>Thêm Vào Giỏ Hàng</a>
									<div class="shop-rgba-dark-green rgba-banner">Món Mới</div>
								</div>
								<div class="product-description product-description-brd margin-bottom-30">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">${p.name }</a>
											</h4>
											<span class="category text-uppercase">Ẩm Thực Việt</span>
										</div>
										<div class="product-price">
											<span class="title-price">
												<f:formatNumber value="${p.price * (100 - p.discount) / 100}" type="currency"/>
											</span> 
											<c:if test="${p.discount != '0'}">
												<span class="title-price line-through">	
													<f:formatNumber value="${p.price}" type="currency"/>
												</span>
											</c:if>
										</div>
									</div>
									<ul class="list-inline product-ratings">
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li class="like-icon">
											<a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#">
												<i class="fa fa-heart"></i>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</c:forEach>
						<div class="row illustration-v2 margin-bottom-30">
							<div class="col-md-4">
								<div class="product-img product-img-brd">
									<a href="#"><img class="full-width img-responsive" src="${url}/img/blog/21.jpg" alt=""></a> 
									<a class="product-review" href="shop-ui-inner.html">Nhận xét nhanh</a>
									<a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>Thêm Vào Giỏ Hàng</a>
								</div>
								<div class="product-description product-description-brd margin-bottom-30">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="shop-ui-inner.html"></a>
											</h4>
											<span class="category text-uppercase">Men</span>
										</div>
										<div class="product-price">
											<span class="title-price">$95.00</span>
										</div>
									</div>
									<ul class="list-inline product-ratings">
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li class="like-icon">
											<a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#">
												<i class="fa fa-heart"></i>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<div class="product-img product-img-brd">
									<a href="#"><img class="full-width img-responsive"
										src="${url}/img/blog/22.jpg" alt=""></a> <a
										class="product-review" href="shop-ui-inner.html">Quick
										review</a> <a class="add-to-cart" href="#"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div
									class="product-description product-description-brd margin-bottom-30">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="shop-ui-inner.html">Double-breasted</a>
											</h4>
											<span class="category text-uppercase">Men</span> <span
												class="category">Suits - Blazers</span>
										</div>
										<div class="product-price">
											<span class="title-price">$60.00</span> <span
												class="title-price line-through">$95.00</span>
										</div>
									</div>
									<ul class="list-inline product-ratings">
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li class="like-icon"><a
											data-original-title="Add to wishlist" data-toggle="tooltip"
											data-placement="left" class="tooltips" href="#"><i
												class="fa fa-heart"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<div class="product-img product-img-brd">
									<a href="#"><img class="full-width img-responsive"
										src="${url}/img/blog/23.jpg" alt=""></a> <a
										class="product-review" href="shop-ui-inner.html">Quick
										review</a> <a class="add-to-cart" href="#"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
									<div class="shop-rgba-red rgba-banner">Out of stock</div>
								</div>
								<div class="product-description product-description-brd">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="shop-ui-inner.html">Double-breasted</a>
											</h4>
											<span class="category text-uppercase">Men</span> <span
												class="category">Suits - Blazers</span>
										</div>
										<div class="product-price">
											<span class="title-price">$95.00</span>
										</div>
									</div>
									<ul class="list-inline product-ratings">
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li class="like-icon"><a
											data-original-title="Add to wishlist" data-toggle="tooltip"
											data-placement="left" class="tooltips" href="#"><i
												class="fa fa-heart"></i></a></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="row illustration-v2">
							<div class="col-md-4">
								<div class="product-img product-img-brd">
									<a href="#"><img class="full-width img-responsive"
										src="${url}/img/blog/16.jpg" alt=""></a> <a
										class="product-review" href="shop-ui-inner.html">Quick
										review</a> <a class="add-to-cart" href="#"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
									<div class="shop-rgba-dark-green rgba-banner">New</div>
								</div>
								<div
									class="product-description product-description-brd margin-bottom-30">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="shop-ui-inner.html">Double-breasted</a>
											</h4>
											<span class="category text-uppercase">Men</span> <span
												class="category">Suits - Blazers</span>
										</div>
										<div class="product-price">
											<span class="title-price">$60.00</span> <span
												class="title-price line-through">$95.00</span>
										</div>
									</div>
									<ul class="list-inline product-ratings">
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li class="like-icon"><a
											data-original-title="Add to wishlist" data-toggle="tooltip"
											data-placement="left" class="tooltips" href="#"><i
												class="fa fa-heart"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<div class="product-img product-img-brd">
									<a href="#"><img class="full-width img-responsive"
										src="${url}/img/blog/17.jpg" alt=""></a> <a
										class="product-review" href="shop-ui-inner.html">Quick
										review</a> <a class="add-to-cart" href="#"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div
									class="product-description product-description-brd margin-bottom-30">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="shop-ui-inner.html">Double-breasted</a>
											</h4>
											<span class="category text-uppercase">Men</span> <span
												class="category">Suits - Blazers</span>
										</div>
										<div class="product-price">
											<span class="title-price">$60.00</span> <span
												class="title-price line-through">$95.00</span>
										</div>
									</div>
									<ul class="list-inline product-ratings">
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li class="like-icon"><a
											data-original-title="Add to wishlist" data-toggle="tooltip"
											data-placement="left" class="tooltips" href="#"><i
												class="fa fa-heart"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<div class="product-img product-img-brd">
									<a href="#"><img class="full-width img-responsive"
										src="${url}/img/blog/18.jpg" alt=""></a> <a
										class="product-review" href="shop-ui-inner.html">Quick
										review</a> <a class="add-to-cart" href="#"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div
									class="product-description product-description-brd margin-bottom-30">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="shop-ui-inner.html">Double-breasted</a>
											</h4>
											<span class="category text-uppercase">Men</span> <span
												class="category">Suits - Blazers</span>
										</div>
										<div class="product-price">
											<span class="title-price">$95.00</span>
										</div>
									</div>
									<ul class="list-inline product-ratings">
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating-selected fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li><i class="rating fa fa-star"></i></li>
										<li class="like-icon"><a
											data-original-title="Add to wishlist" data-toggle="tooltip"
											data-placement="left" class="tooltips" href="#"><i
												class="fa fa-heart"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end filter resilts-->

					<div class="text-center">
						<ul class="pagination pagination-v2">
							<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
							<li><a href="#">1</a></li>
							<li class="active"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
					<!--/end pagination-->
				</div>
			</div>
			<!--/end row-->
		</div>
		<!--/end container-->
		<!--=== End Content Part ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							subscribe to our weekly <strong>newsletter</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Email your email..."> <span
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
	<script src="${url}/plugins/noUiSlider/jquery.nouislider.all.min.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/mouse-wheel.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			MouseWheel.initMouseWheel();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>