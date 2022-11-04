<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="../views/WEB-INF/css/style.css">
<link rel="stylesheet" href="../views/themify-icons/themify-icons.css">
<%@include file="/views/head.jsp"%>
</head>
<%
	
%>

<body>
	<div class="wrapper">
		<header id="head">
			<div class="logo">
				<a href="index"><img src="<c:url value='/views/img/logo.png'/>"
					alt=""></a>
			</div>
			<ul id="nav">
				<li><a href="<c:url value='/index'/>">Trang chủ</a></li>
				<li><a href="">Giới thiệu</a></li>
				<li><a href="<c:url value='/Product#menu'/>">Sản phẩm</a></li>
				<li><a href="">Tin tức</a></li>
				<li><a href="">Contact</a></li>
			</ul>
			<div id="nav-icon">
				<div class="seach-box">
					<input type="text" value="" placeholder="seach" class="seach-txt">
					<button id="seach-btn">
						<i class="ti-search"></i>
					</button>
				</div>
				<div class="cart icon">
					<a href="<c:url value='/ShowCart'/>"><i class="ti-shopping-cart"></i></a>
				</div>
				<div class="login icon">
					<a href="<c:url value='/login'/>"><i class="ti-user"></i></a>
				</div>
			</div>
		</header>
		<div id="slide-bar">
			<video class="video" autoplay loop muted width="800px" height="750px">
				<source src="<c:url value='/views/img/intro.mp4'/>">
			</video>
		</div>
		<section class="features-area section_gap">
			<div class="container">
				<div class="row features-inner">
					<!-- single features -->
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-features">
							<div class="f-icon">
								<i class="ti-truck"></i>
							</div>
							<h6>Free Delivery</h6>
							<p>Free Shipping on all order</p>
						</div>
					</div>
					<!-- single features -->
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-features">
							<div class="f-icon">
								<i class="ti-trash"></i>
							</div>
							<h6>Return Policy</h6>
							<p>Free Shipping on all order</p>
						</div>
					</div>
					<!-- single features -->
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-features">
							<div class="f-icon">
								<i class="ti-headphone"></i>
							</div>
							<h6>24/7 Support</h6>
							<p>Free Shipping on all order</p>
						</div>
					</div>
					<!-- single features -->
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-features">
							<div class="f-icon">
								<i class="ti-server"></i>
							</div>
							<h6>Secure Payment</h6>
							<p>Free Shipping on all order</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="content">
			<section class="category-area">
				<div class="container">
				
					<div class="row justify-content-center">
						<div class="col-lg-8 col-md-12">
							<div class="row">
								<div class="col-lg-8 col-md-8">
									<div class="single-deal">
										<div class="overlay"></div>
										<img class="img-fluid w-100"
											src="<c:url value='/views/img/category/c1.jpg'/>" alt=""> <a
											href="../views/img/category/c1.jpg" class="img-pop-up"
											target="_blank">
											<div class="deal-details">
												<h6 class="deal-title">Sneaker for Sports</h6>
											</div>
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-4">
									<div class="single-deal">
										<div class="overlay"></div>
										<img class="img-fluid w-100" 
											src="<c:url value='/views/img/category/c2.jpg'/>" alt=""> <a
											href="../views/img/category/c2.jpg" class="img-pop-up"
											target="_blank">
											<div class="deal-details">
												<h6 class="deal-title">Sneaker for Sports</h6>
											</div>
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-4">
									<div class="single-deal">
										<div class="overlay"></div>
										<img class="img-fluid w-100"
											src="<c:url value='/views/img/category/c3.jpg'/>" alt=""> <a
											href="../views/img/category/c3.jpg" class="img-pop-up"
											target="_blank">
											<div class="deal-details">
												<h6 class="deal-title">Product for Couple</h6>
											</div>
										</a>
									</div>
								</div>
								<div class="col-lg-8 col-md-8">
									<div class="single-deal">
										<div class="overlay"></div>
										<img class="img-fluid w-100"
											src="<c:url value='/views/img/category/c4.jpg'/>" alt=""> <a
											href="../views/img/category/c4.jpg" class="img-pop-up"
											target="_blank">
											<div class="deal-details">
												<h6 class="deal-title">Sneaker for Sports</h6>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="<c:url value='/views/img/category/c5.jpg'/>"
									alt=""> <a href="../views/img/category/c5.jpg"
									class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Sneaker for Sale</h6>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- start product Area -->
			<section class="bg0 p-t-23 p-b-140" id="menu">
			<div class="container">
			<div class="row justify-content-center">
							<div class="col-lg-6 text-center">
								<div class="section-title">
									<h1>Latest Products</h1>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
								</div>
							</div>
						</div>
				<div class="container">
					<div class="row isotope-grid ">
					<c:forEach var="sp" items="${sp}" end="7">
						<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${sp.madm}">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="<c:url value='/views/img/product/${sp.hinh}'/>"
										style="width: 264px; height: 283px;" alt="IMG-PRODUCT">

									<a
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Còn Hàng </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="<c:url value='/info?masp=${sp.masp}'/>"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											${sp.tensp} </a><span class="stext-105 cl3"><fmt:formatNumber type="number" groupingUsed="true" value="${sp.giasp} " /> </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="<c:url value='/views/img/icons/cart.png'/>" style="width: 19px;height: 16px" alt="ICON">
											<img class="icon-heart2 dis-block trans-04 ab-t-l"
											src="<c:url value='/views/img/icons/cart-1.png'/>"style="width: 19px;height: 16px" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>
				</c:forEach>
						</div>
						
			</div>
	</div>
	</section>
			<!-- end product Area -->

			<!-- Start brand Area -->
			<section class="brand-area section_gap">
				<div class="container">
					<div class="row">
						<a class="col single-img" href="#"> <img
							class="img-fluid d-block mx-auto" src="<c:url value='/views/img/brand/1.png'/>"
							alt="">
						</a> <a class="col single-img" href="#"> <img
							class="img-fluid d-block mx-auto" src="<c:url value='/views/img/brand/2.png'/>"
							alt="">
						</a> <a class="col single-img" href="#"> <img
							class="img-fluid d-block mx-auto" src="<c:url value='/views/img/brand/3.png'/>"
							alt="">
						</a> <a class="col single-img" href="#"> <img
							class="img-fluid d-block mx-auto" src="<c:url value='/views/img/brand/4.png'/>"
							alt="">
						</a> <a class="col single-img" href="#"> <img
							class="img-fluid d-block mx-auto" src="<c:url value='/views/img/brand/5.png'/>"
							alt="">
						</a>
					</div>
				</div>
			</section>
			<!-- End brand Area -->
		</div>

		<!-- start footer Area -->
		<footer class="footer-area section_gap">
			<div class="container">
				<div class="row">
					<div class="col-lg-3  col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6>About Us</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore dolore magna aliqua.
							</p>
						</div>
					</div>
					<div class="col-lg-4  col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6>Newsletter</h6>
							<p>Stay update with our latest</p>
							<div class="" id="mc_embed_signup">

								<form target="_blank" novalidate="true"
									action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
									method="get" class="form-inline">

									<div class="d-flex flex-row">
										<input class="form-control" name="EMAIL"
											placeholder="Enter Email" onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter Email '" required=""
											type="email">
										<button class="click-btn btn btn-default">
											<i class="ti-arrow-right" aria-hidden="true"></i>
										</button>

									</div>
									<div class="info"></div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-3  col-md-6 col-sm-6">
						<div class="single-footer-widget mail-chimp">
							<h6 class="mb-20">Instragram Feed</h6>
								<ul class="instafeed d-flex flex-wrap">
								<li><img src="<c:url value='/views/img/i1.jpg'/>" alt=""></li>
								<li><img src="<c:url value='/views/img/i2.jpg'/>" alt=""></li>
								<li><img src="<c:url value='/views/img/i3.jpg'/>" alt=""></li>
								<li><img src="<c:url value='/views/img/i4.jpg'/>" alt=""></li>
								<li><img src="<c:url value='/views/img/i5.jpg'/>" alt=""></li>
								<li><img src="<c:url value='/views/img/i6.jpg'/>" alt=""></li>
								<li><img src="<c:url value='/views/img/i7.jpg'/>" alt=""></li>
								<li><img src="<c:url value='/views/img/i8.jpg'/>" alt=""></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6>Follow Us</h6>
							<p>Let us be social</p>
							<div class="footer-social d-flex align-items-center">
								<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
									class="ti-twitter"></i></a> <a href="#"><i class="ti-dribbble"></i></a>
								<a href="#"><i class="ti-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div
					class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
					<p class="footer-text m-0">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="ti-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</footer>
		<!-- End footer Area -->
	</div>
	<div class="up">
		<a href="#"> <i class="ti-angle-double-up"></i>
		</a>
	</div>

	<%@include file="/views/bot.jsp"%>
	<script src="../views/js/isotope/isotope.pkgd.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(document).ready(function() {
			$(window).scroll(function() {
				if ($(this).scrollTop()) {
					$('header').addClass('sticky');
				} else {
					$('header').removeClass('sticky');
				}
			})
		})
	</script>
	<script>
		
		var $topeContainer = $('.isotope-grid');
    	var $filter = $('.filter-tope-group');

    // filter items on button click
    $filter.each(function () {
        $filter.on('click', 'button', function () {
            var filterValue = $(this).attr('data-filter');
            $topeContainer.isotope({filter: filterValue});
        });
        
    });
	
		var isotopeButton = $('.filter-tope-group button');
		 $(isotopeButton).each(function(){
        $(this).on('click', function(){
            for(var i=0; i<isotopeButton.length; i++) {
                $(isotopeButton[i]).removeClass('how-active1');
            }

            $(this).addClass('how-active1');
        });
    });
	
	</script>
	<!--===============================================================================================-->
	<script src="../views/js/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});
		$('.js-addwish-b2').each(function()
		{
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			
			$(this).on('click', function()
			{
			
				var test = document.querySelector('.js-addedwish-b2')
				if(test===null)
				{
					swal(nameProduct, "Đã được thêm vào giỏ hàng !", "success");
					$(this).addClass('js-addedwish-b2');
				}else
				{	
					swal(nameProduct, "Đã xoá khỏi giỏ hàng !", "success");
					$(this).removeClass('js-addedwish-b2');	
				}});
			}
			
		);
	</script>
</body>

</html>