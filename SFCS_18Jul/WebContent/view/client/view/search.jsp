<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="col-md-3 filter-by-block md-margin-bottom-60">
	<h1>Tìm kiếm</h1>
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
						Tên Món Ăn<i class="fa fa-angle-down"></i>
					</a>
				</h2>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<ul class="list-unstyled checkbox-list">
						<li><form action="${pageContext.request.contextPath }/product/search" method="get">
							<input type="text" name="name" />
							<input type="submit" value="Tìm Kiếm" >
						</form></li>
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
					<a data-toggle="collapse" data-parent="#accordion-v4" href="#collapseFour">
						Giá Tiền <i class="fa fa-angle-down"></i>
					</a>
				</h2>
			</div>
			<div id="collapseFour" class="panel-collapse collapse in">
				<div class="panel-body">
					<div class="slider-snap"></div>
					<p class="slider-snap-text">
						<span class="slider-snap-value-lower"></span>
						<span class="slider-snap-value-upper"></span>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!--/end panel group-->

	<div class="panel-group margin-bottom-30" id="accordion-v5">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion-v5" href="#collapseFive">
						Đánh Giá<i class="fa fa-angle-down"></i>
					</a>
				</h2>
			</div>
			<div id="collapseFive" class="panel-collapse collapse in">
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
	<button type="button" class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Đặt Lại</button>
</div>