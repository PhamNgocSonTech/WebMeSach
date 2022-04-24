<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add to Cart</title>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<c:url value="/view/client/static" var="url"></c:url>

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
	href="${url}/plugins/jquery-steps/css/custom-jquery.steps.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

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
		<div class="header-v5 header-static">
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
				<span class="page-name">Thanh toán</span>
				<h1>
					Thông tin <span class="shop-green"> giỏ hàng </span> của bạn
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="index.html">Trang chủ</a></li>
					<li><a href="">Sản phẩm</a></li>
					<li class="active">Giỏ hàng</li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Content Medium Part ===-->
		<div class="content-md margin-bottom-30">
			<div class="container">
				<form class="shopping-cart" action="#">


					<c:choose>

						<c:when test="${empty sessionScope.cart}">
							<div style="text-align: center;">
								<h1>
									GIỎ HÀNG <span class="shop-green"> TRỐNG </span>
								</h1>
								<p>Mời bạn tiếp tục mua sắm tại Mesach.com</p>
								<img alt=""
									src="${pageContext.request.contextPath }\view\client\static\img\empty-shopping-cart.png"
									style="width: 307px;">
							</div>
						</c:when>
						
						<c:otherwise>
						
						<div>
						<div class="header-tags">
							<div class="overflow-h">
								<h2>GIỎ HÀNG</h2>
								<p>
									Xem lại và chỉnh sửa sản phẩm của bạn <i
										class="rounded-x fa fa-check"></i>
								</p>
							</div>
						</div>
						<section>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>TÊN SẢN PHẨM</th>
											<th>GIÁ</th>
											<th>SỐ LƯỢNG</th>
											<th>THÀNH TIỀN</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${sessionScope.cart}" var="map">

											<tr>
												<c:url
													value="/view/client/static/img/book-img/${map.value.product.image}"
													var="imgUrl"></c:url>
												<td class="product-in-table"><img
													class="img-responsive" src="${imgUrl}" alt="">
													<div class="product-it-in">
														<h3>${map.value.product.name }</h3>
														<span>${map.value.product.author }</span>
													</div></td>
												<td>$ ${map.value.product.price }</td>
												<td>${map.value.quantity }</td>
												<td class="shop-red">$ ${map.value.product.price * map.value.quantity }</td>
												<td><a
													href="${pageContext.request.contextPath}/member/cart/remove?pId=${map.value.product.id}"><button
															type="button" class="close">
															<span>&times;</span><span class="sr-only">Close</span>
														</button></a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</section>




						<div class="header-tags">
							<div class="overflow-h">
								<h2>THANH TOÁN</h2>
								<p>Vui lòng xác minh thông tin trước khi thanh toán</p>
							</div>
						</div>
						<section>
							<div class="row">
								<div class="col-md-6 md-margin-bottom-50">
									<h2 class="title-type"></h2>
									<!-- Accordion -->
									<div class="accordion-v2">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapseOne"> <i class="fa fa-home"></i> Địa
															chỉ nhận hàng
														</a>
													</h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													<div class="panel-body cus-form-horizontal">
														<div class="form-group">
															<label class="col-sm-4 no-col-space control-label">Họ
																và tên</label>
															<div class="col-sm-8">
																<input type="text" class="form-control required"
																	name="cardholder" placeholder="" disabled="disabled"
																	value="${sessionScope.account.name}">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 no-col-space control-label">Số
																điện thoại</label>
															<div class="col-sm-8">

																<c:choose>
																	<c:when test="${empty sessionScope.account.phone}">
																		<input style="border: 1px solid red; color: red"
																			type="text" class="form-control required"
																			name="cardnumber" placeholder="" disabled="disabled"
																			value="(Hãy thiết lập số điện thoại)">
																	</c:when>
																	<c:otherwise>
																		<input type="text" class="form-control required"
																			name="cardnumber" placeholder="" disabled="disabled"
																			value="${sessionScope.account.phone}">
																	</c:otherwise>
																</c:choose>



															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 no-col-space control-label">Địa
																chỉ</label>
															<div class="col-sm-8 input-small-field">
																<c:choose>
																	<c:when test="${empty sessionScope.account.address}">
																		<input style="border: 1px solid red; color: red"
																			type="text" class="form-control required"
																			name="cardnumber" placeholder="" disabled="disabled"
																			value="(Hãy thiết lập địa chỉ giao hàng)">
																	</c:when>
																	<c:otherwise>
																		<input type="text" class="form-control required"
																			name="cardnumber" placeholder="" disabled="disabled"
																			value="${sessionScope.account.address}">
																	</c:otherwise>
																</c:choose>
															</div>
														</div>

														<div style="text-align: center;">
															<a
																href="${pageContext.request.contextPath }/member/myaccount"
																style="text-decoration: none; background-color: #18BA9B; color: white; padding: 8px 16px; margin-top: 15px">Chỉnh
																sửa thông tin</a>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Accordion -->
								</div>

								<div class="col-md-6">
									<h2 class="title-type">Frequently asked questions</h2>
									<!-- Accordion -->
									<div class="accordion-v2 plus-toggle">
										<div class="panel-group" id="accordion-v2">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-v2"
															href="#collapseOne-v2"> Tôi có thể sử dụng phương
															thức thanh toán nào? </a>
													</h4>
												</div>
												<div id="collapseOne-v2" class="panel-collapse collapse in">
													<div class="panel-body">
														Đến với Mesach việc thanh toán không thể dễ dàng hơn
														Mesach cung cấp cho bạn 2 phương thức thanh toán khác
														nhau:
														<li>Nhận hàng sau đó thanh toán</li>
														<li>Chuyển khoản bằng thẻ ngân hàng hoặc Momo</li>


													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" class="collapsed"
															data-parent="#accordion-v2" href="#collapseTwo-v2">
															Tôi có thể sử dụng mã quà tặng để áp dụng khuyến mãi được
															không?</a>
													</h4>
												</div>
												<div id="collapseTwo-v2" class="panel-collapse collapse">
													<div class="panel-body">Bạn có thể sử dụng mã quà
														tặng đó vào ô mã ưu đãi để nhận được giá ưu đãi bạn nhé.</div>
												</div>
											</div>

											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" class="collapsed"
															data-parent="#accordion-v2" href="#collapseFour-v2">
															Bao lâu thì tôi nhận được hàng? </a>
													</h4>
												</div>
												<div id="collapseFour-v2" class="panel-collapse collapse">
													<div class="panel-body">Tùy vào khu vực khác nhau sẽ
														có thời gian nhận hàng khác nhau. Mesach dự kiến khu vực
														Tp.HCM sẽ nhận được 1 ngày kể từ ngày đặt hàng Các khu vực
														khác sẽ nhận được hàng khoảng 5 - 6 ngày.</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Accordion -->
								</div>
							</div>
						</section>

						<div class="coupon-code">
							<div class="row">
								<div class="col-sm-4 sm-margin-bottom-30">
									<h3>Mã ưu đãi</h3>
									<p>Nhập mã ưu đãi của bạn</p>
									<input class="form-control margin-bottom-10" name="code"
										type="text">
									<button type="button" class="btn-u btn-u-sea-shop">Áp
										dụng</button>
								</div>
								<div class="col-sm-3 col-sm-offset-5">
									<ul class="list-inline total-result">
										<li>
											<h4>Tạm tính:</h4> <c:set var="total" value="${0}" /> <c:forEach
												items="${sessionScope.cart}" var="map">
												<c:set var="total"
													value="${total + map.value.quantity * map.value.product.price}" />
											</c:forEach>
											<div class="total-result-in">
												<span>$ ${total }</span>

											</div>
										</li>
										<li>
											<h4>Phí giao hàng:</h4>
											<div class="total-result-in">
												<span class="text-right">- - - -</span>
											</div>
										</li>
										<li class="divider"></li>
										<li class="total-price">
											<h4>Thành tiền:</h4>
											<div class="total-result-in">
												<span>$ ${total }</span>

											</div>
										</li>

										<c:choose>

											<c:when
												test="${(empty sessionScope.account.address) or (empty sessionScope.account.phone) }">
												<li><a onclick="return false" href="#"
													style="cursor: not-allowed; text-decoration: none; background-color: #18BA9B; color: white; padding: 8px 16px; display: inline-block; float: right; margin-top: 15px">THANH
														TOÁN</a></li>
												<label for="phone"><h4
														style="color: red; font-size: 14px">(Hãy thiết lập đủ
														thông tin trước khi thanh toán)</h4></label>
											</c:when>

											<c:otherwise>
												<li><a href="#"
													style="cursor: pointer; text-decoration: none; background-color: #18BA9B; color: white; padding: 8px 16px; display: inline-block; float: right; margin-top: 15px">THANH
														TOÁN</a></li>
											</c:otherwise>

										</c:choose>

									</ul>
								</div>
							</div>
						</div>
					</div>
						
						</c:otherwise>

					</c:choose>








					  







				</form>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Content Medium Part ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							đăng kí để nhận <strong>tin tức mới nhất</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Email your email..."> <span
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
	<script src="${url}/plugins/jquery-steps/build/jquery.steps.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/forms/page_login.js"></script>
	<script src="${url}/js/plugins/stepWizard.js"></script>
	<script src="${url}/js/forms/product-quantity.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Login.initLogin();
			App.initScrollBar();
			StepWizard.initStepWizard();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>