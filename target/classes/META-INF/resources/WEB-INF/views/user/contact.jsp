<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:08:58 GMT -->
<head>
	<meta charset="UTF-8">
	<title>Liên Lạc</title>

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
            <a href="${base }"><img src="${base }/user/images/brand/zyro-image (1).png" style="width:150px;height:150px;" alt=""/></a>
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
<section class="breadcrumb-area" style="background-image: url(${base }/user/images/resources/breadcrumb-bg.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="inner-content clearfix">
                    <div class="title float-left">
                       <h2>Liên Lạc</h2>
                    </div>
                    <div class="breadcrumb-menu float-right">
                        <ul class="clearfix">
                            <li><a href="index-2.html">Trang Chủ</a></li>
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                            <li class="active">Liên lạc</li>
                        </ul>    
                    </div>
                </div>
            </div>
        </div>
	</div>
</section>
<!--End breadcrumb area--> 

<!--Start Contact info map area-->
<section class="contact-info-map-area">
    <div class="container">
        <div class="sec-title max-width text-center">
            <h1>Chúng tôi ở đây để giúp bạn, đừng ngần ngại.</h1>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="contact-info-map">
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="contact-info-left">
                                <div class="contact-title">
                                    <h2>Gửi tin nhắn của bạn cho chúng tôi</h2>
                                    <p>Đừng ngại, hãy gửi tin nhắn của bạn hoặc thông qua biểu mẫu, chuyên gia của chúng tôi sẽ giúp bạn càng sớm càng tốt.</p>
                                </div>
                                <div class="state-select-box2">
                                    <select class="selectmenu area_select">
                                        <option value="1">Vĩnh Ngọc-Đông Anh-Hà Nội </option>
                                    </select>
                                    <div class="state-content">
                                        <div class="state" id="value1">
                                            <ul>
                                                <li>
                                                    <div class="text">
                                                        <h5>Địa Chỉ</h5>
                                                        <p>Vĩnh Ngọc-Đông An-Hà Nội ,<br> Số nhà 24- xóm 2- thôn Ngọc Chi.</p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="text">
                                                        <h5>Liên Hệ</h5>
                                                        <p>Số điện thoại: 0368540939</p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="text">
                                                        <h5>Bác Sĩ</h5>
                                                        <p>Hoàng Huy Trường</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        
                                    </div>   
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>      
<!--End Contact info map area-->      

<!--Start contact form area-->
<section class="contact-form-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="contact-form">
                    <div class="contact-title">
                        <h2>Gửi tin nhắn của bạn cho chúng tôi</h2>
                        <p>Đừng ngại, hãy gửi tin nhắn hoặc thắc mắc của bạn qua biểu mẫu bên dưới, nhóm chuyên gia của chúng tôi sẽ giúp bạn càng sớm càng tốt.</p>
                    </div>
                    <form id="contact-form" name="contact_form" class="default-form" action="http://st.ourhtmldemo.com/new/Dento/inc/sendmail.php" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-box">   
                                    <input type="text" name="form_name" value="" placeholder="Tên Của Bạn*" required="">
                                </div>
                                <div class="input-box"> 
                                    <input type="email" name="form_email" value="" placeholder="Email của bạn*" required="">
                                </div>
                                <div class="input-box"> 
                                    <input type="text" name="form_phone" value="" placeholder="Số điện thoại">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-box">    
                                    <textarea name="form_message" placeholder="Tin nhắn của bạn" required=""></textarea>
                                </div>
                                <div class="button-box">
                                    <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                    <button class="btn-one" type="submit" data-loading-text="Please wait...">Gửi tin nhắn của bạn</button>    
                                </div>     
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            
        </div>
    </div>
</section>
<!--End contact form area-->

<!--Start footer area-->  
<jsp:include page="/WEB-INF/views/user/core/footer.jsp"></jsp:include>     
<!--End footer area-->

<jsp:include page="/WEB-INF/views/user/core/corePlugins.jsp"></jsp:include>   

</body>

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:09:00 GMT -->
</html>
