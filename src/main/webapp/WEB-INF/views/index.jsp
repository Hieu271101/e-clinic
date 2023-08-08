<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- taglib JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- taglib SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:01:40 GMT -->
<head>
	<meta charset="UTF-8">
	<title>Trang Chủ</title>

	<jsp:include page="/WEB-INF/views/user/core/mainStyle.jsp"></jsp:include>
    
</head>

<body>
<div class="boxed_wrapper">


<jsp:include page="/WEB-INF/views/user/core/header.jsp"></jsp:include>   
    
  
<!-- Hidden Navigation Bar -->
<section class="hidden-bar right-align">
    <div class="hidden-bar-closer">
        <button><span class="flaticon-remove"></span></button>
    </div>
    <div class="hidden-bar-wrapper">
        <div class="logo">
            <a href="index-2.html"><img src="${base }/user/images/brand/zyro-image (1).png" style="width:150px;height:150px;" alt=""/></a>
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
    
<!--Main Slider-->
<section class="main-slider">
    <div class="rev_slider_wrapper fullwidthbanner-container"  id="rev_slider_one_wrapper" data-source="gallery">
        <div class="rev_slider fullwidthabanner" id="rev_slider_one" data-version="5.4.1">
            <ul>
                <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-index="rs-1689" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="images/slides/v1-1.jpg" data-title="Slide Title" data-transition="parallaxvertical">

                    <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="${base }/user/"> 

                    <div class="tp-caption" 
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['700','700','650','360']"
                    data-whitespace="normal"
                    data-hoffset="['15','15','15','15']"
                    data-voffset="['-110','-100','-100','-105']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                    style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content left-slide">
                            <div class="big-title">
                                <br>Phòng khám hiện đại<br/> yên tĩnh<br>
                            </div>    
                        </div>
                    </div>
                    <div class="tp-caption" 
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-whitespace="normal"
                    data-width="['700','700','650','400']"
                    data-hoffset="['15','15','15','15']"
                    data-voffset="['65','55','30','15']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                        style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content left-slide">
                            <div class="text">Đội ngũ bác sĩ được đào tạo bài bản, có trình độ và kinh nghiệm.</div>    
                        </div>
                    </div>
                    <div class="tp-caption" 
                        data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]"
                        data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on"
                        data-type="text"
                        data-height="none"
                        data-width="['700','700','650','400']"
                        data-whitespace="normal"
                        data-hoffset="['15','15','15','15']"
                        data-voffset="['140','130','110','105']"
                        data-x="['left','left','left','left']"
                        data-y="['middle','middle','middle','middle']"
                        data-textalign="['top','top','top','top']"
                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                        style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content left-slide">
                            <div class="btn-box">
                                <a class="btn-one" href="specialities.html">Các chuyên môn</a>
                            </div>    
                        </div>
                    </div>
                </li>
                
                <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-index="rs-1687" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="images/slides/v1-2.jpg" data-title="Slide Title" data-transition="parallaxvertical">
                
                    <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="">
                    
                    <div class="tp-caption" 
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['900','900','800','560']"
                    data-whitespace="normal"
                    data-hoffset="['15','15','15','15']"
                    data-voffset="['-90','-100','-90','-100']"
                    data-x="['center','center','center','center']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                    style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content middle-slide text-center">
                            <div class="big-title">
                                Sức khoẻ luôn là hàng đầu<br> Luôn phục vụ hết mình.
                            </div>    
                        </div>
                    </div>
                    <div class="tp-caption" 
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-whitespace="normal"
                    data-width="['900','900','800','560']"
                    data-hoffset="['15','15','15','15']"
                    data-voffset="['30','10','10','0']"
                    data-x="['center','center','center','center']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                    style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content middle-slide text-center">
                            <div class="text">Bác sĩ chuyên nghiệp, có bằng cấp đầy đủ.</div> 
                        </div>
                    </div>
                    <div class="tp-caption" 
                        data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]"
                        data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on"
                        data-type="text"
                        data-height="none"
                        data-width="['900','900','800','560']"
                        data-whitespace="normal"
                        data-hoffset="['15','15','15','15']"
                        data-voffset="['120','100','105','100']"
                        data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']"
                        data-textalign="['top','top','top','top']"
                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                        style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content middle-slide text-center">
                            <div class="btn-box">
                                <a class="btn-one" href="doctors.html">Tìm hiểu thêm</a>
                            </div>    
                        </div>
                    </div>       
                </li>
                
                
                
            </ul>
        </div>
    </div>
</section>
<!--End Main Slider-->


<!--Start works area-->
<section class="works-area">
    <div class="container wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
        <div class="sec-title-box text-center">
           
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="works-content">
                    <div class="works-tab-box">
                        <div class="tabmenu-box text-center">
                            <ul class="tab-btns tab-buttons">
                                <li class="p-tab-btn active-btn" data-tab="#p-tab-1"><span>Tác động cột sống</span></li>
                            </ul>
                        </div>
                        <div class="tab-content-box">
                           
                            <div class="single-tab-content active-tab" id="p-tab-1">
                                <div class="tab-content-carousel owl-carousel owl-theme">
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="${base }/user/images/services/Screen Shot 2023-05-10 at 3.18.39 PM.png" style="width:800px;height:650px;" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Trước</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="${base }/user/images/services/Screen Shot 2023-05-10 at 3.18.30 PM.png"style="width:800px;height:650px;" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">Sau</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                   
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--End works area-->


<!--Start Footer Contact Info Area-->
<section class="footer-contact-info-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6">
                <div class="single-footer-contact-box left-icon wow fadeInDown" data-wow-delay="100ms">
                    <div class="icon-holder">
                        <span class="icon-gps"></span>
                    </div>
                    <div class="text-holder">
                        <h3>Địa chỉ phòng khám</h3>
                        <p>Số nhà 24- xóm 2- thôn Ngọc Chi - Vĩnh Ngọc-Đông Anh-Hà Nội</p>
                        <a class="btn-two" href="#">Tìm địa chỉ trên map</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="single-footer-contact-box right-box wow fadeInUp" data-wow-delay="100ms">
                    <div class="icon-holder">
                        <span class="icon-calendar"></span>
                    </div>
                    <div class="text-holder">
                        <h3>Lịch hẹn</h3>
                        <p>Thực hiện cuộc hẹn của bạn thông qua trực tuyến bây giờ.</p>
                        <a class="btn-two" href="#">Đặt lịch hẹn</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> 
<!--End Footer Contact Info Area--> 
  
<!--Start footer area-->  
<jsp:include page="/WEB-INF/views/user/core/footer.jsp"></jsp:include>      
<!--End footer area-->

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
<script src="${base }/user/js/jquery.js"></script>
<!-- Wow Script -->
<script src="${base }/user/js/wow.js"></script>
<!-- bootstrap -->
<script src="${base }/user/js/bootstrap.min.js"></script>
<!-- bx slider -->
<script src="${base }/user/js/jquery.bxslider.min.js"></script>
<!-- count to -->
<script src="${base }/user/js/jquery.countTo.js"></script>
<script src="${base }/user/js/appear.js"></script>
<!-- owl carousel -->
<script src="${base }/user/js/owl.js"></script>
<!-- validate -->
<script src="${base }/user/js/validation.js"></script>
<!-- mixit up -->
<script src="${base }/user/js/jquery.mixitup.min.js"></script>
<!-- isotope script-->
<script src="${base }/user/js/isotope.js"></script>
<!-- Easing -->
<script src="${base }/user/js/jquery.easing.min.js"></script>
<!-- Gmap helper -->
<script src="http://maps.google.com/maps/api/js?key=AIzaSyB2uu6KHbLc_y7fyAVA4dpqSVM4w9ZnnUw"></script>
<!--Gmap script-->
<script src="${base }/user/js/gmaps.js"></script>
<script src="${base }/user/js/map-helper.js"></script>
<!-- jQuery ui js -->
<script src="${base }/user/assets/jquery-ui-1.11.4/jquery-ui.js"></script>
<!-- Language Switche  -->
<script src="${base }/user/assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
<!-- jQuery timepicker js -->
<script src="${base }/user/assets/timepicker/timePicker.js"></script>
<!-- Bootstrap select picker js -->
<script src="${base }/user/assets/bootstrap-sl-1.12.1/bootstrap-select.js"></script> 
<!-- html5lightbox js -->                              
<script src="${base }/user/assets/html5lightbox/html5lightbox.js"></script>
<!-- html5lightbox js -->                              
<script src="${base }/user/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!--Color Switcher-->
<script src="${base }/user/js/color-settings.js"></script>

<!--Revolution Slider-->
<script src="${base }/user/plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="${base }/user/plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="${base }/user/plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script src="${base }/user/js/main-slider-script.js"></script>

<!-- thm custom script -->
<script src="${base }/user/js/custom.js"></script>



</body>

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:04:28 GMT -->
</html>