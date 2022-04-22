<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Edit User</title>
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
						<h2>Xóa sản phẩm</h2>
						<h5>Bạn có chắc chắn muốn xóa sản phẩm này?</h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">Thông tin sản phẩm</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<c:url value="/admin/product/delete" var="delete"></c:url>
										
										<form role="form" action="${delete}" method="post"
											enctype="multipart/form-data">
											<input name="id" value="${product.id}" type="hidden">

											<div class="form-group">
												<label>Hình ảnh:</label> <img
													alt=""
													src="${pageContext.request.contextPath}/view/client/static/img/book-img/${product.image}">
											</div>

											<div class="form-group">
												<label>Tên sản phẩm:</label> <input class="form-control"
													value="${product.name }" readonly="readonly" />
											</div>
											<div class="form-group">
												<label>Tác giả:</label> <input class="form-control"
													value="${product.author }" 
													readonly="readonly" />
											</div>
											<div class="form-group">
												<label>Giá tiền (VND)</label> <input class="form-control"
													value="${product.price }" type="number"
													readonly="readonly" />
											</div>

											<div class="form-group">
												<label>Nhà xuất bản</label> <input class="form-control"
													value="${product.publisher.publisher_name}" type="text" 
													readonly="readonly" />
											</div>

											<button type="submit" class="btn btn-default">Xóa</button>
											<button type="reset" class="btn btn-primary">Hủy bỏ</button>
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
	<script type="text/javascript" language="javascript">
		CKEDITOR.replace('editer', {
			width : '700px',
			height : '300px'
		});
	</script>
</body>
</html>