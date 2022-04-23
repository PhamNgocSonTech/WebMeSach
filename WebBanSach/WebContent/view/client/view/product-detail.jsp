<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<title>Product Details</title>
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
<link rel="stylesheet"
	href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/master-slider/quick-start/masterslider/style/masterslider.css">
<link rel='stylesheet'
	href="${url}/plugins/master-slider/quick-start/masterslider/skins/default/style.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
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

		<!--=== Shop Product ===-->
		<div class="shop-product">
			<!-- Breadcrumbs v5 -->
			<div class="container">
				<ul class="breadcrumb-v5">
					<li><a href="index.html"><i class="fa fa-home"></i></a></li>
					<li><a href="#">Sản phẩm</a></li>
					<li class="active">Chi tiết</li>
				</ul>
			</div>
			<!-- End Breadcrumbs v5 -->

			<div class="container">
				<div class="row">
					<div class="col-md-6 md-margin-bottom-50">
						<div class="ms-showcase2-template">
							<!-- Master Slider -->
							<div class="master-slider ms-skin-default" id="masterslider">
								<div class="ms-slide">
									<c:url
										value="/view/client/static/img/book-img/${product.image}"
										var="imgUrl"></c:url>
									<img class="ms-brd" src="${url}/img/blank.gif"
										data-src="${imgUrl}" alt="${product.name}">

								</div>


							</div>
							<!-- End Master Slider -->
						</div>
					</div>

					<div class="col-md-6">
						<div class="shop-product-heading">
							<h2>${product.name }</h2>
							<ul class="list-inline shop-product-social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul>
						</div>
						<!--/end shop product social-->

						<ul class="list-inline product-ratings margin-bottom-30">
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating fa fa-star"></i></li>
							<li><i class="rating fa fa-star"></i></li>
							<li class="product-review-list"><span>(1) <a href="#">Lượt
										đánh giá</a> | <a href="#"> Đánh giá</a></span></li>
						</ul>
						<!--/end shop product ratings-->
						<h2>${product.author}</h2>
						<br>
						<ul class="list-inline shop-product-prices margin-bottom-30">
							<li class="shop-red"><fmt:formatNumber
									value="${product.price}" /> VNĐ</li>
							<li class="line-through"><fmt:formatNumber
									value="${product.price*1.5}" /> VNĐ</li>
							<li><small class="shop-bg-red time-day-left"> Bán
									chạy nhất</small></li>
						</ul>
						<!--/end shop product prices-->

						<h2 class="shop-product-title" style="font-size: 15px">
							<b>Mô tả</b>
						</h2>
						<ul class="list-inline product-size margin-bottom-30">
							<p style="text-align: justify;">${product.des}</p>
						</ul>
						<!--/end product size-->


						<h3 class="shop-product-title" style="font-size: 15px">
							<b>Số lượng</b>
						</h3>
						<div class="margin-bottom-40">

							<form name="f1" class="product-quantity sm-margin-bottom-20"
								method="get" action="<c:url value="/member/cart/add"></c:url>">
								<input type="text" value="${product.id }" name="pId" hidden="">
								<button type='button' class="quantity-button" name='subtract'
									onclick='javascript: subtractQty();' value='-'>-</button>
								<input type='text' class="quantity-field" name='quantity'
									value="1" id='qty' />
								<button type='button' class="quantity-button" name='add'
									onclick='javascript: document.getElementById("qty").value++;'
									value='+'>+</button>
								<button type="submit" class="btn-u btn-u-sea-shop btn-u-lg"
									style="margin-left: 15px">Thêm vào giỏ hàng</button>
							</form>


						</div>
						<!--/end product quantity-->

						<ul class="list-inline add-to-wishlist add-to-wishlist-brd">
							<li class="wishlist-in"><i class="fa fa-heart"></i> <a
								href="#">Yêu thích</a></li>
						</ul>
						<p class="wishlist-category">
							<strong>Thể loại:</strong> <a href="#">${product.category.name },</a>
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
		</div>
		<!--=== End Shop Product ===-->

		<!--=== Content Medium ===-->
		<div class="content-md container">
			<!--=== Product Service ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="fa fa-truck"></i>
					</div>
					<div class="product-service-in">
						<h3>Miễn phí giao hàng</h3>
						<p>Miễn phí giao hàng cho hóa đơn từ 200.000Đ trở lên</p>
						<a href="#">+Read More</a>
					</div>
				</div>
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="icon-earphones-alt"></i>
					</div>
					<div class="product-service-in">
						<h3>Chăm sóc khách hàng</h3>
						<p>Dịch vụ chăm sóc khách hàng luôn hoạt động 24/24</p>
						<a href="#">+Read More</a>
					</div>
				</div>
				<div class="col-md-4 product-service">
					<div class="product-service-heading">
						<i class="icon-refresh"></i>
					</div>
					<div class="product-service-in">
						<h3>Miễn phí đổi trả</h3>
						<p>Miễn phí đổi trả trong 30 ngày nếu sản phẩm lỗi</p>
						<a href="#">+Read More</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Product Service ===-->

			<div class="tab-v5">
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#description" role="tab"
						data-toggle="tab">Thông tin thêm</a></li>
					<!-- 					<li><a href="#reviews" role="tab" data-toggle="tab">Reviews
							(1)</a></li> -->
				</ul>

				<div class="tab-content">
					<!-- Description -->
					<div class="tab-pane fade in active" id="description">
						<div class="row">
							<div class="col-md-7">
								<p>Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện
									hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ
									giao hàng mà có thể phát sinh thêm chi phí khác như phí vận
									chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn
									hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p>
								<br>

								<h3 class="heading-md margin-bottom-20">Thông tin chi tiết</h3>
								<div class="row">
									<div class="col-sm-6">
										<ul class="list-unstyled specifies-list">
											<li><i class="fa fa-caret-right"></i>Nhà xuất bản: <span>${product.publisher.publisher_name}</span></li>
											<li><i class="fa fa-caret-right"></i>Thể loại: <span>${product.category.name}</span></li>
											<li><i class="fa fa-caret-right"></i>Tác giả: <span>${product.author}</span></li>
											<li><i class="fa fa-caret-right"></i>Kích thước: <span>${product.size}</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<div class="responsive-video">
									<c:choose>
										<c:when test="${ not empty product.embedCode}">
											<c:url
												value="https://www.youtube.com/embed/${product.embedCode}"
												var="link"></c:url>
											<iframe width="560" height="315" src="${link}"
												title="YouTube video player" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
												allowfullscreen></iframe>
										</c:when>
										<c:otherwise>
											<img alt="Mesach.com"
												src="${pageContext.request.contextPath }/view/client/static/img/book-slide-gif.gif">
										</c:otherwise>

									</c:choose>


								</div>
							</div>
						</div>
					</div>
					<!-- End Description -->
				</div>
			</div>
		</div>
		<!--/end container-->
		<!--=== End Content Medium ===-->

		<!--=== Illustration v2 ===-->
		<div class="container">
			<div class="heading heading-v1 margin-bottom-20">
				<h2>Cùng thể loại</h2>
				<p>Khám phá thêm những quyển sách hay cùng thể loại với sách của
					bạn</p>
			</div>

			<div class="illustration-v2 margin-bottom-60">
				<div class="customNavigation margin-bottom-25">
					<a class="owl-btn prev rounded-x"><i class="fa fa-angle-left"></i></a>
					<a class="owl-btn next rounded-x"><i class="fa fa-angle-right"></i></a>
				</div>


				<ul class="list-inline owl-slider-v4" style="text-align: center;">
					<c:forEach items="${rproduct}" var="r">
						<li class="item"><a href="#"><img class="img-responsive"
								src="${pageContext.request.contextPath}/view/client/static/img/book-img/${r.image}"
								alt=""></a>
							<div class="product-description-v2">
								<div class="margin-bottom-5">
									<h4 class="title-price" style="max-width: 320px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
										<a href="#">${r.name}</a>
									</h4>
									<span class="title-price"><fmt:formatNumber
											value="${r.price}" /> VNĐ <br> </span> <span
										class="title-price line-through"><fmt:formatNumber
											value="${r.price*1.5}" /> VNĐ</span>
								</div>
								<ul class="list-inline product-ratings">
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
								</ul>
							</div></li>
					</c:forEach>
				</ul>



			</div>
		</div>
		<!--=== End Illustration v2 ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							Cập nhật thông tin sách mới ? <strong>Để lại email cho
								chúng tôi</strong>
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
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- Master Slider -->
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/masterslider.min.js"></script>
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/jquery.easing.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/master-slider.js"></script>
	<script src="${url}/js/forms/product-quantity.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			OwlCarousel.initOwlCarousel();
			MasterSliderShowcase2.initMasterSliderShowcase2();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
<![endif]-->

</body>
</body>
</html>