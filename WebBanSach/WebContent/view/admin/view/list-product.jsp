<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Quản lý sản phẩm</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->

<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="${url}/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
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
						<h2>Tất cả sản phẩm</h2>
						<h5>Bạn có thể quản lý tất cả sản phẩm của bạn ở đây</h5>

					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-heading">Bảng thông tin sản phẩm</div>
							<a href="${pageContext.request.contextPath }/admin/product/add"
								class="btn btn-primary btn-block text-uppercase mb-3"
								style="width: 170px; margin: 10px 10px 0 10px;">Thêm sản
								phẩm mới</a>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>ID</th>
												<th>Hình Ảnh</th>
												<th>Tên</th>
												<th>Tác giả</th>
												<th>Giá tiền</th>
												<th>Thể Loại</th>
												<th>Nhà xuất bản</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${proList }" var="pro">
												<tr class="odd gradeX">
													<td>${pro.id }</td>
													<c:url
														value="/view/client/static/img/book-img/${pro.image}"
														var="imgUrl"></c:url>
													<td><img height="200" width="200" src="${imgUrl}" /></td>

													<td>${pro.name }</td>
													<td>${pro.author }</td>
													<td>${pro.price }</td>
													<td>${pro.category.name }</td>
													<td>${pro.publisher.publisher_name }</td>
													<td><a
														href="<c:url value='/product/detail?id=${pro.id }'/>"
														class="center">Chi tiết</a> | <a
														href="<c:url value='/admin/product/edit?id=${pro.id }'/>"
														class="center">Chỉnh sửa</a> | <a
														href="<c:url value='/admin/product/delete?id=${pro.id }'/>"
														class="center">Xóa</a></td>

												</tr>
											</c:forEach>


										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>

			</div>

		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="${url}/js/dataTables/jquery.dataTables.js"></script>
	<script src="${url}/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>

</body>
</html>