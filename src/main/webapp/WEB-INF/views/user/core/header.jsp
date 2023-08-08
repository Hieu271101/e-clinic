<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<!-- Start Top Bar area -->  
<section class="top-bar-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-6">
                <div class="top-left">
                    <ul>
                    <p><span class="icon-clock"></span>Thứ 2 - thứ 6: 08.00 - 19.00; Thứ 7: 08.00 - 12.00; Chủ nhật: Đóng cửa.</p>
                    </ul>
                </div>    
            </div>   
            <div class="col-xl-5 col-lg-6">
                <div class="top-right">  
                    <ul class="sociallinks-style-one">
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                    </ul>
                </div>    
            </div>   
        </div>
    </div>
</section>
<!-- End Top Bar area -->  
 
<!--Start header style1 area-->
<header class="header-style1-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12">
                <div class="inner-content clearfix">
                    <div class="header-style1-logo float-left">
                        <a href="/">
                            <img src="${base }/user/images/brand/zyro-image (1).png" alt="Awesome Logo" style="width:150px;height:150px;">
                        </a>
                    </div>   
                    <div class="header-contact-info float-left">
                        <ul>
                            <li>
                                <div class="single-item">
                                    <div class="icon">
                                        <span class="icon-support"></span>    
                                    </div>
                                    <div class="text">
                                        <p>0368540939</p> 
                                        <span>Ths.Bs: Hoàng Huy Trường</span>   
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-item">
                                    <div class="icon">
                                        <span class="icon-gps"></span>    
                                    </div>
                                    <div class="text">
                                        <p>Vĩnh Ngọc-Đông Anh-Hà Nội</p> 
                                        <span>Số nhà 24- xóm 2- thôn Ngọc Chi</span>   
                                    </div>
                                </div>
                            </li>
                        </ul>  
                    </div>
                    <div class="header-style1-button float-right">
                        <a href="${base }/login">Đăng nhập</a>
                    </div>
                     <div style="margin-right: 10px" class="header-style1-button float-right">
                        <a href="/appoinment"><span class="icon-date"></span>Tạo lịch hẹn</a>
                    </div> 
                     
                </div>
            </div>
        </div>
    </div>        
</header>  
<!--End header style1 area-->
    
<!--Start mainmenu area-->
<section class="mainmenu-area stricky">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="inner-content clearfix">
                    <nav class="main-menu style1 clearfix">
                        <div class="navbar-header clearfix">   	
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">
                                <li><a href="${base }/">Trang Chủ</a>
                                </li>
                                <li><a href="${base }/specialize">Chuyên Môn</a>
                                <li><a href="${base }/doctor">Bác Sĩ</a></li>
                                   
                                </li>
                                
                                <li><a href="${base }/appoinment">Cuộc Hẹn</a></li>
                                <li><a href="${base }/timeTable">Thời Gian Biểu</a></li>
                                
                                </li>
                                <li><a href="${base }/contact">Liên Lạc</a></li>
                                
                                   
                                </li>
                               
                            </ul>
                        </div>
                    </nav>
                    
                    <div class="mainmenu-right">
                        <div class="search-box-style1">
                            <form class="search-form" method="post" action="http://st.ourhtmldemo.com/new/Dento/index.html">
							    <input type="search" name="search" placeholder="Search..." required>
							    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
						    </form>        
                        </div>
                        <div class="toggler-button">
                            <div class="nav-toggler hidden-bar-opener">
                                <div class="inner">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>    
                        </div>
                    </div> 
                      
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>