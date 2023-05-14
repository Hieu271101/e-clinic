<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/timetable.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:08:58 GMT -->
<head>
	<meta charset="UTF-8">
	<title>Thời Gian Biểu</title>

	<jsp:include page="/WEB-INF/views/user/core/mainStyle.jsp"></jsp:include>
    
</head>

<body>
<div class="boxed_wrapper">

<jsp:include page="/WEB-INF/views/user/core/header.jsp"></jsp:include>      
<!--End mainmenu area--> 
  
<!-- Hidden Navigation Bar -->
<section class="hidden-bar right-align">
    <div class="hidden-bar-closer">
        <button><span class="flaticon-remove"></span></button>
    </div>
    <div class="hidden-bar-wrapper">
        <div class="logo">
            <a href="index-2.html"><img src="images/brand/zyro-image (1).png" style="width:150px;height:150px;" alt=""/></a>
        </div>
        <div class="contact-info-box">
            <h3>Thông Tin Liên Lạc</h3>
            <ul>
                <li>
                    <h5>Địa Chỉ</h5>
                    <p>Vĩnh Ngọc-Đông An-Hà Nội ,<br> Số nhà 24- xóm 2- thôn Ngọc Chi.</p>
                </li>
                <li>
                    <h5>Liên Hệ</h5>
                    <p>Số điện thoại: 0368540939</p>
                </li>
                <li>
                    <h5>Bác Sĩ</h5>
                    <p>Hoàng Huy Trường</p>
                </li>
            </ul>
        </div>       
    </div>
</section>
<!-- End Hidden Bar -->       

<!--Start breadcrumb area-->     
<section class="breadcrumb-area" style="background-image: url(images/resources/breadcrumb-bg.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="inner-content clearfix">
                    <div class="title float-left">
                       <h2>Thời gian biểu</h2>
                    </div>
                    <div class="breadcrumb-menu float-right">
                        <ul class="clearfix">
                            <li><a href="index-2.html">Trang chủ</a></li>
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                            <li class="active">Thời gian biểu</li>
                        </ul>    
                    </div>
                </div>
            </div>
        </div>
	</div>
</section>
<!--End breadcrumb area-->  

<!--Start visit timetable area -->
<div class="visit-timetable-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="sec-title max-width text-center">
                    <h1>Thời gian cho chuyến thăm khám tiếp theo của bạn!</h1>
                    <p>Tại đây bạn có thể có được thời gian mà bác sĩ trống và bạn có thể có được thời gian thăm khám hoàn hảo đến phòng khám.</p>
                </div>
                <div class="find-doctor-specialities">
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="input-box">
                                <select class="selectmenu">
                                    <option selected="selected">Các chuyên môn</option>
                                    <option>Xoa bóp bấm huyệt</option>
                                    <option>Tác động cột sống</option>
                                    <option>Cấy chỉ châm cứu</option>
                                    <option>Phục hồi chức năng</option>
                                    <option>Bào Chế Thuốc Đông Y</option>
                                  
                                </select>
                            </div>    
                        </div>
                        <div class="col-xl-6">
                            <div class="input-box">
                                <select class="selectmenu">
                                    <option selected="selected">Bác sĩ</option>
                                    <option>Hoàng Huy Trường</option>
                                    <option>Đỗ Thanh Huyền</option>
                                   
                                </select>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table visit_timetable">
                        <thead>
                            <tr>
                                <th>
                                    <div class="single">
                                        Thời gian    
                                    </div>
                                </th>
                                <th>
                                    <div class="single">
                                        Thứ 2    
                                    </div>
                                </th>
                                <th>
                                    <div class="single">
                                        Thứ 3    
                                    </div>
                                </th>
                                <th>
                                    <div class="single">
                                        Thứ 4    
                                    </div>
                                </th>
                                <th>
                                    <div class="single">
                                        Thứ 5   
                                    </div>
                                </th>
                                <th>
                                    <div class="single">
                                        Thứ 6   
                                    </div>
                                </th>
                                <th>
                                    <div class="single">
                                        Thứ 7   
                                    </div>
                                </th>
                                <th>
                                    <div class="single">
                                        Chủ nhật    
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="vertical-middle">
                                    <div class="single time-box">
                                        <h5>9.00am</h5>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6> </h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1">
                                        <div class="blank"></div>
                                    </div>    
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>
                                    </div>
                                </td>
                            </tr>
                            
                            
                            <tr>
                                <td class="vertical-middle">
                                    <div class="single time-box">
                                        <h5>10.00am</h5>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>  
                                    </div>    
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>  
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="vertical-middle">
                                    <div class="single time-box">
                                        <h5>11.00am</h5>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>  
                                    </div>    
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>  
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="vertical-middle">
                                    <div class="single time-box">
                                        <h5>12.00am</h5>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>  
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>
                                    </div>    
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6> </h6>  
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="vertical-middle">
                                    <div class="single time-box">
                                        <h5>1.00pm</h5>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>    
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1 gray_bg">
                                        <div class="blank"></div>
                                    </div>    
                                </td>
                                <td>
                                    <div class="single box-style2">
                                        <p></p>
                                        <span></span>
                                        <h6></h6>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style1">
                                        <p></p>
                                        <span></span>
                                        <h6 class="green"></h6>      
                                    </div>
                                </td>
                                <td>
                                    <div class="single box-style2 gray_bg">
                                        <div class="blank"></div>
                                    </div>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End visit timetable area -->

<!--Start footer area-->  
<jsp:include page="/WEB-INF/views/user/core/footer.jsp"></jsp:include>    
<!--End footer area-->

<!--Start footer bottom area-->
<section class="footer-bottom-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="inner clearfix">
                    <div class="footer-social-links float-left">
                        <ul class="sociallinks-style-one">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="copyright-text text-center">
                        <p></p>
                    </div>
                    <ul class="footer-menu float-right">
                        <li><a href="#">Điều khoản & Điều kiện</a></li>
                        <li><a href="#">Chính sách bảo mật</a></li>
                    </ul>
                </div>   
            </div>
        </div>
    </div>    
</section>
<!--End footer bottom area-->   

</div>

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target thm-bg-clr" data-target="html"><span class="fa fa-angle-up"></span></div>

<!-- Color Palate / Color Switcher -->
<div class="color-palate">
    <div class="color-trigger">
        <i class="fa fa-gear"></i>
    </div>
    <div class="color-palate-head">
        <h6>Choose Your Color</h6>
    </div>
    <div class="various-color clearfix">
        <div class="colors-list">
            <span class="palate default-color active" data-theme-file="css/color-themes/default-theme.css"></span>
            <span class="palate teal-color" data-theme-file="css/color-themes/teal-theme.css"></span>
            <span class="palate navy-color" data-theme-file="css/color-themes/navy-theme.css"></span>
            <span class="palate yellow-color" data-theme-file="css/color-themes/yellow-theme.css"></span>
            <span class="palate blue-color" data-theme-file="css/color-themes/blue-theme.css"></span>
            <span class="palate purple-color" data-theme-file="css/color-themes/purple-theme.css"></span>
            <span class="palate olive-color" data-theme-file="css/color-themes/olive-theme.css"></span>
            <span class="palate red-color" data-theme-file="css/color-themes/red-theme.css"></span>
        </div>
    </div>
    <div class="palate-foo">
        <span>You can easily change and switch the colors.</span>
    </div>
</div>
<!-- /.End Of Color Palate -->

<!-- main jQuery -->
<script src="js/jquery.js"></script>
<!-- Wow Script -->
<script src="js/wow.js"></script>
<!-- bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- bx slider -->
<script src="js/jquery.bxslider.min.js"></script>
<!-- count to -->
<script src="js/jquery.countTo.js"></script>
<script src="js/appear.js"></script>
<!-- owl carousel -->
<script src="js/owl.js"></script>
<!-- validate -->
<script src="js/validation.js"></script>
<!-- mixit up -->
<script src="js/jquery.mixitup.min.js"></script>
<!-- isotope script-->
<script src="js/isotope.js"></script>
<!-- Easing -->
<script src="js/jquery.easing.min.js"></script>
<!-- Gmap helper -->
<script src="http://maps.google.com/maps/api/js?key=AIzaSyB2uu6KHbLc_y7fyAVA4dpqSVM4w9ZnnUw"></script>
<!--Gmap script-->
<script src="js/gmaps.js"></script>
<script src="js/map-helper.js"></script>
<!-- jQuery ui js -->
<script src="assets/jquery-ui-1.11.4/jquery-ui.js"></script>
<!-- Language Switche  -->
<script src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
<!-- jQuery timepicker js -->
<script src="assets/timepicker/timePicker.js"></script>
<!-- Bootstrap select picker js -->
<script src="assets/bootstrap-sl-1.12.1/bootstrap-select.js"></script> 
<!-- html5lightbox js -->                              
<script src="assets/html5lightbox/html5lightbox.js"></script>
<!-- html5lightbox js -->                              
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<!--Color Switcher-->
<script src="js/color-settings.js"></script>

<!--Revolution Slider-->
<script src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script src="js/main-slider-script.js"></script>

<!-- thm custom script -->
<script src="js/custom.js"></script>



</body>

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/timetable.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:08:58 GMT -->
</html>
