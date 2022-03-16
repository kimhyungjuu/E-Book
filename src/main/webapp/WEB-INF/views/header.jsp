<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko">
    <head>
        <title>E Store - eCommerce HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="slick/slick.css" rel="stylesheet">
        <link href="slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Top bar Start -->
        <div class="top-bar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <i class="fa fa-envelope"></i>
                        support@email.com
                    </div>
                    <div class="col-sm-6">
                        <i class="fa fa-phone-alt"></i>
                        +012-345-6789
                    </div>
                </div>
            </div>
        </div>
        <!-- Top bar End -->
        
        <!-- Nav Bar Start -->
        <div class="nav">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collaps e navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto">
                            <a href="index" class="nav-item nav-link">Home</a>
                            <a href="product-list" class="nav-item nav-link active">Products</a>
                            <a href="product-detail" class="nav-item nav-link">Product Detail</a>
                            <a href="cart" class="nav-item nav-link">Cart</a>
                            <a href="checkout" class="nav-item nav-link">Checkout</a>
                            <a href="my-account" class="nav-item nav-link">My Account</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">More Pages</a>
                                <div class="dropdown-menu">
                                    <a href="wishlist" class="dropdown-item">Wishlist</a>
                                    <a href="login" class="dropdown-item">Login & Register</a>
                                    <a href="contact" class="dropdown-item">Contact Us</a>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">User Account</a>
                                <div class="dropdown-menu">
                                    <a href="#" class="dropdown-item">Login</a>
                                    <a href="#" class="dropdown-item">Register</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Nav Bar End -->      
        
        <!-- Bottom Bar Start -->
        <div class="bottom-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="index">
                                <img src="img/logo.png" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="search">
                            <input type="text" name="key" id="key">
                            <button><i class="fa fa-search" onclick="go_search(this.key)" ></i></button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="user">
                            <a href="wishlist" class="btn wishlist">
                                <i class="fa fa-heart"></i>
                                <span>(0)</span>
                            </a>
                            <a href="cart" class="btn cart">
                                <i class="fa fa-shopping-cart"></i>
                                <span>(0)</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Bar start --> 

        <!-- Navigation Bar start --> 
		<div class="col-md-3" style="padding: 0; max-width: 100%;">
			<nav class="navbar bg-light" 
				style="padding: 10px 100px 10px 100px;
				margin-bottom: 30px;
				border-bottom: 1px solid rgb(0 0 0/25%);
				background-color: white!important;">
			<ul class="navbar-nav" style="width: 100%; flex-direction: row; justify-content: space-between;">
	        	<li class="nav-item">
        			<a class="nav-link">
        			<label for="collapsible"><span class="category_nav">카테고리</span></label></a>
		        </li>
	        	<li class="nav-item">
                    <a class="nav-link" href="best">베스트셀러</a>
				</li>
                <li class="nav-item">
					<a class="nav-link" href="new">이달의 신작</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="free">무료 도서</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="cs_center">고객센터</a>
				</li>
			</ul>
			<div class="menu">
	       		<input type="checkbox" class="" id="collapsible">
		        <ul id="menuitems" class="menuitems" style="padding: 0 0 ;">
		        <h5>문학</h5>
		            <li><a href="#">소설</a></li>
		            <li><a href="#">경영/경제</a></li>
		            <li><a href="#">인문/사회/역사</a></li>
		            <li><a href="#">자기계발</a></li>
		            <li><a href="#">에세이</a></li>
		            <li><a href="#">여행</a></li>
		        </ul> 
		        <ul id="menuitems" class="menuitems" >
		        <h5>소설</h5>
		            <li><a href="#">추리/미스터리</a></li>
		            <li><a href="#">판타지/환상문학</a></li>
		            <li><a href="#">역사소설</a></li>
		            <li><a href="#">액션/스릴러</a></li>
		        </ul>
		        <ul id="menuitems" class="menuitems" >
		        <h5>만화</h5>
		            <li><a href="#">소년 만화</a></li>
		            <li><a href="#">순정 만화</a></li>
		            <li><a href="#">스포츠 만화</a></li>
		            <li><a href="#">웹툰</a></li>
		        </ul>		        
		      </div>
		</nav>
	</div>
	<!-- Navigation Bar end -->        
</html>
</body>
</html>