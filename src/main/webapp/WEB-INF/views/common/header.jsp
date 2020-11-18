<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>finalProject - 쉽게 요리하자!</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/finalProject/resources/mart/images/logo.png">

<!-- vegefood CSS -->
<link rel="stylesheet" href="/finalProject/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/finalProject/resources/css/animate.css">
<link rel="stylesheet" href="/finalProject/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/finalProject/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/finalProject/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/finalProject/resources/css/aos.css">
<link rel="stylesheet" href="/finalProject/resources/css/ionicons.min.css">
<link rel="stylesheet" href="/finalProject/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/finalProject/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/finalProject/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="/finalProject/resources/css/flaticon.css">
<link rel="stylesheet" href="/finalProject/resources/css/icomoon.css">
<link rel="stylesheet" href="/finalProject/resources/css/style.css">





<link id="u-theme-google-font" rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Arizonia:400">
   
<!-- Mart CSS -->
<link rel="stylesheet" href="/finalProject/resources/mart/css/style.css"> 
<link rel="stylesheet" href="/finalProject/resources/mart/css/sidebar.css">


</head>
<body>
   <!-- PRELOADER -->
   <div id="preloader">
      <div class="preloader-area">
         <div class="preloader-box">
            <div class="preloader"></div>
         </div>
      </div>
   </div>
   <section class="header-top-section">
      <div class="container">
         <div class="row">
            <div class="col-md-6">
               <div class="header-top-content">
                  <ul class="nav nav-pills navbar-left">
                     <li><a href="#"></a></li>
                     <li><a href="#"></a></li>
                  </ul>
               </div>
            </div>
            <c:if test="${member != null }">
            <div class="col-md-6">
               <div class="header-top-menu">
                  <ul class="nav nav-pills navbar-right">
                     <c:if test="${member.author == 1}">
                     <li><a href="/finalProject/admin">관리자페이지</a></li>
                     </c:if>
                     <li class="dropdown">
                     <a href="/finalProject/mypage/coupon">MYPAGE</a>
                     <div class="dropdown-content">
                        <a href="/finalProject/member/modify" style="color:black;">회원정보수정</a>
                        <a href="/finalProject/order/cart" style="color:black;">장바구니</a>
                        <a href="/finalProject/mypage/orders" style="color:black;">주문내역</a>
                        <a href="/finalProject/mypage/wishlist" style="color:black;">위시리스트</a>
                        <a href="/finalProject/mypage/cancel" style="color:black;">취소/반품</a>
                     </div>
                     </li>
                     <li><a href="/finalProject/member/logout"><i class="pe-7s-lock"></i>Logout</a></li>
                     <li>
                  </ul>
               </div>
               
               
               
               
               
               
               
               
               
               
               
               
               
            </div>
            </c:if>
            <c:if test="${member == null }">
            <div class="col-md-6">
               <div class="header-top-menu">
                  <ul class="nav nav-pills navbar-right">
                     <li><a href="/finalProject/member/login"><i class="pe-7s-lock"></i>Login</a></li>
                  </ul>
               </div>
            </div>   
            </c:if>
         </div>
      </div>
   </section>
   <header class="header-section">
      <nav class="navbar navbar-default">
         <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
               <button type="button" class="navbar-toggle collapsed"
                  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                  aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span> <span
                     class="icon-bar"></span> <span class="icon-bar"></span> <span
                     class="icon-bar"></span>
               </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse"
               id="bs-example-navbar-collapse-1">
               <a href="/finalProject">
               <img src="/finalProject/resources/mart/images/logo.png" width="200" height="100"></a>
               <ul class="nav navbar-nav" style="margin-top: 27px;">
                  <li class="dropdown"><a
                     href="/finalProject/product">이지쿡박스</a>
                     <div class="dropdown-content">
                        <a href="/finalProject/product">전체상품</a>
                        <a href="/finalProject/product?sort=10">한식</a>
                        <a href="/finalProject/product?sort=20">중식</a>
                        <a href="/finalProject/product?sort=30">일식</a>
                        <a href="/finalProject/product?sort=40">양식</a>
                        <a href="/finalProject/product?sort=50">샐러드</a>
                     </div>
                  </li>
                  <li>
                     <a href="/finalProject/today">핫딜!</a>
                  </li>
                  <li>
                     <a href="/finalProject/weatherCheck">오늘 뭐 먹지?</a>
                  </li>
                  <li class="dropdown">
                     <a href="/finalProject/notice">고객센터</a>
                     <div class="dropdown-content">
                        <a href="/finalProject/notice">공지사항</a>
                        <a href="/finalProject/event">EVENT</a>
                        <a href="/finalProject/faq">FAQ</a>
                     </div>
                  </li>
                  <li><a href="#" class="search-btn"><i
                        class="fa fa-search" aria-hidden="true"></i></a></li>
                  <li><a href="/finalProject/order/cart"><span> Cart &nbsp;</span> <span
                        class="shoping-cart">${count}</span></a></li>
               </ul>
               <ul class="nav navbar-nav navbar-right cart-menu"
                  style="margin-top: 27px;">
               </ul>
            </div>
            <!-- /.navbar-collapse -->
         </div>
         <!-- /.container -->
      </nav>
   </header>