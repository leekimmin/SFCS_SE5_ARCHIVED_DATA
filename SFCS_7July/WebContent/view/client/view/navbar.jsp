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
                                                        <li><a href="#">New in</a></li>
                                                        <li><a href="#">Coats &amp; Jackets</a></li>
                                                        <li><a href="#">Jeans</a></li>
                                                        <li><a href="#">Dresses</a></li>
                                                        <li><a href="#">Shorts</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Skirts</a></li>
                                                        <li><a href="#">T-Shirts</a></li>
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thức ăn nhanh</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">All accessories</a></li>
                                                        <li><a href="#">Bags &amp; Purses</a></li>
                                                        <li><a href="#">Scarvs &amp; Hats</a></li>
                                                        <li><a href="#">Jewellery</a></li>
                                                        <li><a href="#">Fragrance &amp; Beauty</a></li>
                                                    </ul>                                                  
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Lẩu & Nướng</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">New in</a></li>
                                                        <li><a href="#">Coats &amp; Jackets</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Jeans</a></li>
                                                        <li><a href="#">Dresses</a></li>
                                                    </ul>
                                                </div>        

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thức uống</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">New in</a></li>
                                                        <li><a href="#">Coats &amp; Jackets</a></li>
                                                        <li><a href="#">Jeans</a></li>
                                                        <li><a href="#">Dresses</a></li>
                                                        <li><a href="#">Shorts</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Skirts</a></li>
                                                        <li><a href="#">T-shirts</a></li>
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Tráng miệng</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">All accessories</a></li>
                                                        <li><a href="#">Bags &amp; Purses</a></li>
                                                        <li><a href="#">Scarvs &amp; Hats</a></li>
                                                        <li><a href="#">Jewellery</a></li>
                                                        <li><a href="#">Fragrance &amp; Beauty</a></li>
                                                    </ul>                                                    
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Các món khác</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">New in</a></li>
                                                        <li><a href="#">Coats &amp; Jackets</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Jeans</a></li>
                                                        <li><a href="#">Dresses</a></li>
                                                        <li><a href="#">Shorts</a></li>
                                                        <li><a href="#">Sports</a></li>
                                                        <li><a href="#">Socks</a></li>
                                                        <li><a href="#">Tights</a> <span class="label label-danger-shop">New</span></li>
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
                        <li><a href="${pageContext.request.contextPath }">Về chúng tôi</a></li>
                        <!-- Aend Về chúng tôi -->
                    </ul>
                    <!-- End Nav Menu -->                    
                </div>
            </div>    
        </div>            