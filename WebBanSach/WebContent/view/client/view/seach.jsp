<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
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
									
									
										<form action="${pageContext.request.contextPath }/product/seach" method="get">
											<input type="text" name="name" />
											<input type="submit" value="Tìm kiếm" style="color: white;margin-top: 10px; background: #18BA9B; border: none; padding: 5px 10px"/>
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
										href="#collapseTwo"> Thể loại <i
										class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<a href="${pageContext.request.contextPath }/product/category?cate_id=1" > Văn học</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=2" > Sách ngoại ngữ</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=3" > Thiếu nhi</a>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<!--/end panel group-->

					<div class="panel-group" id="accordion-v4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v4"
										href="#collapseFour"> Giá <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseFour" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="slider-snap"></div>
									<p class="slider-snap-text">
										<span class="slider-snap-value-lower"></span> <span
											class="slider-snap-value-upper"></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<!--/end panel group-->

					<!--/end panel group-->
					<button type="button"
						class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Làm mới</button>
				</div>