<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/apppointment.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:08:58 GMT -->
<head>
	<meta charset="UTF-8">
	<title>Cuộc Hẹn</title>

	<!-- responsive meta -->
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
            <a href="${base }"><img src="images/brand/zyro-image (1).png" style="width:150px;height:150px;" alt=""/></a>
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
<section class="breadcrumb-area" style="background-image: url(${base}/user/images/resources/breadcrumb-bg.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="inner-content clearfix">
                    <div class="title float-left">
                       <h2>Đặt Lịch Hẹn</h2>
                    </div>
                    <div class="breadcrumb-menu float-right">
                        <ul class="clearfix">
                            <li><a href="index-2.html">Trang Chủ</a></li>
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                            <li class="active">Đặt Lịch Hẹn</li>
                        </ul>    
                    </div>
                </div>
            </div>
        </div>
	</div>
</section>
<!--End breadcrumb area-->  

<!--Start Appointment area -->
<div class="appointment-area2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="sec-title max-width text-center">
                    <h1>Đặt Lịch Hẹn</h1>
                    <p>Tại đây bạn có thể có đặt lịch hẹn và bạn có thể có được thời gian thăm khám phù hợp khi tới với phòng khám.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-8">
                <div class="appointment-form-left">
                    <form name="appointment-form" action="#" method="post">
                        <div class="row">
                            <div class="col-xl-12 col-lg-12">
                                <div class="single-box">
                                    <div class="title">
                                        <h5>Thời gian cho</h5>
                                    </div>
                                    <div class="input-box">
                                        <select class="selectmenu">
                                            <option selected="selected">Hoàng Huy Trường</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-12 col-lg-12">
                                <div class="single-box">
                                    <div class="title">
                                        <h5>Thời Gian Trống</h5>
                                    </div>
                                    <div class="input-box">
                                        <div class="available-time">
                                            <ul>
                                                <li>9.00am</li>
                                                <li class="active">11.30am</li>
                                                <li>12.00pm</li>
                                                <li>3.00pm</li>
                                                <li>4.00pm</li>
                                                <li>5.00pm</li>
                                                <li>5.30pm</li>
                                                <li>6.00pm</li>
                                                <li>7.00pm</li>
                                                <li>7.30pm</li>
                                            </ul>    
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-xl-12 col-lg-12">
                                <div class="single-box">
                                    <div class="title">
                                        <h5>Thông Tin Cá </h5>
                                          <h5>Nhân</h5>
                                    </div>
                                    <div class="input-box">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <input type="text" name="p_name" value="" placeholder="Tên Bệnh Nhân*" required="">    
                                            </div>
                                            <div class="col-xl-6">
                                                <select class="selectmenu">
                                                    <option selected="selected">Dịch vụ</option>
                                                    <option>Thăm khám</option>
                                                    <option>Xoa bóp bấm huyệt</option>
                                                    <option>Tác động cột sống</option>
                                                     <option>Cấy chỉ châm cứu</option>
                                                    <option>Phục hồi chức năng</option>
                                                    <option>Bào Chế Thuốc Đông Y</option>
                                                </select>    
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <input type="text" name="phn_num" value="" placeholder="Số điện thoại*" required="">    
                                            </div>
                                            <div class="col-xl-6">
                                                <input type="text" name="age" value="" placeholder="Độ tuổi">      
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <textarea name="form_description..." placeholder="Sự miêu tả..."></textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="button-box">
                                                    <button class="btn-one" type="submit">Xác Nhận</button>   
                                                </div>
                                            </div>
                                        </div>    
                
                                    </div>
                                </div>
                            </div>
                        </div>
                            
                    </form>   
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-9">
                <div class="appointment-right">
                    <form name="appointment-right" action="#" method="post">
                        <div class="input-box">
                            <input type="text" name="Date" placeholder="Ngày" id="datepicker">
                            <div class="icon-box">
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="confirm-booking">
                            <h3> Xác nhận đặt chỗ của bạn</h3>
                            <ul>
                                <li><span>Tên Bệnh Nhân</span><b>:</b> Nguyễn Văn A</li>
                                <li><span>Độ Tuổi</span><b>:</b> 35 Tuổi</li>
                                <li><span>Dịch Vụ</span><b>:</b> Thăm Khám</li>
                                <li><span>Ngày giờ</span><b>:</b> 22/02/2023. 11.30am</li>
                                <li><span>Giá</span><b>:</b> 0 VND</li>
                            </ul>    
                        </div>
                        <div class="button-box">
                            <button class="btn-one" type="submit">Xác Nhận</button>   
                            <button class="btn-one" type="submit">Huỷ</button>   
                        </div>    
                    </form>   
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Appointment area -->

<!--Start footer area-->  
<jsp:include page="/WEB-INF/views/user/core/footer.jsp"></jsp:include>   
<!--End footer area-->


<jsp:include page="/WEB-INF/views/user/core/corePlugins.jsp"></jsp:include>   

</body>

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/apppointment.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:08:58 GMT -->
</html>
