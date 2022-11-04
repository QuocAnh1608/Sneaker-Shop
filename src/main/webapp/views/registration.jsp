<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
<link rel="stylesheet" href="../views/WEB-INF/css/login.css">
<link rel="stylesheet" href="../views/themify-icons/themify-icons.css">

</head>
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
		<div id="lg-bg">
			<img src="../views/img/login-bg.png" alt="">
		</div>
		<!--================Login Box Area =================-->
		<section class="login_box_area section_gap">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="login_box_img">
							<img class="img-fluid" src="../views/img/login.jpg" alt="">
							<div class="hover">
								<h4>Shop Pubbo</h4>
								<p>There are advances being made in science and technology
									everyday, and a good example of this is the</p>
								<a class="primary-btn" href="login.jsp">Login Account</a>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="login_form_inner">
							<h3>Create new account</h3>
							<form class="row login_form" action="contact_process.php"
								method="post" id="contactForm" novalidate="novalidate">
								<div class="col-md-12 form-group">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Username" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Username'">
								</div>
								<div class="col-md-12 form-group">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Password" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Password'">
								</div>
								<div class="col-md-12 form-group">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Repeat Password" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Repeat Password'">
								</div>
								<div class="col-md-12 form-group">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Email" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Email'">
								</div>
								<div class="col-md-12 form-group"></div>
								<br>
								<div class="col-md-12 form-group">
									<button type="submit" value="submit" class="primary-btn">Log
										In</button>
									<a href="login.jsp" style="color: red;">Have account?</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================End Login Box Area =================-->

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
								<li><img src="../views/img/i1.jpg" alt=""></li>
								<li><img src="../views/img/i2.jpg" alt=""></li>
								<li><img src="../views/img/i3.jpg" alt=""></li>
								<li><img src="../views/img/i4.jpg" alt=""></li>
								<li><img src="../views/img/i5.jpg" alt=""></li>
								<li><img src="../views/img/i6.jpg" alt=""></li>
								<li><img src="../views/img/i7.jpg" alt=""></li>
								<li><img src="../views/img/i8.jpg" alt=""></li>
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
						<script>document.write(new Date().getFullYear());</script>
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
</body>

</html>