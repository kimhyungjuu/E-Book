<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!DOCTYPE html>
<html lang="ko">
    <head>
        <title>E Store - eCommerce HTML Template</title>
        
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <!-- Favicon -->
        <link href="resources/img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <link href="slick/slick.css" rel="stylesheet">
        <link href="slick/slick-theme.css" rel="stylesheet">
        
        <script type="text/javascript" src="member/member.js"></script>
        <script type="text/javascript" src="mypage/mypage.js"></script>

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
    
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
                            <a href="index" class="nav-item nav-link">???</a>
                            <c:choose>
       						<c:when test="${empty sessionScope.loginUser}">
       						<li>
                            <a href="login_form" class="nav-item nav-link active">LOGIN</a> 
                            <a href="admin_login_form" style="text-align : left"> ADMIN</a>   
                            </li>
                            <li></li>
                            <li><a href="contract" class="nav-item nav-link">????????????</a></li>
                            </c:when>
                            <c:otherwise>
                            <li>
                            ${sessionScope.loginUser.name}(${sessionScope.loginUser.id})
                            </li>
                            <li><a href="logout">LOGOUT</a></li>
                            </c:otherwise>       
       						</c:choose>
                            <li><a href="cart" class="nav-item nav-link">????????????</a></li>
                            <div class="nav-item dropdown">
                                <a href="mypage" class="nav-link dropdown-toggle" data-toggle="dropdown">???????????????</a>
                                <div class="dropdown-menu">
                                    <a href="order_all" class="dropdown-item">??? ??????</a>
                                    <a href="wishlist" class="dropdown-item">???????????????</a>
                                    <a href="mypage" class="dropdown-item">???????????? ?????? ??????</a>
                                    
                                   
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
                                <img src="img/logo.jpg" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="search">
                            <input type="text" placeholder="Search">
                            <button><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="user">
                            <a href="wishlist" class="btn wishlist">
                                <i class="fa fa-heart"></i>
                                <span></span>
                            </a>
                            <a href="cart" class="btn cart">
                                <i class="fa fa-shopping-cart"></i>
                                <span></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Bar start --> 
        <style>
/* ????????? ???????????? */
.menu input[type=checkbox]{
    display: none;
}
.menu input[type=checkbox]+label{
    padding-left: 25px;
    background-repeat: no-repeat;
}
.menu input[type=checkbox]+collapsible{
    font-weight: bold;
}
/* ?????? ??????*/
.menu .menuitems{
     display: none;
}
.menu .menuitems{
    list-style: none;
}
.menu .menuitems li{
    padding: 5px;
    margin: 0 0px;
}
.menu .menuitems li a{
    font-size: 12px;
    line-height: 20px;
    color: #444;
}
/* ?????? ?????? - ???????????? ???????????? ???????????? ?????? */
.menu input[type=checkbox]:checked~.menuitems{
    display: block;
    float: left;
}
</style>

        <!-- Navigation Bar start --> 
		<div class="col-md-3" style="padding: 0; max-width: 100%;">
			<nav class="navbar bg-light" 
				style="padding: 10px 100px 10px 100px;
				margin-bottom: 30px;
				border-bottom: 1px solid rgb(0 0 0/25%);
				background-color: white!important;">
			<ul class="navbar-nav" style="width: 100%; flex-direction: row; justify-content: space-between;">
	        	<li class="nav-item">
        			<a class="nav-link" href="#"><label for="collapsible" style="cursor: pointer;">
        			<span>????????????</span></label></a>
		        </li>
	        	<li class="nav-item">
                    <a class="nav-link" href="best">????????? ??????</a>
				</li>
                <li class="nav-item">
					<a class="nav-link" href="new">????????? ??????</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="free">?????? ??????</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="cs_center">????????????</a>
				</li>
			</ul>
			<div class="menu">
	       		<input type="checkbox" class="" id="collapsible">
		        <ul id="menuitems" class="menuitems" style="padding: 0 0 ;">
		        <h5>??????</h5>
		            <li><a href="category?category=1">??????</a></li>
					<li><a href="category?category=2">??????/?????? </a></li>
					<li><a href="category?category=3">??????/??????/?????? </a></li>
					<li><a href="category?category=4">????????????</a></li>
		        </ul> 
		        <ul id="menuitems" class="menuitems" >
		        <h5>??????</h5>
		            <li><a href="category?category=1">??????/????????????</a></li>
		        </ul>
		        <ul id="menuitems" class="menuitems" >
		        <h5>??????</h5>		        
					<li><a href="category?category=5">????????? </a></li>
					<li><a href="category?category=6">?????????</a></li>
		        </ul>		        
		      </div>
		</nav>
	</div>
	<!-- Navigation Bar end -->          
</body>
</html>