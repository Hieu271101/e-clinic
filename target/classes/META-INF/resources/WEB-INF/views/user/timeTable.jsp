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

<jsp:include page="/WEB-INF/views/user/core/corePlugins.jsp"></jsp:include>  

</body>

<!-- Mirrored from st.ourhtmldemo.com/new/Dento/timetable.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2021 02:08:58 GMT -->
</html>
