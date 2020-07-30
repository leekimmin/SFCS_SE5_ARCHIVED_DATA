<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <c:url value="/view/client/static" var="url"></c:url>
      
 <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath }">
                        <img id="logo-header" src="${url}/img/logo.png" alt="Logo" style="width:120px; height:50px;">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <!-- Shopping Cart -->
                   <jsp:include page="/view/client/view/cart.jsp"></jsp:include>
                    <!-- End Shopping Cart -->

                    <!-- Nav Menu -->
                    <ul class="nav navbar-nav">
                        <!-- Trang chủ -->
                        <li><a href="${pageContext.request.contextPath }">Trang chủ</a></li>
                        <!-- End Trang chủ -->

                        <!-- Menu -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Thực đơn
                            </a>
                             <ul class="dropdown-menu">
                                <li>
                                    <div class="mega-menu-content">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Ẩm thực Việt</h3>
                                                    
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/detail?id=2">Cơm Gà Xối Mỡ</a><span class="label label-danger-shop">Mới</span></li>
                                                        <li><a href="${pageContext.request.contextPath }/product/detail?id=1">Phở Bò Tái Chín</a></li>
                                                        
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thức ăn nhanh</h3>
                                                    <ul class="list-unstyled style-list">
                                                         <li><a href="${pageContext.request.contextPath }/product/detail?id=6">Combo Gà Giòn Cay</a><span class="label label-danger-shop">Mới</span></li>
                                                         <li><a href="${pageContext.request.contextPath }/product/detail?id=7">Pizza Hải Sản</a></li>
                                                         <li><a href="${pageContext.request.contextPath }/product/detail?id=8">Burger Bò Phô Mai</a></li>
                                                    </ul>                                                  
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Lẩu & Nướng</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/detail?id=4">Lẩu Cua Cà Ri</a></li>
                                                    </ul>
                                                </div>        

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thức uống</h3>
                                                    <ul class="list-unstyled style-list">
                                                       <li><a href="${pageContext.request.contextPath }/product/detail?id=10">Trà Đào Cam Sả</a><span class="label label-danger-shop">Mới</span></li>
                                                       <li><a href="${pageContext.request.contextPath }/product/detail?id=11">Trà Sữa Phúc Long (Lạnh)</a></li>
                                                       <li><a href="${pageContext.request.contextPath }/product/detail?id=12">Sữa Tươi Trân Châu Đường Hổ</a></li>
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Tráng miệng</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/detail?id=9">Bánh Crepe Chuối</a></li>
                                                    </ul>                                                    
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Các món khác</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/detail?id=3">Kimbap</a><span class="label label-danger-shop">Mới</span></li>
                                                        <li><a href="${pageContext.request.contextPath }/product/detail?id=5">Bò Ba Chỉ Với Trứng</a></li>
                                                    </ul>
                                                </div>
                                            </div><!--/end row-->
                                        </div><!--/end container-->
                                    </div><!--/end mega menu content-->  
                                </li>
                            </ul><!--/end dropdown-menu-->

                        </li>
                        <!-- End Menu -->
                        
                        <!-- Brand -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Thương Hiệu
                            </a>
                             <ul class="dropdown-menu">
                                <li>
                                    <div class="mega-menu-content">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Ẩm thực Việt</h3>
                                                    
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=1">Cơm Nguyên Ký</a><span class="label label-danger-shop">Có Món Mới</span></li>
                                                        <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=2">Phở 10 Lý Quốc Sư</a></li>
                                                        
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thức ăn nhanh</h3>
                                                    <ul class="list-unstyled style-list">
                                                         <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=4">KFC</a><span class="label label-danger-shop">Có Món Mới</span></li>
                                                         <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=5">Pizza Hut</a></li>
                                                         <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=6">McDonald's</a></li>
                                                    </ul>                                                  
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Lẩu & Nướng</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=3">Hoàng Yến Cuisine</a></li>
                                                    </ul>
                                                </div>        

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thức uống</h3>
                                                    <ul class="list-unstyled style-list">
                                                       <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=10">The Royal Tea</a><span class="label label-danger-shop">Có Món Mới</span></li>
                                                       <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=11">Phúc Long Coffee & Tea</a></li>
                                                       <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=12">Trà sữa Toco Toco</a></li>
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Tráng miệng</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=9">Tous Les Jours</a></li>
                                                    </ul>                                                    
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Các món khác</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=8">Hanuri</a><span class="label label-danger-shop">Có Món Mới</span></li>
                                                        <li><a href="${pageContext.request.contextPath }/product/stall?stall_id=7">Hotto</a></li>
                                                    </ul>
                                                </div>
                                            </div><!--/end row-->
                                        </div><!--/end container-->
                                    </div><!--/end mega menu content-->  
                                </li>
                            </ul><!--/end dropdown-menu-->

                        </li>
                        <!-- End Menu -->
                        
                        <!-- Khuyến mãi -->
                        <li><a href="${pageContext.request.contextPath }">Khuyến mãi</a></li>
                        <!-- End Khuyến mãi -->
                        
                        <!-- Về chúng tôi -->
                        <li><a href="${pageContext.request.contextPath }">Giới thiệu</a></li>
                        <!-- End Giới thiệu -->
                    </ul>
                    <!-- End Nav Menu -->                    
                </div>
            </div>    
        </div>            