<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/css/shop.style2.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/plugins/animate.css">
<link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="${url}/css/pages/log-reg-v3.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
	<!-- Subiz -->
	<script>
		(function(s, u, b, i, z) {
			u[i] = u[i] || function() {
				u[i].t = +new Date();
				(u[i].q = u[i].q || []).push(arguments);
			};
			z = s.createElement('script');
			var zz = s.getElementsByTagName('script')[0];
			z.async = 1;
			z.src = b;
			z.id = 'subiz-script';
			zz.parentNode.insertBefore(z, zz);
		})(document, window, 'https://widgetv4.subiz.com/static/js/app.js',
				'subiz');
		subiz('setAccount', 'acqetkhujxyunuatbxzw');
	</script>
	<!-- End Subiz -->
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-${url}">
			<!-- Topbar v3 -->
			<jsp:include page="topbar.jsp"></jsp:include>

			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Breadcrumbs v4 ===-->
		<div class="breadcrumbs-v4">
			<div class="container">
				<span class="page-name">ĐĂNG NHẬP</span>
				<h1>
					Đăng nhập vào <span class="shop-green">Tài khoản</span> của bạn
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="index.html">Trang chủ</a></li>
					<li><a href="">Sản phẩm</a></li>
					<li class="active">Đăng nhập</li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Login ===-->
		<div class="log-reg-v3 content-md">
			<div class="container">
				<div class="row">
					<div class="col-md-7 md-margin-bottom-50">
						<h2 class="welcome-title">Chào mừng đến với Mesach.com</h2>
						<p>Mesach.com luôn đảm bảo mang lại những đầu sách mới nhất cho bạn</p>
						<br>
						<div class="info-block-v2">
							<i class="icon icon-layers"></i>
							<div class="info-block-in">
								<h3>Các đầu sách luôn được cập nhật thường xuyên</h3>
								<p>Chúng tôi luôn cập nhật liên tục những bộ sách hay, tái bản mới nhất</p>
							</div>
						</div>
						<div class="info-block-v2">
							<i class="icon icon-settings"></i>
							<div class="info-block-in">
								<h3>Nhiều sự kiện khuyến mãi lớn nhằm tri ân bạn đọc Mesach.com</h3>
								<p>Nhiều sự kiện khuyến mãi diễn ra liên tục, giảm giá đến 80%</p>
							</div>
						</div>
						<div class="info-block-v2">
							<i class="icon icon-paper-plane"></i>
							<div class="info-block-in">
								<h3>Giao hàng tận nơi</h3>
								<p>Chỉ cần bạn mua hàng từ 100.000Đ trở lên sẽ nhận được voucher miễn phí vận chuyển</p>
							</div>
						</div>
					</div>

					<div class="col-md-5">
						<form id="sky-form1" class="log-reg-block sky-form" action="login"
							method="post">
							<h2>Đăng nhập vào tài khoản của bạn</h2>
							<h5 style="text-align: center; color: green;" >${alert}</h5>


							<section>
								<label class="input login-input">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input type="text" placeholder="User name" name="username" required="required"
											class="form-control">
									</div>
								</label>
							</section>
							<section>
								<label class="input login-input no-border-top">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-lock"></i></span>
										<input type="password" placeholder="Password" name="password"
											class="form-control">
									</div>
								</label>
							</section>
							<div class="row margin-bottom-5">
								<div class="col-xs-6">
									<label class="checkbox"> <input type="checkbox"
										name="remember" /> <i></i> Ghi nhớ
									</label>
								</div>
								<div class="col-xs-6 text-right">
									<a href="#">Quên mật khẩu?</a>
								</div>
							</div>
							<button class="btn-u btn-u-sea-shop btn-block margin-bottom-20"
								type="submit">Đăng nhập</button>

							<div class="border-wings">
								<span>or</span>
							</div>

							<div class="row columns-space-removes">
								<div class="col-lg-6 margin-bottom-10">
									<button type="button" class="btn-u btn-u-md btn-u-fb btn-block">
										<i class="fa fa-facebook"></i> Facebook LogIn
									</button>
								</div>
								<div class="col-lg-6">
									<button type="button" class="btn-u btn-u-md btn-u-tw btn-block">
										<a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/WebBanSach/login-google&response_type=code
   											 &client_id=625667945799-tmm6huk68662am4dvhtucbapp2ld64di.apps.googleusercontent.com&approval_prompt=force">
   											 login with google
   											 </a>
									</button>
								</div>
							</div>
						</form>

						<div class="margin-bottom-20"></div>
						<p class="text-center">
							Bạn chưa có tài khoản? Hãy <a
								href="${pageContext.request.contextPath }/register">Đăng ký ngay</a>
								
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
			<!--/end container-->
		</div>
		<!--=== End Login ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							ĐĂNG KÝ ĐỂ NHẬN <strong>THÔNG TIN MỚI NHẤT</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Email của bạn..."> <span
								class="input-group-btn">
								<button class="btn" type="button">
									<i class="fa fa-envelope-o"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Shop Suvbscribe ===-->

		<!--=== Footer v4 ===-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script src="${url}/plugins/jquery/jquery.min.js"></script>
	<script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="${url}/plugins/back-to-top.js"></script>
	<script src="${url}/plugins/smoothScroll.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/forms/page_login.js"></script>
	<script src="${url}/js/forms/page_contact_form.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Login.initLogin();
			App.initScrollBar();
			PageContactForm.initPageContactForm();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>