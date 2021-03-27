<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FRUIT MARKER</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- Customize styles -->
<link href="style.css" rel="stylesheet" />
<!-- font awesome styles -->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<!-- Favicons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico">
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="https://www.facebook.com/"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a class="active" href="trangchu.htm"> <span class="icon-home"></span>
						Home
					</a><a
						href="#"><span class="icon-edit"></span> Free
						Register </a> <a href="#"><span class="icon-envelope"></span>
						Contact us</a> <a href="#"><span class="icon-shopping-cart"></span>
						2 Item(s) - <span class="badge badge-warning"> $448.42</span></a>
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		<header id="header">
			<div class="row">
				<div class="span4">
					<h1>
						<a class="logo" href="trangchu.htm"><span>Twitter
								Bootstrap ecommerce template</span> <img src="img/logo3.png"
							alt="bootstrap sexy shop"> </a>
					</h1>
				</div>
				<div class="span4 alignR">
					<p>
						<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
						<br>
					</p>
					<span class="btn btn-mini">[ 2 ] <span
						class="icon-shopping-cart"></span></span> <span
						class="btn btn-warning btn-mini">$</span> <span
						class="btn btn-mini">&pound;</span> <span class="btn btn-mini">&euro;</span>
				</div>
			</div>
		</header>

		<!--
Navigation Bar Section 
-->
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse">
						<ul class="nav">
							<li class="active"><a href="http://localhost:9999/PTITHCMDA/trangchu.htm">Home </a></li>
							<li class=""><a href="#">Product</a></li>
							<li class=""><a href="login.htm">Login</a></li>
							<!-- 							<li class=""><a href="three-col.htm">Three Column</a></li>
							<li class=""><a href="four-col.htm">Four Column</a></li>
							<li class=""><a href="general.htm">General Content</a></li> -->
						</ul>
						<form action="#" class="navbar-search pull-left">
							<input type="text" placeholder="Search"
								class="search-query span2">
						</form>
						<ul class="nav pull-right">
							<li class="dropdown"><a
								class="dropdown-toggle" href="#">
									Hello </a>
								<div class="dropdown-menu">
									<form action="sanpham/index.htm" modelAttribute="users"
										class="form-horizontal loginFrm">
										<div class="control-group">
											<input type="text" class="span2" id="inputEmail"
												placeholder="Email">
												<form:errors path="username" />
										</div>
										<div class="control-group">
											<input type="password" class="span2" id="inputPassword"
												placeholder="Password">
												<form:errors path="password" />
										</div>
										<div class="control-group">
											<label class="checkbox"> <input type="checkbox">
												Remember me
											</label>
											<button type="submit" class="shopBtn btn-block">Sign
												in</button>
										</div>
									</form>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 
Body Section 
-->
		<div class="row">
			<div id="sidebar" class="span3">
				<div class="well well-small">
					<ul class="nav nav-list">
						<li><a href="#"><span
								class="icon-chevron-right"></span>Trái cây Việt</a></li>
						<li><a href="#"><span
								class="icon-chevron-right"></span>Trái cây ngoại nhập</a></li>
						<li><a href="#"><span
								class="icon-chevron-right"></span>Combo trái cây</a></li>
						<li><a href="#"><span
								class="icon-chevron-right"></span>Trái cây đông lạnh</a></li>
						<li><a href="#"><span
								class="icon-chevron-right"></span>Trái cây sấy khô</a></li>
						<!--						<li><a href="products.htm"><span
								class="icon-chevron-right"></span>Men's Jewelry</a></li>
						<li><a href="products.htm"><span
								class="icon-chevron-right"></span>Vintage & Antique</a></li>
						<li><a href="products.htm"><span
								class="icon-chevron-right"></span>Loose Diamonds </a></li>
						<li><a href="products.htm"><span
								class="icon-chevron-right"></span>Loose Beads</a></li>
						<li><a href="products.htm"><span
								class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>-->
						<li style="border: 0">&nbsp;</li>
						<li><a class="totalInCart" href="cart.htm"><strong>Total
									Amount <span class="badge badge-warning pull-right"
									style="line-height: 18px;">$448.42</span>
							</strong></a></li>
					</ul>
				</div>

				<div class="well well-small alert alert-warning cntr">
					<h2>50% Discount</h2>
					<p>
						only valid for online order. <br> <br> <a
							class="defaultBtn" href="#">Click here </a>
					</p>
				</div>
				<div class="well well-small">
					<a href="#"><img src="img/paypal.jpg"
						alt="payment method paypal"></a>
				</div>

				<a class="shopBtn btn-block" href="#">Upcoming products <br>
					<small>Click to view</small></a> <br> <br>
				<ul class="nav nav-list promowrapper">
					<li>
						<div class="thumbnail">
							<a class="zoomTool" href="#"
								title="add to cart"><span class="icon-search"></span> QUICK
								VIEW</a> <img src="img/nho1.png" alt="bootstrap ecommerce templates">
							<div class="caption">
								<h4>
									<a class="defaultBtn" href="#">VIEW</a> <span
										class="pull-right">$22.00</span>
								</h4>
							</div>
						</div>
					</li>
					<li style="border: 0">&nbsp;</li>
					<li>
						<div class="thumbnail">
							<a class="zoomTool" href="#"
								title="add to cart"><span class="icon-search"></span> QUICK
								VIEW</a> <img src="img/taovang.png" alt="shopping cart template">
							<div class="caption">
								<h4>
									<a class="defaultBtn" href="#">VIEW</a> <span
										class="pull-right">$22.00</span>
								</h4>
							</div>
						</div>
					</li>
					<li style="border: 0">&nbsp;</li>
					<li>
						<div class="thumbnail">
							<a class="zoomTool" href="#"
								title="add to cart"><span class="icon-search"></span> QUICK
								VIEW</a> <img src="img/dau.png" alt="bootstrap template">
							<div class="caption">
								<h4>
									<a class="defaultBtn" href="#">VIEW</a> <span
										class="pull-right">$22.00</span>
								</h4>
							</div>
						</div>
					</li>
				</ul>

			</div>
			<div class="span9">
				<div class="well np">
					<div id="myCarousel" class="carousel slide homCar">
						<div class="carousel-inner">
							<div class="item">
								<img style="width: 100%" src="img/cherry.jpg"
									alt="bootstrap ecommerce templates">
								<div class="carousel-caption">
									<h4>Cherry</h4>
								</div>
							</div>
							<div class="item">
								<img style="width: 100%" src="img/nhoxanh.jpg"
									alt="bootstrap ecommerce templates">
								<div class="carousel-caption">
									<h4>Nho Xanh</h4>
								</div>
							</div>
							<div class="item active">
								<img style="width: 100%" src="img/taoenvy.png"
									alt="bootstrap ecommerce templates">
								<div class="carousel-caption">
									<h4>Táo Envy</h4>
								</div>
							</div>
							<div class="item">
								<img style="width: 100%" src="img/dautay.jpg"
									alt="bootstrap templates">
								<div class="carousel-caption">
									<h4>Dâu Tây</h4>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#" data-slide="next">&rsaquo;</a>
					</div>
				</div>
				<!--
Hàng bán chạy
-->
				<div class="well well-small">
					<h3>Hàng bán chạy</h3>
					<hr class="soften" />
					<div class="row-fluid">
						<div id="newProductCar" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active">
									<ul class="thumbnails">
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#" class="tag"></a> <a
													href="#"><img src="img/nho1.png"></a>
												<p>Nho xanh</p>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#" class="tag"></a> <a
													href="#"><img src="img/vietquat.png"
													alt=""></a>
												<p>Việt quất</p>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#" class="tag"></a> <a
													href="#"><img src="img/taovang.png"
													alt=""></a>
												<p>Táo vàng</p>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#"><img
													src="img/nho1.png" alt=""></a>
												<p>Nho xanh</p>
											</div>
										</li>
									</ul>
								</div>
								<div class="item">
									<ul class="thumbnails">
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#"><img
													src="img/dualuoi.png" alt=""></a>
												<p>Dưa lưới</p>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#"><img
													src="img/bo.png" alt=""></a>
												<p>Bơ booth</p>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#"><img
													src="img/xoai.png" alt=""></a>
												<p>Xoài tứ quý</p>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="#"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="#"><img
													src="img/cam.png" alt=""></a>
												<p>Cam</p>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<a class="left carousel-control" href="#newProductCar"
								data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
								href="#newProductCar" data-slide="next">&rsaquo;</a>
						</div>
					</div>
					<div class="row-fluid">
						<ul class="thumbnails">
							<li class="span4">
								<div class="thumbnail">

									<a class="zoomTool" href="#"
										title="add to cart"><span class="icon-search"></span>
										QUICK VIEW</a> <a href="#"><img
										src="img/na.png" alt=""></a>
									<div class="caption cntr">
										<p>Na dai Thái</p>
										<p>
											<strong>50,000đ</strong>
										</p>
										<h4>
											<a class="shopBtn" href="#" title="add to cart"> Add to
												cart </a>
										</h4>
										<div class="actionList">
											<a class="pull-left" href="#">Add to Wish List </a> <a
												class="pull-left" href="#"> Add to Compare </a>
										</div>
										<br class="clr">
									</div>
								</div>
							</li>
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="#"
										title="add to cart"><span class="icon-search"></span>
										QUICK VIEW</a> <a href="#"><img
										src="img/dualuoi.png" alt=""></a>
									<div class="caption cntr">
										<p>Dưa lưới giống Nhật</p>
										<p>
											<strong> 69,000đ</strong>
										</p>
										<h4>
											<a class="shopBtn" href="#" title="add to cart"> Add to
												cart </a>
										</h4>
										<div class="actionList">
											<a class="pull-left" href="#">Add to Wish List </a> <a
												class="pull-left" href="#"> Add to Compare </a>
										</div>
										<br class="clr">
									</div>
								</div>
							</li>
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="#"
										title="add to cart"><span class="icon-search"></span>
										QUICK VIEW</a> <a href="#"><img
										src="img/nho1.png" alt=""></a>
									<div class="caption cntr">
										<p>Nho xanh Sweet Globe Úc</p>
										<p>
											<strong> 349,000đ</strong>
										</p>
										<h4>
											<a class="shopBtn" href="#" title="add to cart"> Add to
												cart </a>
										</h4>
										<div class="actionList">
											<a class="pull-left" href="#">Add to Wish List </a> <a
												class="pull-left" href="#"> Add to Compare </a>
										</div>
										<br class="clr">
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--
	Trái cây hàng ngày
	-->
				<div class="well well-small">
					<h3>
						<a class="btn btn-mini pull-right" href="#"
							title="View more">VIew More<span class="icon-plus"></span></a>
						Trái cây hàng ngày
					</h3>
					<hr class="soften" />
					<div class="row-fluid">
						<ul class="thumbnails">
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="" title="add to cart"><span
										class="icon-search"></span> QUICK VIEW</a> <a
										href="#"><img src="img/chuoi.png"
										alt=""></a>
									<div class="caption">
										<h5>Chuối Dole</h5>
										<h4>
											<a class="defaultBtn" href="#"
												title="Click to view"><span class="icon-zoom-in"></span></a>
											<a class="shopBtn" href="#" title="add to cart"><span
												class="icon-plus"></span></a> <span class="pull-right">25,000đ</span>
										</h4>
									</div>
								</div>
							</li>
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="#"
										title="add to cart"><span class="icon-search"></span>
										QUICK VIEW</a> <a href="#"><img
										src="img/dau.png" alt=""></a>
									<div class="caption">
										<h5>Dâu tây giống Nhật</h5>
										<h4>
											<a class="defaultBtn" href="#"
												title="Click to view"><span class="icon-zoom-in"></span></a>
											<a class="shopBtn" href="#" title="add to cart"><span
												class="icon-plus"></span></a> <span class="pull-right">114,000đ</span>
										</h4>
									</div>
								</div>
							</li>
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="#"
										title="add to cart"><span class="icon-search"></span>
										QUICK VIEW</a> <a href="#"><img
										src="img/taovang.png" alt="" /></a>
									<div class="caption">
										<h5>Táo vàng Shinano Nhật Bản</h5>
										<h4>
											<a class="defaultBtn" href="#"
												title="Click to view"><span class="icon-zoom-in"></span></a>
											<a class="shopBtn" href="#" title="add to cart"><span
												class="icon-plus"></span></a> <span class="pull-right">269,000đ</span>
										</h4>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div class="well well-small">
					<a class="btn btn-mini pull-right" href="#">View more <span
						class="icon-plus"></span></a> Popular Products
				</div>
				<hr>
				<div class="well well-small">
					<a class="btn btn-mini pull-right" href="#">View more <span
						class="icon-plus"></span></a> Best selling Products
				</div>
			</div>
		</div>

		<!--
Footer
-->
		<footer class="footer">
			<div class="row-fluid">
				<div class="span2">
					<h5>Your Account</h5>
					<a href="#">YOUR ACCOUNT</a><br> <a href="#">PERSONAL
						INFORMATION</a><br> <a href="#">ADDRESSES</a><br> <a
						href="#">DISCOUNT</a><br> <a href="#">ORDER HISTORY</a><br>
				</div>
				<div class="span2">
					<h5>Iinformation</h5>
					<a href="#">CONTACT</a><br> <a href="#">SITEMAP</a><br>
					<a href="#">LEGAL NOTICE</a><br> <a href="#">TERMS AND
						CONDITIONS</a><br> <a href="#">ABOUT US</a><br>
				</div>
				<div class="span2">
					<h5>Our Offer</h5>
					<a href="#">NEW PRODUCTS</a> <br> <a href="#">TOP SELLERS</a><br>
					<a href="#">SPECIALS</a><br> <a href="#">MANUFACTURERS</a><br>
					<a href="#">SUPPLIERS</a> <br />
				</div>
				<div class="span6">
					<h5>Freshshop</h5>
					Công ty TNHH một thành viên được thành lập và phát triển bởi Huyền
					cute
				</div>
			</div>
		</footer>
	</div>
	<!-- /container -->

	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				<a href="#"><img src="img/maestro.png" alt="payment"></a> <a
					href="#"><img src="img/mc.png" alt="payment"></a> <a href="#"><img
					src="img/pp.png" alt="payment"></a> <a href="#"><img
					src="img/visa.png" alt="payment"></a> <a href="#"><img
					src="img/disc.png" alt="payment"></a>
			</p>
			<span>Copyright &copy; 2013
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="assets/js/shop.js"></script>
</body>
</html>