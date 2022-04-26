<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Thêm người dùng</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/view/admin/view/nav-bar.jsp"></jsp:include>
		<!-- /. NAV TOP  -->
		<jsp:include page="/view/admin/view/slide-bar.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Thêm người dùng</h2>
						<h5>Bạn có thể thêm người dùng tại đây</h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">Thêm người dùng</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<h3>Người dùng:</h3>
										
										<form role="form" action="add"  method="post" enctype="multipart/form-data">
										
										<div class="form-group">
												<label>Email:</label> <input class="form-control"
													placeholder="Nhập email" name="email" />
											</div>
											
											<div class="form-group">
												<label>Tên người dùng:</label> <input class="form-control"
													placeholder="Nhập tên người dùng" name="username" />
											</div>
											<div class="form-group">
												<label>Mật khẩu</label> <input class="form-control"
													placeholder="Nhập mật khẩu" type="password"
													name="password" />
											</div>
											
												<div class="form-group">
												<label>Tên</label> <input class="form-control"
													placeholder="Nhập tên" type="text"
													name="name" />
											</div>
											
												<div class="form-group">
												<label>Địa chỉ</label> <input class="form-control"
													placeholder="Nhập địa chỉ" type="text"
													name="address" />
											</div>
											
												<div class="form-group">
												<label>Số điện thoại</label> <input class="form-control"
													placeholder="Nhập số điện thoại" type="text"
													name="phone" />
											</div>
											
											
											
											<div class="form-group">
												<label>Vai trò</label>
												<div class="checkbox">
													<label> <input type="radio" value="1" name="role"/>Admin
													</label>
													<br>
													<label> <input type="radio" value="2" name="role" />khách hàng
													</label>
												</div>
												
											</div>
											<div class="form-group">
												<label>Hình ảnh</label> <input type="file" name="avatar" />
											</div>
											<button type="submit" class="btn btn-default">Thêm</button>
											<button type="reset" class="btn btn-primary">Đặt lại</button>
										</form>


									</div>
								</div>
							</div>
						</div>
						<!-- End Form Elements -->
					</div>
				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12"></div>
				</div>
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>

</body>
</html>