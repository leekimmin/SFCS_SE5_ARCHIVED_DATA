<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BK Food Court</title>
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
	href="${url}/plugins/revolution-slider/rs-plugin/css/settings.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
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
		})(document, window, 'https://widgetv4.subiz.com/static/js/app.js',
				'subiz');
		subiz('setAccount', 'acqetkhujxyunuatbxzw');
	</script>
	<!-- End Subiz -->
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">
			<!-- Topbar v3 -->
			<jsp:include page="/view/client/view/topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="/view/client/view/navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Slider ===-->
		<div class="tp-banner-container">
			<div class="tp-banner">
				<ul>
					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 1">
						<!-- MAIN IMAGE --> <img src="${url}/img/1.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch1 sft start" data-x="center"
							data-hoffset="0" data-y="100" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							The New <br> <strong>Collection</strong><br> is here
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="380" data-speed="1600" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 2">
						<!-- MAIN IMAGE --> <img src="${url}/img/5.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch3 sft start" data-x="center"
							data-hoffset="0" data-y="140" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							Latest <strong>Fashion</strong> Trends
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="center"
							data-hoffset="-14" data-y="210" data-speed="1400"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off" style="z-index: 6">
							Cras non dui et quam auctor pretium.<br> Aenean enim tortr,
							tempus et iteus m
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 3">
						<!-- MAIN IMAGE --> <img src="${url}/img/3.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="right top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch3 sft start" data-x="right"
							data-hoffset="5" data-y="130" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							<strong>Luxury</strong> Watches
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="right"
							data-hoffset="0" data-y="210" data-speed="1400" data-start="2000"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							lectus. Cras non dui et quam auctor.<br> Aenean enim tortor,
							tempus et im
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="right" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 4">
						<!-- MAIN IMAGE --> <img src="${url}/img/2.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch1 sft start" data-x="center"
							data-hoffset="0" data-y="100" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">Girl's Accesories</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch2 sft" data-x="center"
							data-hoffset="0" data-y="280" data-speed="1400" data-start="2000"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">Super Promo</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="370" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">View
								More</a> <a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 5">
						<!-- MAIN IMAGE --> <img src="${url}/img/4.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="right top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch5 sft start" data-x="right"
							data-hoffset="5" data-y="130" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							<strong>Jeans</strong> Collection
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="right"
							data-hoffset="-14" data-y="210" data-speed="1400"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off" style="z-index: 6">
							Cras non dui et quam auctor pretium.<br> Aenean enim tortr,
							tempus et iteus m
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="right" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->
				</ul>
				<div class="tp-bannertimer tp-bottom"></div>
			</div>
		</div>
		<!--=== End Slider ===-->

		<!--=== Product Content ===-->
		<div class="container content-md">
			<!--=== Illustration v1 ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-6 md-margin-bottom-30">
					<div class="overflow-h">
						<div class="illustration-v1 illustration-img1">
							<div class="illustration-bg">
								<div class="illustration-ads ad-details-v1">
									<h3>
										NEW YEAR <strong>SALE</strong> 30% - 60% <strong>off</strong>
									</h3>
									<a class="btn-u btn-brd btn-brd-hover btn-u-light" href="#">Shop
										Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="overflow-h">
						<a class="illustration-v1 illustration-img2" href="#"> <span
							class="illustration-bg"> <span
								class="illustration-ads ad-details-v2"> <span
									class="item-time">Spring 2014</span> <span class="item-name">Lacoste</span>
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Illustration v1 ===-->

			<div class="heading heading-v1 margin-bottom-20">
				<h2>Thực Đơn Đặc Biệt</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
					Sed odio elit, ultrices vel cursus sed, placerat ut leo. 
					Phasellus in magna erat. Etiam gravida convallis augue non tincidunt. 
					Nunc lobortis dapibus neque quis lacinia. Nam dapibus tellus sit amet odio venenatis.</p>
			</div>
			
			<!--=== Illustration v2 ===-->
			<div class="row margin-bottom-50">
				<div class="col-md-4 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v2 illustration-img1"
							href="${pageContext.request.contextPath }/product/category?cate_id=1">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v2-category"> <span
										class="product-category">Bữa Trưa</span> <span
										class="product-amount">+50 Món</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-4 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v2 illustration-img2"
							href="${pageContext.request.contextPath }/product/category?cate_id=2">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v2-category"> <span
										class="product-category">Bữa Tối</span> <span
										class="product-amount">+40 Món</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="overflow-h">
						<a class="illustration-v2 illustration-img3"
							href="${pageContext.request.contextPath }/product/category?cate_id=3">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v2-category"> <span
										class="product-category">Đồ Uống</span> <span
										class="product-amount">+30 Món</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!--=== End Illustration v2 ===-->
		</div>
		<!--=== End Product Content ===-->

		<!--=== Twitter-Block ===-->
		<div class="parallaxBg twitter-block margin-bottom-60">
			<div class="container">
				<div class="heading heading-v1 margin-bottom-20">
					<h2>Tin mới</h2>
				</div>

				<div id="carousel-example-generic-v5" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li class="active rounded-x"
							data-target="#carousel-example-generic-v5" data-slide-to="0"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="1"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<p>
								SFCS đang sắp sửa có chương trình khuyến mãi lớn nhất trong năm
								từ ngày 21/07 đến 31/07 nhân dịp bước vào mùa thi cuối kì khắc
								nghiệt của trường Đại học Bách khoa Thành phố Hồ Chí Minh :D
							    
							<p>
							
							<p>
								<a href="#">#cập nhật ngày 01/07</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>
								SCFS sẽ tiến hành bảo trì trong ngày Chủ nhật (27/06) sắp tới. Xin
								lỗi bạn vì sự bất tiện này. Hệ thống sẽ hoạt động trở lại bình
								thường kể từ ngày tiếp theo (28/06)
							<p>
								<a href="#">#cập nhật ngày 24/06</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>
								Chào mừng bạn đến với hệ thống Quán ăn thông minh (SFCS) của trường Đại học
								Bách Khoa Thành phố Hồ Chí Minh.
							</p>
							<p>
								<a href="#">#cập nhật ngày 01/06</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
					</div>

					<div class="carousel-arrow">
						<a class="left carousel-control"
							href="#carousel-example-generic-v5" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic-v5" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Twitter-Block ===-->

		<div class="container">
			<!--=== Product Service ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-6 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="fa fa-truck"></i>
					</div>
					<div class="product-service-in">
						<h3>Đặt hàng nhanh chóng, tiện lợi</h3>
						<p>Chỉ với 1 cú click chuột tại nhà, SCFC sẽ đem đến
						cho bạn những bữa ăn ngon miệng với tốc độ sấm sét...</p>
						<a href="#">+Read More</a>
					</div>
				</div>
				<div class="col-md-6 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="icon-earphones-alt"></i>
					</div>
					<div class="product-service-in">
						<h3>Chăm sóc khách hàng</h3>
						<p>Phương châm của SCFS là khách hàng còn hơn cả thượng đế. Chúng tôi
						luôn sẵn sàng lắng nghe những ý kiến đóng góp của quý khách hàng...
						</p>
						<a href="#">+Read More</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Product Service ===-->

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
								<a href="shop-ui-inner.html">McDonald's</a>
							</h4>
							<span class="thumb-product-type">Một trong những cửa hàng được giới trẻ yêu thích nhất hiện nay</span>
						</div>
						
					</div>
					
					
				</div>
				<div class="col-md-4">
					
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/kfc.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">KFC</a>
							</h4>
							<span class="thumb-product-type">Vị ngon trên từng ngón tay</span>
						</div>
						
					</div>
					
				</div>
				<div class="col-md-4 padding">
					
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/toco.png"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Toco Toco</a>
							</h4>
							<span class="thumb-product-type">Nhấp nhô từng nhịp</span>
						</div>
						
					</div>
					
				</div>
			</div>
			<!--/end row-->
			<!--=== End Illustration v3 ===-->
		</div>
		<!--/end cotnainer-->

		<!--=== Collection Banner ===-->
		<div class="collection-banner">
			<div class="container">
				<div class="col-md-7 md-margin-bottom-50">
					<h2>Ưu đãi cực sốc</h2>
					<p>
						Tưng bừng chào đón mùa thi cuối kì sắp tới :D
						<br> SFCS công bố chương trình ưu đãi
						"sales sấp mặt" lên đến 50% dành cho các món ăn mới
						trên hệ thống. Các bạn sẽ được thưởng thức những món
						ngon hơn, bổ dưỡng hơn đi kèm với mức giá vô cùng phải chăng
					</p>
					<br> <a href="#"
						class="btn-u btn-brd btn-brd-hover btn-u-light">Đặt hàng ngay</a>
				</div>
				<div class="col-md-5">
					<div class="overflow-h">
						<span class="percent-numb">50</span>
						<div class="percent-off">
							<span class="discount-percent">%</span> <span
								class="discount-off">ưu đãi</span>
						</div>
						<div class="new-offers shop-bg-green rounded-x">
							<p>món</p>
							<span>MỚI</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Collection Banner ===-->

		
		<!--=== Shop Suvbscribe ===-->
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
		<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
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
	<script src="${url}/plugins/jquery.parallax.js"></script>
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/revolution-slider.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			App.initParallaxBg();
			OwlCarousel.initOwlCarousel();
			RevolutionSlider.initRSfullWidth();
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