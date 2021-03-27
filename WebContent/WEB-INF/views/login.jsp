<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
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
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a href="trangchu.htm"> <span class="icon-home"></span> Home
					</a> <a href="#"><span class="icon-edit"></span> Free
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
							<li class="active"><a
								href="http://localhost:9999/PTITHCMDA/trangchu.htm">Home </a></li>
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
							<li class="dropdown"><a class="dropdown-toggle" href="#">
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
		<!-- 
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
						<li style="border: 0">&nbsp;</li>
						<li><a class="totalInCart" href="#"><strong>Total
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
				<ul class="breadcrumb">
					<li><a href="trangchu.htm">Home</a> <span class="divider">/</span></li>
					<li class="active">Login</li>
				</ul>
				<h3>Login</h3>
				<hr class="soft" />

				<div class="row">
					<div class="span1">&nbsp;</div>
					<div class="span4">
						<div class="well">
							<form:form action="login.htm" modelAttribute="user" method="post">
								<div class="control-group">
									<label class="control-label">Email</label>
									<div class="controls">
										<form:input class="span3" type="text" path="username"
											placeholder="username" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Password</label>
									<div class="controls">
										<form:input type="password" class="span3" path="password"
											placeholder="password" />
									</div>
									<div style="color: red">${message}</div>
								</div>
								<div class="control-group">
									<div class="controls">
										<button type="submit" class="defaultBtn">Sign in</button>
										<a href="#">Forget password?</a>
									</div>
								</div>
							</form:form>
						</div>
					</div>
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
			<span>Copyright &copy; 2013<br> bootstrap ecommerce
				shopping template
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