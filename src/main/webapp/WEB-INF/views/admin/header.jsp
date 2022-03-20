<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
        <meta charset="utf-8">
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
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="admin_logout" class="nav-link dropdown-toggle" data-toggle="dropdown">${sessionScope.adminUser.name}(${sessionScope.adminUser.id}) 로그아웃</a>
                                <div class="dropdown-menu">
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
                        	<a href="admin_product_list">
                                <img src="img/logo.jpg" alt="Logo">
                           </a>
                        </div>
                    </div>                  
                </div>
            </div>
        </div>
        <!-- Bottom Bar End --> 
         <!-- Navigation Bar start --> 
      <div class="col-md-3" style="padding: 0; max-width: 100%;">
         <nav class="navbar bg-light" 
            style="padding: 10px 100px 10px 100px;
            margin-bottom: 30px;
            border-bottom: 1px solid rgb(0 0 0/25%);
            background-color: white!important;">
           <ul class="navbar-nav" style="width: 100%; flex-direction: row; justify-content: space-between;">
            <li class="nav-item">
               <a class="nav-link" href="admin_product_list">도서 관리</a>
            </li>
            <li class="nav-item">
                    <a class="nav-link" href="admin_member_list">회원 관리</a>
            </li>
                <li class="nav-item">
               <a class="nav-link" href="admin_qna_list">Q&A 관리</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="admin_order_list">주문 관리</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="admin_sales_record_form">판매실적</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="admin_notice_list">공지사항 관리</a>
            </li>
         </ul>
      </nav>
   </div>
   <!-- Navigation Bar end --> 