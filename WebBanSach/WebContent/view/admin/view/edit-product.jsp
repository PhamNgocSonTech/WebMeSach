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
						<h2>Chỉnh sửa sản phẩm</h2>
						<h5>Chỉnh sửa lại thông tin sản phẩm hiện tại</h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">Chỉnh sửa thông tin</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<c:url value="/admin/product/edit" var="edit"></c:url>
										<form role="form" action="${edit }" method="post"
											enctype="multipart/form-data">
											<input name="id" value="${product.id }" hidden="">
											<div class="form-group">
												<label>Tên sản phẩm:</label> <input class="form-control"
													value="${product.name }" name="name" />
											</div>
											<div class="form-group">
												<label>Tác giả:</label> <input class="form-control"
													value="${product.author }" name="author" />
											</div>
											<div class="form-group">
												<label>Giá tiền (VND)</label> <input class="form-control"
													value="${product.price }" type="number" name="price" />
											</div>
											<div class="form-group">
												<label>Kích thước sản phẩm:</label> <input
													class="form-control" value="${product.size }" name="size" />
											</div>
											<div class="form-group">
												<label>Mô tả sản phẩm </label> <br>
												<textarea rows="4" cols="50" name="des" id="editer">${product.des }</textarea>
											</div>

											<div class="form-group">
												<label>Thể loại</label>
												<div class="checkbox">
													<select name="cate">
														<c:forEach items="${categories}" var="c">
															<c:if test="${product.category.id eq c.id}">
																<option value="${product.category.id}"
																	selected="selected">${c.name}</option>
															</c:if>
															<option value="${c.id}">${c.name}</option>
														</c:forEach>
													</select>
												</div>

											</div>

											<div class="form-group">
												<label>Nhà xuất bản</label>
												<div class="checkbox">
													<select name="publisher">
														<c:forEach items="${publishers}" var="c">
															<c:if test="${product.publisher.publisher_id eq c.publisher_id}">
																<option value="${c.publisher_id}"
																	selected="selected">${c.publisher_name}</option>
															</c:if>
															<option value="${c.publisher_id}">${c.publisher_name}</option>
														</c:forEach>
													</select>
												</div>

											</div>

											<div class="form-group">
												<label>Hình ảnh:</label> <input type="file" name="image"
													value="${product.image}" />
											</div>

											<input name="old-img" value="${product.image}" hidden="">

											<div class="form-group">
												<label>Link review sản phẩm:</label> <input
													class="form-control"
													value="https://youtu.be/${product.embedCode}" name="review"
													type="url" />
											</div>
											<button type="submit" class="btn btn-default">Edit</button>
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