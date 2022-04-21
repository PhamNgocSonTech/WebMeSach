<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
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
						<h2>--- THÊM MỚI SẢN PHẨM ---</h2>
						<h5>Thêm vào những sản phẩm bạn có thể bán</h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>Thông tin sản phẩm</b>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">

										<form role="form" action="add" method="post"
											enctype="multipart/form-data" accept-charset="UTF-8">
											<div class="form-group">
												<label>Tên sản phẩm:</label> <input class="form-control"
													placeholder="Nhập tên sản phẩm" name="name" />
											</div>
											<div class="form-group">
												<label>Tác giả:</label> <input class="form-control"
													placeholder="Nhập tên tác giả" name="author" />
											</div>

											<div class="form-group">
												<label>Giá tiền (VNĐ)</label> <input class="form-control"
													placeholder="Gía tiền (VND)" type="number" name="price" />
											</div>
											
																						<div class="form-group">
												<label>Kích thước sản phẩm</label> <input class="form-control"
													placeholder="Dài x Rộng" type="text" name="size" />
											</div>

											<div class="form-group">
												<label>Mô tả sản phẩm </label> <br>
												<textarea rows="4" cols="50" name="des" id="editer"></textarea>

											</div>
											<div class="form-group">
												<label>Thể loại</label>
												<div class="checkbox">
													<select name="category">
													<option selected="selected">-- Chọn thể loại --</option>
														<c:forEach items="${categories}" var="c">
															<option value="${c.id}">${c.name}</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label>Nhà xuất bản</label>
												<div class="checkbox">
													<select name="publisher">
													<option selected="selected">-- Chọn nhà xuất bản --</option>
														<c:forEach items="${publishers}" var="p">
															<option value="${p.publisher_id}">${p.publisher_name}</option>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="form-group">
												<label>Hình ảnh</label> <input type="file" name="image" />
											</div>

											<div class="form-group">
												<label>Link review sản phẩm:</label> <input class="form-control"
													placeholder="URL Youtube Video" name="review" type="url"/>
											</div>
											<button type="submit" class="btn btn-default">Add</button>
											<button type="reset" class="btn btn-primary">Reset</button>
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