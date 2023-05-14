<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/specialities.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:06:42 GMT -->
<head>
	<meta charset="UTF-8">
	<title>Chuyên Môn</title>

	<jsp:include page="/WEB-INF/views/user/core/mainStyle.jsp"></jsp:include>

    <!-- Fixing Internet Explorer-->
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="js/html5shiv.js"></script>
    <![endif]-->
    
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
                       <h2>Các chuyên môn</h2>
                    </div>
                    <div class="breadcrumb-menu float-right">
                        <ul class="clearfix">
                            <li><a href="index-2.html">Trang chủ</a></li>
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                            <li class="active">Chuyên môn</li>
                        </ul>    
                    </div>
                </div>
            </div>
        </div>
	</div>
</section>
<!--End breadcrumb area--> 

<!--Start services style1 area-->
<section class="services-style1-area spec-page">
    <div class="container">
        <div class="sec-title max-width text-center">
            <h3>Các chuyên môn</h3>
            <h1>Tại đây chúng tôi sẽ đưa ra các chuyên môn tại phòng khám.</h1>
            <p></p>
        </div>
        <div class="row">
            <!--Start single solution style1--> 
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                <div class="single-solution-style1 wow fadeInUp" data-wow-delay="300ms">
                    <div class="img-holder">
                        <img src="images/services/dich-vu-xoa-bop-bam-huyet-tai-nha.jpeg" alt="Awesome Image">
                        <div class="icon-holder">
                            <div class="inner-content">
                                <div class="box">
                                    <span></span>
                                </div>
                            </div>
                        </div>   
                    </div>
                    <div class="text-holder">
                        <h3>Xoa bóp bấm huyệt</h3>
                        <p>Xoa bóp bấm huyệt là kỹ thuật trị liệu bằng tay phổ biến trong Y Học Cổ Truyền. Phương pháp này đã được chứng minh mang lại nhiều lợi ích trong việc điều trị một số bệnh lý như cơ xương khớp, thần kinh,...</p>
                        <div class="readmore">
                            <a href="#"><span class="icon-plus"></span></a>
                            <div class="overlay-button">
                                <a href="https://vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/suc-khoe-tong-quat/xoa-bop-bam-huyet-la-lam-gi/">Đọc thêm</a>    
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <!--End single solution style1-->
            <!--Start single solution style1--> 
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                <div class="single-solution-style1 wow fadeInUp" data-wow-delay="600ms">
                    <div class="img-holder">
                        <img src="images/services/43110235_726252807728234_1033423939495264256_n.jpeg" alt="Awesome Image">
                        <div class="icon-holder">
                            <div class="inner-content">
                                <div class="box">
                                    <span></span>
                                </div>
                            </div>
                        </div>   
                    </div>
                    <div class="text-holder">
                        <h3>Tác động cột sống</h3>
                        <p>Tác động cột sống là phương pháp cho hiệu quả rất khả quan, giúp bệnh nhân hồi phục và lập lại cân bằng cho cơ thể.</p>
                        <div class="readmore">
                            <a href="#"><span class="flaticon-next"></span></a>
                            <div class="overlay-button">
                                <a href="https://vinmec.com/vi/co-xuong-khop/suc-khoe-thuong-thuc/tac-dong-cot-song-la-gi/">Đọc thêm</a>    
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <!--End single solution style1-->
            <!--Start single solution style1--> 
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                <div class="single-solution-style1 wow fadeInUp" data-wow-delay="900ms">
                    <div class="img-holder">
                        <img src="images/services/chi3-15532412194921191178915.jpeg" alt="Awesome Image">
                        <div class="icon-holder">
                            <div class="inner-content">
                                <div class="box">
                                    <span></span>
                                </div>
                            </div>
                        </div>   
                    </div>
                    <div class="text-holder">
                        <h3>Cấy chỉ châm cứu</h3>
                        <p>Cấy chỉ được đánh giá là phương pháp trị liệu có hiệu quả rất cao nhờ kết hợp giữa châm cứu truyền thống với tiến bộ khoa học kỹ thuật. Hiện nay phương pháp cấy chỉ được ứng dụng rộng rãi...</p>
                        <div class="readmore">
                            <a href="#"><span class="flaticon-next"></span></a>
                            <div class="overlay-button">
                                <a href="http://benhvienungbuounghean.vn/2021/05/cay-chi-la-gi-nhung-tac-dung-tuyet-voi-cua-cay-chi-mang-lai-trong-qua-trinh-dieu-tri-benh-tai-khoa-yhct-phcn-benh-vien-ung-buou-nghe-an/">Read More</a>    
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <!--End single solution style1-->
            
            <!--Start single solution style1--> 
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                <div class="single-solution-style1 wow fadeInUp" data-wow-delay="300ms">
                    <div class="img-holder">
                        <img src="images/services/153945phuc-hoi-chuc-nang.jpeg" alt="Awesome Image">
                        <div class="icon-holder">
                            <div class="inner-content">
                                <div class="box">
                                    <span></span>
                                </div>
                            </div>
                        </div>   
                    </div>
                    <div class="text-holder">
                        <h3>Phục hồi chức năng</h3>
                        <p>Phục hồi chức năng nhằm tạo điều kiện phục hồi sau khi có tình trạng mất chức năng. Tình trạng mất chức năng có thể do gãy xương, cắt cụt, đột qụy hoặc các bệnh lý thần kinh khác,...</p>
                        <div class="readmore">
                            <a href="#"><span class="icon-plus"></span></a>
                            <div class="overlay-button">
                                <a href="#">Đọc thêm</a>    
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <!--End single solution style1-->
            <!--Start single solution style1--> 
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                <div class="single-solution-style1 wow fadeInUp" data-wow-delay="600ms">
                    <div class="img-holder">
                        <img src="images/services/phong-kham-dong-y-uy-tin-o-ha-noi-1.jpeg" alt="Awesome Image">
                        <div class="icon-holder">
                            <div class="inner-content">
                                <div class="box">
                                    <span class></span>
                                </div>
                            </div>
                        </div>   
                    </div>
                    <div class="text-holder">
                        <h3>Bào Chế Thuốc Đông Y</h3>
                        <p>Theo Y Học Cổ Truyền, uống thuốc Đông Y không mang lại hiệu quả tức thời như thuốc Tây Y mà cần một khoảng thời gian nhất định. Tác dụng của thuốc thay đổi khác nhau phụ thuộc vào cơ địa và thể trạng của mỗi người,...</p>
                        <div class="readmore">
                            <a href="#"><span class="flaticon-next"></span></a>
                            <div class="overlay-button">
                                <a href="#">Đọc thêm</a>    
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <!--End single solution style1-->
        </div> 
    </div>
</section>
<!--End services style1 area-->

<!--Start Testimonial Sec style2-->
<section class="testimonial-sec style2">
    <div class="container inner-content">
        <div class="row">
            <div class="col-xl-12">
                <div class="sec-title max-width text-center">
                    <h3></h3>
                    <h1>Cơ sở vật chất của phòng khám</h1>
                    <p></p>
                    <a class="btn-one" href="#">Xem chi tiết</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="testimonial-carousel2 owl-carousel owl-theme">
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-style2 text-center">
                        <div class="img-holder">
                            <img src="images/brand/moss-clinic-phan-mem-quan-ly-phong-kham-dong-y-tot-nhat-hien-nay.jpeg" style="width:900px;height:550px;" alt="Awesome Image">
                        </div>
                        
                    </div>    
                    <!--End Single Testimonial Item-->
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-style2 text-center">
                        <div class="img-holder">
                            <img src="images/brand/Screen Shot 2023-05-09 at 9.07.39 PM.png" style="width:900px;height:550px;" alt="Awesome Image">
                        </div>
           
                    </div>    
                    <!--End Single Testimonial Item-->
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-style2 text-center">
                        <div class="img-holder">
                            <img src="images/brand/tu-van-thu-tuc-mo-phong-chan-tri-hoc-co-truyen-5268.jpeg" style="width:900px;height:550px;" alt="Awesome Image">
                        </div>
                    </div>    
                    <!--End Single Testimonial Item-->
                  
                </div> 
            </div>
        </div>  
    </div>    
</section>
<!--End Testimonial Sec style2-->  

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

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/specialities.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:06:53 GMT -->
</html>