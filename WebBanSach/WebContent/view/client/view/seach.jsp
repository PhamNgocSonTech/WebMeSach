<%@page import="com.book.service.impl.CategoryServiceImpl"%>
<%@page import="com.book.service.CategoryService"%>
<%@page import="com.book.model.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-3 filter-by-block md-margin-bottom-60">
	<h1>Lọc theo</h1>
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne"> Tên <i class="fa fa-angle-down"></i>
					</a>
				</h2>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<ul class="list-unstyled checkbox-list">




						<form action="${pageContext.request.contextPath }/product/seach"
							method="get">
							<input type="text" name="name" /> <input type="submit"
								value="Tìm kiếm"
								style="color: white; margin-top: 10px; background: #18BA9B; border: none; padding: 5px 10px" />
						</form>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--/end panel group-->

	<div class="panel-group" id="accordion-v2">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion-v2"
						href="#collapseTwo"> Thể loại <i class="fa fa-angle-down"></i>
					</a>
				</h2>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse in">
				<div class="panel-body">
					<ul class="list-unstyled checkbox-list">

						<%
						CategoryService categoryService = new CategoryServiceImpl();

						List<Category> categories = categoryService.getAll();
						request.setAttribute("categories", categories);
						%>

						<c:forEach items="${categories}" var="cate">
							<a
								href="${pageContext.request.contextPath }/product/category?cate_id=${cate.id}">${cate.name}</a> <br/>
						</c:forEach>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--/end panel group-->

	<!--/end panel group-->

	<!--/end panel group-->

	<!--/end panel group-->

	<!--/end panel group-->
	<button type="button"
		class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Làm
		mới</button>
</div>