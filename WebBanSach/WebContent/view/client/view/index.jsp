<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MeSach</title>
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
	href="${url}/plugins/revolution-slider/rs-plugin/css/settings.css">

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
			<jsp:include page="/view/client/view/topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="/view/client/view/navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Slider ===-->
		<div class="tp-banner-container">
			<div class="tp-banner">
				<ul>
					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 1">
						<!-- MAIN IMAGE --> <img src="${url}/img/bg-1.png"
						alt="darkblurbg" data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch1 sft start" data-x="center"
							data-hoffset="0" data-y="100" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							Lu??n c???p nh???t <br> <strong>Nh???ng ?????u s??ch </strong><br>
							m???i
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="380" data-speed="1600" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Xem
								ngay</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 2">
						<!-- MAIN IMAGE --> <img src="${url}/img/bg-2.png"
						alt="darkblurbg" data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch3 sft start" data-x="center"
							data-hoffset="0" data-y="140" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							Cam k???t <strong>S??ch m???i </strong> 100%
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="center"
							data-hoffset="-14" data-y="210" data-speed="1400"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off" style="z-index: 6">Ch??ng t??i cam
							k???t c??c lo???i s??ch b??n tr??n web ?????u l?? s??ch m???i v?? th???t 100%</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Xem
								ngay</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 3">
						<!-- MAIN IMAGE --> <img src="${url}/img/bg-3.png"
						alt="darkblurbg" data-bgfit="cover" data-bgposition="right top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch3 sft start" data-x="right"
							data-hoffset="5" data-y="130" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							<strong>Nhi???u l?????t mua nh???t</strong>
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="right"
							data-hoffset="0" data-y="210" data-speed="1400" data-start="2000"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">4.9/5 sao theo b??nh ch???n g???n ????y</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="right" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Mua
								ngay</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 4">
						<!-- MAIN IMAGE --> <img src="${url}/img/bg-4.jpg"
						alt="darkblurbg" data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch1 sft start" data-x="center"
							data-hoffset="0" data-y="100" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">Ki???n th???c cho m???i ng?????i</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch2 sft" data-x="center"
							data-hoffset="0" data-y="280" data-speed="1400" data-start="2000"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">N??ng cao v??n h??a ?????c s??ch</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="370" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Xem
								th??m</a> <a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Mua
								ngay</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 5">
						<!-- MAIN IMAGE --> <img src="${url}/img/bg-5.png"
						alt="darkblurbg" data-bgfit="cover" data-bgposition="right top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch5 sft start" data-x="right"
							data-hoffset="5" data-y="130" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							<strong>?????Y ?????</strong> M???I TH??? LO???I
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="right"
							data-hoffset="-14" data-y="210" data-speed="1400"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off" style="z-index: 6">?????y ????? th??? lo???i
							b???n c???n</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="right" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Xem
								ngay</a>
						</div>
					</li>
					<!-- END SLIDE -->
				</ul>
				<div class="tp-bannertimer tp-bottom"></div>
			</div>
		</div>
		<!--=== End Slider ===-->

		<!--=== Product Content ===-->
		<div class="container content-md">
			<!--=== Illustration v1 ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-6 md-margin-bottom-30">
					<div class="overflow-h">
						<div class="illustration-v1 illustration-img1">
							<div class="illustration-bg">
								<div class="illustration-ads ad-details-v1">
									<h3>
										M???ng 30/4 & 1/5 <br> <br> <strong>GI???M GI??
											30% - 60% </strong>
									</h3>
									<a class="btn-u btn-brd btn-brd-hover btn-u-light" href="#">Mua
										ngay</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="overflow-h">
						<a class="illustration-v1 illustration-img2" href="#"> <span
							class="illustration-bg"> <span
								class="illustration-ads ad-details-v2"> <span
									class="item-time">Tri ??n b???n ?????c</span> <br /> <span
									class="item-name">Gi???m gi?? s???c</span>
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Illustration v1 ===-->

			<div class="heading heading-v1 margin-bottom-20">
				<h2>S??ch n???i b???t</h2>
				<p>T???p h???p nh???ng ?????u s??ch hay nh???t t???i Mesach, nh???ng quy???n s??ch
					n??y lu??n trong t??nh tr???ng ch??y h??ng v?? ???????c ?????c gi??? nhi???t t??nh ????n
					nh???n</p>
			</div>

			<!--=== Illustration v2 ===-->
			<div class="illustration-v2 margin-bottom-60">
				<div class="customNavigation margin-bottom-25">
					<a class="owl-btn prev rounded-x"><i class="fa fa-angle-left"></i></a>
					<a class="owl-btn next rounded-x"><i class="fa fa-angle-right"></i></a>
				</div>

				<ul class="list-inline owl-slider">

					<c:forEach items="${pwelcome }" var="p">
						<c:url value="/view/client/static/img/book-img/${p.image}"
							var="imgUrl"></c:url>

						<li class="item">
							<div class="product-img">
								<a
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img
									width="100%" height="auto" src="${imgUrl}" alt=""></a> <a
									class="product-review"
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}">Quick
									review</a> <a class="add-to-cart"
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><i
									class="fa fa-shopping-cart"></i>Add to cart</a>
								<div class="shop-rgba-red rgba-banner">B??n ch???y nh???t</div>
							</div>
							<div class="product-description product-description-brd">
								<div class="overflow-h margin-bottom-5">
									<div class="pull-left"
										style="max-width: 250px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">${p.name }</a>
										<span class="gender text-uppercase">${p.author }</span> <span
											class="gender">${p.category.name}</span>
									</div>


								</div>
								<p class="title-price" style="text-align: right;"><fmt:formatNumber value="${p.price}" /> VN??</p>
								<ul class="list-inline product-ratings">
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
									<li class="like-icon"><a
										data-original-title="Add to wishlist" data-toggle="tooltip"
										data-placement="left" class="tooltips" href="#"><i
											class="fa fa-heart"></i></a></li>
								</ul>
							</div>
						</li>
					</c:forEach>
				</ul>

			</div>
			<!--=== End Illustration v2 ===-->


			<div class="heading heading-v1 margin-bottom-40">
				<h2>S??ch m???i nh???t</h2>
			</div>

			<!--=== Illustration v2 ===-->
			<div class="row illustration-v2">

				<c:forEach items="${pwelcome}" var="p">
					<c:url value="/view/client/static/img/book-img/${p.image}"
						var="imgUrl"></c:url>

					<div class="col-md-3 col-sm-6 " style="margin-bottom: 30px">
						<div class="product-img">
							<a
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img
								width="100%" height="auto" src="${imgUrl }" alt=""
								"
							alt=""></a> <a class="product-review"
								href="${pageContext.request.contextPath}/product/detail?id=${p.id}">Quick
								review</a> <a class="add-to-cart"
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><i
								class="fa fa-shopping-cart"></i>Add to cart</a>
						</div>
						<div class="product-description product-description-brd">
							<div class="overflow-h margin-bottom-5">
								<%-- 								<div class="pull-left">
									<h4 class="title-price">
										<a
											href="${pageContext.request.contextPath }/product/detail?id=${p.id}">${p.name }</a>

									</h4>
									<span class="gender text-uppercase">${p.category.name }</span>
									<span class="gender">${p.author }</span>

								</div>
								<div class="product-price">
									<span class="title-price"> ${p.price } VN??</span>
								</div> --%>
								<div class="overflow-h margin-bottom-5">
									<div class="pull-left">
										<a class="gender"
											style="max-width: 250px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; color: black"><b>${p.name }</b></a>
										<span class="gender text-uppercase">${p.author }</span> <span
											class="gender">${p.category.name}</span>


									</div>

								</div>
								<p class="title-price" style="text-align: right;"><fmt:formatNumber value="${p.price}" /> VN??</p>
							</div>
							<ul class="list-inline product-ratings" style="margin: 1px">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li class="like-icon"><a
									data-original-title="Add to wishlist" data-toggle="tooltip"
									data-placement="left" class="tooltips" href="#"><i
										class="fa fa-heart"></i></a></li>
							</ul>
						</div>
					</div>
				</c:forEach>


			</div>
			<!--=== End Illustration v2 ===-->
		</div>
		<!--=== End Product Content ===-->

		<!--=== Twitter-Block ===-->
		<div class="parallaxBg twitter-block margin-bottom-60">
			<div class="container">
				<div class="heading heading-v1 margin-bottom-20">
					<h2>C??c Tr??ch D???n</h2>
				</div>

				<div id="carousel-example-generic-v5" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li class="active rounded-x"
							data-target="#carousel-example-generic-v5" data-slide-to="0"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="1"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<p>S??ch m??? ra tr?????c m???t t??i nh???ng ch??n tr???i m???i.
							<p>
							<p>
								<a href="https://vi.wikipedia.org/wiki/Maksim_Gorky">M.Goocki</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>G???p ???????c m???t quy???n s??ch hay n??n mua li???n d?? ?????c ???????c hay
								kh??ng ?????c ???????c, v?? s???m mu???n g?? c??ng c???n ?????n n??.</p>
							<p>
								<a href="https://vi.wikipedia.org/wiki/Winston_Churchill">W.Churchill</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>S??ch l?? ngu???n c???a c???i qu?? b??u c???a th??? gi???i v?? l?? di s???n
								x???ng ????ng c???a c??c th??? h??? v?? c??c qu???c gia.</p>
							<p>
								<a href="https://vi.wikipedia.org/wiki/Henry_David_Thoreau">Henry
									David Thoreau</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
					</div>

					<div class="carousel-arrow">
						<a class="left carousel-control"
							href="#carousel-example-generic-v5" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic-v5" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Twitter-Block ===-->

		<div class="container">
			<!--=== Product Service ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="fa fa-truck"></i>
					</div>
					<div class="product-service-in">
						<h3>Mi???n ph?? giao h??ng</h3>
						<p>Mi???n ph?? giao h??ng cho h??a ????n t??? 200.000?? tr??? l??n</p>
						<a href="#">+Xem th??m</a>
					</div>
				</div>
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="icon-earphones-alt"></i>
					</div>
					<div class="product-service-in">
						<h3>Ch??m s??c kh??ch h??ng</h3>
						<p>D???ch v??? ch??m s??c kh??ch h??ng lu??n ho???t ?????ng 24/24</p>
						<a href="#">+Xem th??m</a>
					</div>
				</div>
				<div class="col-md-4 product-service">
					<div class="product-service-heading">
						<i class="icon-refresh"></i>
					</div>
					<div class="product-service-in">
						<h3>Mi???n ph?? ?????i tr???</h3>
						<p>Mi???n ph?? ?????i tr??? trong 30 ng??y n???u s???n ph???m l???i</p>
						<a href="#">+Xem th??m</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Product Service ===-->

			<!--=== Illustration v4 ===-->
			<div class="row illustration-v4 margin-bottom-40">


				<div class="col-md-4">

					<div class="heading heading-v1 margin-bottom-20">
						<h2>????nh gi?? cao nh???t</h2>
					</div>

					<c:forEach items="${productsBestApprociate}" var="ps">
						<div class="thumb-product">
							<img class="thumb-product-img"
								src="${pageContext.request.contextPath }/view/client/static/img/book-img/${ps.image}"
								alt="">
							<div class="thumb-product-in">
								<h4 style="max-width: 320px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
									<a href="${pageContext.request.contextPath}/product/detail?id=${ps.id}">${ps.name}</a>
								</h4>
								<span class="thumb-product-type">${ps.author}</span>
							</div>
							<ul class="list-inline overflow-h">
								<li class="thumb-product-price" style="margin-top: 5px"><fmt:formatNumber value="${ps.price}" /> VN??</li>
								<li class="thumb-product-purchase"><a href="#"><i
										class="fa fa-shopping-cart"></i></a> | <a href="#"><i
										class="fa fa-heart"></i></a></li>
							</ul>
						</div>
					</c:forEach>
				</div>





				<div class="col-md-4">
					<div class="heading heading-v1 margin-bottom-20">
						<h2>B??n ch???y nh???t</h2>
					</div>

					<c:forEach items="${productsBestSeller}" var="ps">
						<div class="thumb-product">
							<img class="thumb-product-img"
								src="${pageContext.request.contextPath }/view/client/static/img/book-img/${ps.image}"
								alt="">
							<div class="thumb-product-in">
								<h4 style="max-width: 320px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
									<a href="${pageContext.request.contextPath}/product/detail?id=${ps.id}"">${ps.name}</a>
								</h4>
								<span class="thumb-product-type">${ps.author}</span>
							</div>
							<ul class="list-inline overflow-h">
								<li class="thumb-product-price" style="margin-top: 5px"><fmt:formatNumber value="${ps.price}" /> VN??</li>
								<li class="thumb-product-purchase"><a href="#"><i
										class="fa fa-shopping-cart"></i></a> | <a href="#"><i
										class="fa fa-heart"></i></a></li>
							</ul>
						</div>
					</c:forEach>
				</div>





				<div class="col-md-4 padding">
					<div class="heading heading-v1 margin-bottom-20">
						<h2>??ang khuy???n m??i</h2>
					</div>

					<c:forEach items="${productsBestPromotion}" var="ps">
						<div class="thumb-product">
							<img class="thumb-product-img"
								src="${pageContext.request.contextPath }/view/client/static/img/book-img/${ps.image}"
								alt="">
							<div class="thumb-product-in">
								<h4 style="max-width: 320px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
									<a href="${pageContext.request.contextPath}/product/detail?id=${ps.id}"">${ps.name}</a>
								</h4>
								<span class="thumb-product-type">${ps.author}</span>
							</div>
							<ul class="list-inline overflow-h">
							<fmt:setLocale value="vi-VN"/>
								<li class="thumb-product-price "> <fmt:formatNumber value="${ps.price}" /> VN??</li>
								<li class="thumb-product-price line-through"><fmt:formatNumber value="${ps.price *1.5}" /> VN??</li>
								<li class="thumb-product-purchase"><a href="#"><i
										class="fa fa-shopping-cart"></i></a> | <a href="#"><i
										class="fa fa-heart"></i></a></li>
							</ul>
						</div>
					</c:forEach>


				</div>


			</div>
			<!--/end row-->
			<!--=== End Illustration v4 ===-->
		</div>
		<!--/end cotnainer-->

		<!--=== Collection Banner ===-->
		<div class="collection-banner">
			<div class="container">
				<div class="col-md-7 md-margin-bottom-50">
					<h2>H?????NG ???NG TH??NG ?????C S??CH</h2>
					<p>
						Tri ??n b???n ?????c<br> Gi???m ?????n 60% cho m???i ?????u s??ch
					</p>
					<br> <a href="#"
						class="btn-u btn-brd btn-brd-hover btn-u-light">Shop Now</a>
				</div>
				<div class="col-md-5">
					<div class="overflow-h">
						<span class="percent-numb">60</span>
						<div class="percent-off">
							<span class="discount-percent">%</span> <span
								class="discount-off">Gi???m</span>
						</div>
						<div class="new-offers shop-bg-green rounded-x">
							<p>Tri ??n</p>
							<span>b???n ?????c</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Collection Banner ===-->

		<!--=== Sponsors ===-->
		<div class="container content">
			<div class="heading heading-v1 margin-bottom-40">
				<h2>Nh?? t??i tr???</h2>
				<p>Xin ch??n th??nh c??m ??n c??c nh?? t??i tr???, c??c nh?? xu???t b???n ????
					c??ng h???p t??c v???i Mesach ????? ??em ?????n cho ?????c gi??? nh???ng quy???n s??ch m???i
					nh???t, hay nh???t v?? gi?? t???t nh???t</p>
			</div>

			<ul class="list-inline owl-slider-v2">
				<li class="item first-child"><img
					src="${url}/img/publisher/ipm.jpg" alt=""></li>
				<li class="item"><img src="${url}/img/publisher/nha-nam.png"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/dinh-ty.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/dong-a.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/kim-dong.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/nxb-tre.png"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/thaiha.png"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/alpha-book.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/california.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/fact-on-file.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/hachette.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/pearson.png"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/cambridge.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/penguin-random-house.png"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/elsevier.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/routledge.png"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/scholastic.jpg"
					alt=""></li>
				<li class="item"><img src="${url}/img/publisher/mit-press.jpg"
					alt=""></li>
			</ul>
			<!--/end owl-carousel-->
		</div>
		<!--=== End Sponsors ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							????ng k?? ????? nh???n <strong>tin t???c m???i nh???t</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Email c???a b???n..."> <span
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
		<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
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
	<script src="${url}/plugins/jquery.parallax.js"></script>
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/revolution-slider.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			App.initParallaxBg();
			OwlCarousel.initOwlCarousel();
			RevolutionSlider.initRSfullWidth();
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