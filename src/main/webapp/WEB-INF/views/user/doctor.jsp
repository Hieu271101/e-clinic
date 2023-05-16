<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/doctors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:07:04 GMT -->
<head>
	<meta charset="UTF-8">
	<title>Bác Sĩ</title>

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

<!--Start breadcrumb area-->     
<section class="breadcrumb-area" style="background-image: url(${base }/user/images/resources/breadcrumb-bg.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="inner-content clearfix">
                    <div class="title float-left">
                       <h2>Gặp gỡ bác sĩ của chúng tôi</h2>
                    </div>
                    <div class="breadcrumb-menu float-right">
                        <ul class="clearfix">
                            <li><a href="index-2.html">Trang Chủ</a></li>
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                            <li class="active">Bác Sĩ</li>
                        </ul>    
                    </div>
                </div>
            </div>
        </div>
	</div>
</section>
<!--End breadcrumb area--> 

<!--Start Doctor area-->
<section class="doctor-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-4 col-lg-8">
                <div class="doctor-sidebar">
                    <!--Start Single Sidebar-->
                    <div class="single-sidebar">
                        <div class="doctor-tab-box tabs-box">
                            <ul class="tab-btns tab-buttons clearfix">
                                <li data-tab="#doctor" class="tab-btn left"><span>Tên Bác Sĩ</span></li>
                                <li data-tab="#specialization" class="tab-btn active-btn right"><span>Chuyên Ngành</span></li>
                            </ul>
                            <div class="tabs-content">
                                <div class="tab" id="doctor">
                                    <form name="doctor-form" action="#" method="post">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12">
                                                <div class="input-box">
                                                    <select class="selectmenu" >
                                                        <option selected="selected">Hoàng Huy Trường</option>
                                                        <option>Đỗ Thanh Huyền</option>                     
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="button-box">
                                                    <button class="btn-one" type="submit">Xác Nhận</button>    
                                                </div> 
                                            </div>
                                        </div>    
                                    </form>    
                                </div>
                                <div class="tab active-tab" id="specialization">
                                    <form name="doctor-form" action="#" method="post">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12">
                                                <div class="input-box">
                                                    <select class="selectmenu">
                                                        <option selected="selected">Xoa bóp bấm huyệt</option>
                                                        <option>Tác động cột sống</option>
                                                        <option>Cấy chỉ châm cứu</option>
                                                        <option>Phục hồi chức năng</option>
                                                        <option>Bào Chế Thuốc Đông Y</option>   
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="button-box">
                                                    <button class="btn-one" type="submit">Xác Nhận</button>    
                                                </div> 
                                            </div>
                                        </div>    
                                    </form>
                                </div>
                            </div>      
                        </div>   
                    </div>
                    <!--End Single Sidebar-->
                    <!--Start Single Sidebar-->
                    <div class="single-sidebar">
                        <div class="sidebar-appoinment">
                            <div class="title">
                                <h3>Đặt lịch hẹn</h3>
                            </div> 
                            <form class="appoinment-form">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-box">
                                            <input type="text" name="form_name" value="" placeholder="Họ và tên" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="input-box">
                                            <input type="email" name="form_email" value="" placeholder="Email" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="input-box">
                                            <input type="text" name="form_phone" value="" placeholder="Số điện thoại">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="input-box">
                                            <input type="text" name="time" placeholder="Thời gian">
                                            <div class="icon-box">
                                                <i class="fa fa-clock-o" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="input-box">
                                            <input type="text" name="date" placeholder="Ngày" id="datepicker">
                                            <div class="icon-box">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">   
                                        <div class="input-box">    
                                            <textarea name="form_message" placeholder="Lời nhắn..." required=""></textarea>
                                        </div> 
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button class="btn-one" type="submit">Đặt lịch ngay</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--End Single Sidebar-->
                </div>    
            </div>
            <div class="col-xl-8">
                <div class="doctor-content">
                    <!--Start Single doctor item-->
                    <div class="single-doctor-item wow fadeInUp" data-wow-delay="300ms">
                        <div class="row">
                            <div class="col-xl-5">
                                <div class="img-holder">
                                    <img src="${base }/user/images/doctor/342858349_220552690717522_7134791329658758132_n.jpeg" alt="Awesome Image">
                                    <div class="overlay">
                                        <div class="box">
                                            <div class="content">
                                                <a class="btn-one" href="#">Cuộc Hẹn</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-7">
                                <div class="text-holder">
                                    <span>Thông tin bác sĩ </span>
                                    <h3>Ths.Bs. Hoàng Huy Trường</h3>
                                    <h6>Trình độ học vấn</h6>
                                    <p> Tốt nghiệp đại học y được Quảng Tây- Trung Quốc </p>
                                      
                                    <ul>
                                        <li><span class="icon-phone"></span>+84 368540939</li>
                                        <li><span class="flaticon-e-mail-envelope"></span>bstruongdongy@gmail.com</li>
                                    </ul>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End Single doctor item-->
                    <!--Start Single doctor item-->
                    <div class="single-doctor-item wow fadeInUp" data-wow-delay="600ms">
                        <div class="row">
                            <div class="col-xl-5">
                                <div class="img-holder">
                                    <img src="" alt="Awesome Image">
                                    <div class="overlay">
                                        <div class="box">
                                            <div class="content">
                                                <a class="btn-one" href="#">Cuộc Hẹn</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-7">
                                <div class="text-holder">
                                    <span>Thông tin dược sĩ </span>
                                    <h3>Ds. Đỗ Thanh Huyền </h3> 
                                    <h6>Trình độ học vấn</h6>
                                    <p> Đại học dược sĩ</p>
                                    <ul>
                                        <li><span class="icon-phone"></span>+84 363624966 </li>
                                        <li><span class="flaticon-e-mail-envelope"></span>huyenthanh1030@gmail.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End Single doctor item-->                       
                </div>        
            </div>
        </div>
    </div>
</section>
<!--End Doctor area-->

<!--Start footer area-->  
<jsp:include page="/WEB-INF/views/user/core/footer.jsp"></jsp:include>      
<!--End footer area-->

<jsp:include page="/WEB-INF/views/user/core/corePlugins.jsp"></jsp:include>  


</body>

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/doctors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:07:28 GMT -->
</html>