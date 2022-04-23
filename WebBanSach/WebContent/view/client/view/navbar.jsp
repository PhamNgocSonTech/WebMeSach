<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <c:url value="/view/client/static" var="url"></c:url>
      
 <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath }">
                        <img style="height: 51px;" id="logo-header" src="${url}/img/Mesach.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <!-- Shopping Cart -->
                   <jsp:include page="/view/client/view/cart.jsp"></jsp:include>
                    <!-- End Shopping Cart -->

                    <!-- Nav Menu -->
                    <ul class="nav navbar-nav">
                        <!-- Pages -->
                        <li class="dropdown active">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                TRANG CHỦ
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath }">Trang Chủ</a></li>
                                <li><a href="${pageContext.request.contextPath }/product/list">Tìm kiếm</a></li>
                                <li><a href="${pageContext.request.contextPath }/member/cart">Giỏ hàng</a></li>
                                <li><a href="${pageContext.request.contextPath }/member/order">Đơn đặt hàng</a></li>
                            </ul>
                        </li>
                        <!-- End Pages -->

                   

                        <!-- Books -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                DANH MỤC SẢN PHẨM
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="mega-menu-content">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Văn học</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Trinh thám</a><span class="label label-danger-shop">Best Seller</span></li>
                                                        <li><a href="#">Tiểu thuyết</a></li>
                                                        <li><a href="#">Ngôn tình</a> 
                                                        <li><a href="#">Light Novel</a></li>
                                                        <li><a href="#">Du ký</a></li>
                                                    </ul>
                                                    <h3 class="mega-menu-heading">Tâm lí - kỹ năng</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Kỹ năng sống</a><span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Sách cho tuổi mới lớn</a></li>
                                                        <li><a href="#">Tâm lý</a></li>
                                                        <li><a href="#">Rèn luyện nhân cách</a></li>
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thiếu nhi</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Truyện thiếu nhi</a></li>
                                                        <li><a href="#">Kiến thức bách khoa</a><span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Tạp chí thiếu nhi</a></li>
                                                        <li><a href="#">Manga - Comic</a></li>
                                                    </ul>
                                                    <h3 class="mega-menu-heading">Tiểu sử - Hồi ký</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Câu chuyện cuộc đời</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Nghệ thuật - Giải trí</a></li>
                                                        <li><a href="#">Lịch sử</a></li>
                                                    </ul>

                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Nuôi dạy con</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Cẩm nang làm cha mẹ</a></li>
                                                        <li><a href="#">Phát triển kỹ năng - trí tuệ cho trẻ</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Phương pháp giáo dục trẻ</a></li>
                                                        <li><a href="#">Dinh dưỡng, sức khỏe cho trẻ</a></li>
                                                        <li><a href="#">Giáo dục tuổi teen</a></li>
                                                    </ul>
                                                </div>        

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Sách học ngoại ngữ</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Tiếng Anh</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Tiếng Nhật</a></li>
                                                        <li><a href="#">Tiếng Trung</a></li>
                                                        <li><a href="#">Tiếng Hàn</a></li>
                                                        <li><a href="#">Tiếng Pháp</a></li>
                                                    </ul>
                                                    <h3 class="mega-menu-heading">Giáo khoa - Tham khảo</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Sách tham khảo</a></li>
                                                        <li><a href="#">Sách giáo khoa</a></li>
                                                        <li><a href="#">Sách giáo viên</a></li>
                                                        <li><a href="#">Đại học</a></li>
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">

                                                    <h3 class="mega-menu-heading">Ngoại văn</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Dictionaries & Language</a> <span class="label label-danger-shop">New</span></li>
                                                        <li><a href="#">Business & Management</a></li>
                                                        <li><a href="#">Biography</a></li>
                                                    </ul>
                                                </div>

                                                <div class="col-md-2 col-sm-6">
                                                    <h3 class="mega-menu-heading">Thể loại khác</h3>
                                                    <ul class="list-unstyled style-list">
                                                        <li><a href="#">Địa lý & Tôn giáo</a></li>
                                                        <li><a href="#">Nữ công gia chánh</a></li>
                                                        <li><a href="#">Từ điển</a></li>
                                                        <li><a href="#">Văn hóa & Du lịch</a></li>
                                                        <li><a href="#">Phong thủy</a></li>
                                                        <li><a href="#">Âm nhạc & Mĩ thuật</a></li>
                                                    </ul>
                                                </div>
                                            </div><!--/end row-->
                                        </div><!--/end container-->
                                    </div><!--/end mega menu content-->  
                                </li>
                            </ul><!--/end dropdown-menu-->
                        </li>
                        <!-- End Books -->
                        <ul class="nav navbar-nav">
                        <!-- Pages -->
                        <li class="dropdown active">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                CHĂM SÓC KHÁCH HÀNG
                            </a>
                        </li>

                    </ul>
                    <!-- End Nav Menu -->                    
                </div>
            </div>    
        </div>            