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
	<title>Home</title>

	<!-- responsive meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- For IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
	<!-- master stylesheet -->
	<link rel="stylesheet" href="${base }/user/css/style.css">
	<!-- Responsive stylesheet -->
	<link rel="stylesheet" href="${base }/user/css/responsive.css">
    <!--Color Switcher Mockup-->
    <link rel="stylesheet" href="${base }/user/css/color-switcher-design.css">
    <!--Color Themes-->
    <link rel="stylesheet" href="${base }/user/css/color-themes/default-theme.css" id="theme-color-file">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
    <link rel="" type="image/png" href="images/favicon/favicon-32x32.png" sizes="32x32">
    <link rel="" type="image/png" href="images/favicon/favicon-16x16.png" sizes="16x16">

    <!-- Fixing Internet Explorer-->
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="js/html5shiv.js"></script>
    <![endif]-->
    
</head>

<body>
<div class="boxed_wrapper">

<!-- <div class="preloader"></div>  -->

<!-- Start Top Bar area -->  
<section class="top-bar-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-6">
                <div class="top-left">
                    <ul>
                        <li><a href="#">Locations</a></li>
                        <li><a href="#">Special Offers</a></li>
                        <li><a href="#">Teeth Cleaning Tips</a></li>
                    </ul>
                </div>    
            </div>   
            <div class="col-xl-5 col-lg-6">
                <div class="top-right">
                    <p><span class="icon-clock"></span>Mon - Sat: 09.00 to 18.00, Sunday: Closed.</p>
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
                        
                    </div>   
                    <div class="header-contact-info float-left">
                        <ul>
                            <li>
                                <div class="single-item">
                                    <div class="icon">
                                        <span class="icon-support"></span>    
                                    </div>
                                    <div class="text">
                                        <p>+1 555-7890-123</p> 
                                        <span>support@example.com</span>   
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single-item">
                                    <div class="icon">
                                        <span class="icon-gps"></span>    
                                    </div>
                                    <div class="text">
                                        <p>86 Brattle Street</p> 
                                        <span>Cambridge, MA 02138</span>   
                                    </div>
                                </div>
                            </li>
                        </ul>  
                    </div>
                     <div class="header-style1-button float-right">
                        <a href="${base }/login"><span class="icon-user"></span>Log in</a>
                    </div>
                    <div class="header-style1-button float-right">
                        <a href="#"><span class="icon-date"></span>Make Appointment</a>
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
                                <li class="dropdown current"><a href="index-2.html">Home</a>
                                    <ul>
                                        <li><a href="index-2.html">Home Page 01</a></li>
                                        <li><a href="index-3.html">Home Page 02</a></li>
                                    </ul>  
                                </li>
                                <li><a href="about.html">About Us</a></li>
                                <li class="dropdown"><a href="specialities.html">Specialities</a>
                                    <ul>
                                        <li><a href="spec-dental-implants.html">Dental Implants</a></li>
                                        <li><a href="spec-cosmetic-dentistry.html">Cosmetic Dentistry</a></li>
                                        <li><a href="spec-laser-dentistry.html">Laser Dentistry</a></li>
                                        <li><a href="spec-orthodontics.html">Orthodontics</a></li>
                                        <li><a href="spec-endodontics.html">Endodontics</a></li>
                                        <li><a href="spec-periodontics.html">Periodontics</a></li>
                                    </ul>
                                </li>
                                <li><a href="doctors.html">Doctors</a></li>
                                <li class="dropdown"><a href="blog.html">Blog</a>
                                    <ul>
                                        <li><a href="blog.html">Blog Default</a></li>
                                        <li><a href="blog-large.html">Blog Large Image</a></li>
                                        <li><a href="blog-single.html">Blog Single Post</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">More</a>
                                    <ul>
                                        <li><a href="faq.html">FAQ’s</a></li>
                                        <li><a href="pricing.html">Pricing Plans</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                        <li><a href="timetable.html">Timetable</a></li>
                                        <li><a href="apppointment.html">Apppointment</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
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
<!--End mainmenu area--> 
  
<!-- Hidden Navigation Bar -->
<section class="hidden-bar right-align">
    <div class="hidden-bar-closer">
        <button><span class="flaticon-remove"></span></button>
    </div>
    <div class="hidden-bar-wrapper">
        <div class="logo">
            <a href="index-2.html"><img src="images/resources/logo-3.png" alt=""/></a>
        </div>
        <div class="contact-info-box">
            <h3>Contact Info</h3>
            <ul>
                <li>
                    <h5>Address</h5>
                    <p>Romanian  9520 Faires Farm Road,<br> Carlsbad, NC 28213.</p>
                </li>
                <li>
                    <h5>Phone</h5>
                    <p>Phone 1: +1 555-7890-123</p>
                </li>
                <li>
                    <h5>Email</h5>
                    <p>supportyou@example.com</p>
                </li>
            </ul>
        </div>       
        <div class="newsletter-form-box">
            <h3>Newsletter Subscribe</h3>
            <span>Get healthy tips & latest updates in inbox.</span>
            <form action="#">
                <div class="row">
                    <div class="col-xl-12">
                        <input type="email" name="email" placeholder="Email Address..."> 
                        <button type="submit"><span class="flaticon-arrow"></span></button>    
                    </div>
                </div>
            </form>
        </div>
        <div class="offer-box text-center">
            <div class="big-title">50% <span>Offer</span></div>
            <h3>5 Years Warranty</h3>
            <a class="btn-one" href="#">Pricing Plans</a>    
        </div>
        <div class="copy-right-text">
            <p>© Dento 2018, All Rights Reserved.</p>
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

                    <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="images/slides/v1-1.jpg"> 

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
                               <br>Modern dentistry<br/> in a calm &<br> relaxed feeling.
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
                            <div class="text">Maintains a highly trained, qualified and experienced Dentists.</div>    
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
                                <a class="btn-one" href="#">Oue Specialities</a>
                            </div>    
                        </div>
                    </div>
                </li>
                
                <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-index="rs-1687" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="images/slides/v1-2.jpg" data-title="Slide Title" data-transition="parallaxvertical">
                
                    <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="images/slides/v1-2.jpg">
                    
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
                                An attractive smile makes a<br> lasting impression!
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
                            <div class="text">Over 200 Dentists join us in giving <span>you the best of  modern</span><br> dentalcare, stay with healthy smile.</div> 
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
                                <a class="btn-one" href="#">Learn More</a>
                            </div>    
                        </div>
                    </div>       
                </li>
                
                <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-index="rs-1688" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="images/slides/v1-3.jpg" data-title="Slide Title" data-transition="parallaxvertical">
                <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="images/slides/v1-3.jpg"> 

                    <div class="tp-caption" 
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['600','600','650','400']"
                    data-whitespace="normal"
                    data-hoffset="['15','15','15','15']"
                    data-voffset="['-75','-75','-80','-90']"
                    data-x="['right','right','right','right']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                        style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content">
                            <div class="big-title">
                                The healthy smile<br> through science<br> and artistry. 
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
                    data-width="['600','600','650','400']"
                    data-hoffset="['15','15','15','15']"
                    data-voffset="['65','50','30','15']"
                    data-x="['right','right','right','right']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                        style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content">
                            <div class="text">Maintains a highly trained, qualified and experienced Dentists.</div>    
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
                        data-width="['600','600','650','400']"
                        data-whitespace="normal"
                        data-hoffset="['15','15','15','15']"
                        data-voffset="['140','120','110','105']"
                        data-x="['right','right','right','right']"
                        data-y="['middle','middle','middle','middle']"
                        data-textalign="['top','top','top','top']"
                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                        style="z-index: 7; white-space: nowrap;">
                        <div class="slide-content">
                            <div class="btn-box">
                                <a class="btn-one" href="#">Meet Our Doctors</a>
                            </div>    
                        </div>
                    </div>
                </li>
                
            </ul>
        </div>
    </div>
</section>
<!--End Main Slider-->

<!--Start About Area-->
<section class="about-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-6">
                <div class="about-logo-box">
                    <div class="sec-title">
                        <h3>About Us</h3>
                        <h1>Mission and Story About<br> Our Dento</h1>
                    </div>
                    <ul class="fix">
                        <li class="wow fadeInDown" data-wow-delay="300ms">
                            <img src="images/resources/certificate-1.png" alt="Image">
                        </li>
                        <li class="wow fadeInUp" data-wow-delay="600ms">
                            <img src="images/resources/certificate-2.png" alt="Image">
                        </li>
                        <li class="wow fadeInUp" data-wow-delay="900ms">
                            <img src="images/resources/certificate-3.png" alt="Image">
                        </li>      
                    </ul>
                </div>    
            </div>
            <div class="col-xl-6">
                <div class="about-text-holder">
                    <p>Dento was started in the year 1995 as a small private dental clinic in Binghamton, NY, USA. Looking for affordable dental care?</p>
                    <p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, pain  resultant pleasure praising teachings of the great explorer...</p>
                    <div class="author-box fix">
                        <div class="img-box">
                            <img src="images/resources/ceo.png" alt="Awesome Image">
                        </div>
                        <div class="text-box">
                            <h3>Dr. Jerome Sinclair</h3>
                            <span>CEO & Founder</span>
                        </div>
                        <div class="signatire-box">
                            <img src="images/resources/signature.png" alt="Signature">
                        </div>
                    </div>
                    <div class="read-more">
                        <a class="btn-two" href="#"><span class="flaticon-next"></span>More About Us</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--End About Area-->

<!--Start Highlights area-->
<section class="highlights-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 wow fadeInUp" data-wow-delay="600ms">
                <!--Start single box-->
                <div class="single-box float-left text-center">
                    <div class="icon-holder">
                        <span class="icon-support-1"></span>    
                    </div>
                    <h3>E-Consultation</h3> 
                    <span class="border-box"></span>
                    <p>To take  trivial example, which undertakes laborious.</p> 
                    <a href="#">Start From Here</a>  
                </div>
                <!--End single box-->
                <!--Start single box-->
                <div class="single-middle-box float-left text-center">
                    <div class="icon-holder">
                        <span class="icon-support-1"></span>    
                    </div>
                    <h3>E-Consultation</h3>
                    <form name="visit-form" action="#" method="post">
                        <div class="row mar-ninus10">
                            <div class="col-xl-4 pd10">
                                <div class="input-box">   
                                    <input type="text" name="form_name" value="" placeholder="Name" required="">
                                </div>
                            </div>
                            <div class="col-xl-4 pd10">
                                <div class="input-box">   
                                    <input type="text" name="form_phone" value="" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-xl-4 pd10">
                                <div class="input-box">
                                    <select class="selectmenu">
                                        <option selected="selected">Department</option>
                                        <option>Dental Implants</option>
                                        <option>Cosmetic Dentistry</option>
                                        <option>Laser Dentistry</option>
                                        <option>Orthodontics</option>
                                        <option>Endodontics</option>
                                        <option>Periodontics</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row mar-ninus10">
                            <div class="col-xl-4 pd10">
                                <div class="input-box">
                                    <input type="text" name="time" placeholder="Time">
                                    <div class="icon-box">
                                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 pd10">
                                <div class="input-box">
                                    <input type="text" name="date" placeholder="Date" id="datepicker">
                                    <div class="icon-box">
                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 pd10">
                                <div class="button-box">
                                    <button class="btn-one" type="submit">Submit Info</button>   
                                </div>
                            </div>
                        </div>
                    </form>     
                </div>
                <!--End single box-->
                <!--Start single box-->
                <div class="single-box float-right text-center">
                    <div class="icon-holder">
                        <span class="icon-support-1"></span>    
                    </div>
                    <h3>Find a Doctor</h3> 
                    <span class="border-box"></span>
                    <p>To take  trivial example, which undertakes laborious.</p> 
                    <a href="#">Meet Our Team</a>  
                </div>
                <!--End single box-->      
            </div>
        </div>
    </div>
</section>
<!--End Highlights area-->

<!--Start services style1 area-->
<section class="services-style1-area sec-pd1">
    <div class="container">
        <div class="sec-title max-width text-center">
            <h3>Specialities</h3>
            <h1>Dental Care Services</h1>
            <p>Your teeth play an important part in your daily life. It not only helps you to chew and eat your food, but frames your face. Any missing tooth can have a major impact on your quality of life. </p>
        </div>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="services-carousel owl-carousel owl-theme">
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/1.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-teeth-1"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Dental Implants</h3>
                            <p>Denouncing pleasure & praising pain was born and wewill give you a complete account of the system.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/2.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-teeth-2"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Cosmetic Dentistry</h3>
                            <p>Know how pursue pleasure rationally encounter consequences that extremely anyone loves pursues.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/3.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-dentist"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Laser Dentistry</h3>
                            <p>To take a trivial example, which us ever undertakes laborious physical exercise, to obtain some advantage.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->
                    
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/1.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-teeth-1"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Dental Implants</h3>
                            <p>Denouncing pleasure & praising pain was born and wewill give you a complete account of the system.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/2.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-teeth-2"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Cosmetic Dentistry</h3>
                            <p>Know how pursue pleasure rationally encounter consequences that extremely anyone loves pursues.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/3.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-dentist"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Laser Dentistry</h3>
                            <p>To take a trivial example, which us ever undertakes laborious physical exercise, to obtain some advantage.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1--> 
                    
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/1.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-teeth-1"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Dental Implants</h3>
                            <p>Denouncing pleasure & praising pain was born and wewill give you a complete account of the system.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/2.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-teeth-2"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Cosmetic Dentistry</h3>
                            <p>Know how pursue pleasure rationally encounter consequences that extremely anyone loves pursues.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->
                    <!--Start single solution style1--> 
                    <div class="single-solution-style1">
                        <div class="img-holder">
                            <img src="images/services/3.jpg" alt="Awesome Image">
                            <div class="icon-holder">
                                <div class="inner-content">
                                    <div class="box">
                                        <span class="icon-dentist"></span>
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <div class="text-holder">
                            <h3>Laser Dentistry</h3>
                            <p>To take a trivial example, which us ever undertakes laborious physical exercise, to obtain some advantage.</p>
                            <div class="readmore">
                                <a href="#"><span class="flaticon-next"></span></a>
                                <div class="overlay-button">
                                    <a href="#">Read More</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single solution style1-->      
                </div>
            </div>
        </div> 
        
    </div>
</section>
<!--End services style1 area-->

<!--Start team area v2-->
<section class="team-area-v2">
    <div class="container">
        <div class="sec-title">
            <h3>Professional Dentists</h3>
            <h1>Highly Qualified Team</h1>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="single-team-slider">
                    <ul class="slider-content clearfix bxslider float-left">
                        <li>
                            <div class="single-team-slide clearfix">
                                <div class="row">
                                    <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
                                        <div class="top">
                                            <h2>Dr. Daryl Cornelius</h2>
                                            <h3>Implantologist</h3>
                                        </div>
                                        <div class="text">
                                            <p>Dr. Daryl Cornelius is a renowned dental surgeon and a certified dental implantologist. He is the director of Doc.DMD dental, USA. As an implantologist, Dr. Daryl Cornelius has got tremendous experience of dental implants for over more than 19 years.</p>
                                        </div>
                                        <div class="pgrs-bar-wrapper">
                                            <div class="inner-box">
                                                <ul class="pgrs-bar">
                                                    <li>
                                                        <h5>Implantology</h5>
                                                        <div class="box">
                                                            <div class="inner wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0s" data-wow-offset="0" style="width: 75%;">
                                                                <span>75%</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div> 
                                        <div class="button">
                                            <a href="#">Make Appointment</a>
                                        </div> 
                                    </div>
                                    <div class="col-xl-5 col-lg-7 col-md-10 col-sm-12">
                                        <div class="img-holder">
                                            <img src="images/team/team-1.png" alt="Awesome Image">
                                            <ul class="team-social-links">
                                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>    
                                    </div>
                                </div>  
                            </div>
                        </li>
                        <li>
                            <div class="single-team-slide clearfix">
                                <div class="row">
                                    <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
                                        <div class="top">
                                            <h2>Dr. Robert B. Moreau</h2>
                                            <h3>Prosthodontist</h3>
                                        </div>
                                        <div class="text">
                                            <p>Dr. Robert B. Moreau is a renowned dental surgeon and a certified dental implantologist. He is the director of Doc.DMD dental, USA. As an implantologist, Dr. Daryl Cornelius has got tremendous experience of dental implants for over more than 19 years.</p>
                                        </div>
                                        <div class="pgrs-bar-wrapper">
                                            <div class="inner-box">
                                                <ul class="pgrs-bar">
                                                    <li>
                                                        <h5>Implantology</h5>
                                                        <div class="box">
                                                            <div class="inner wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0s" data-wow-offset="0" style="width: 75%;">
                                                                <span>75%</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div> 
                                        <div class="button">
                                            <a href="#">Make Appointment</a>
                                        </div> 
                                    </div>
                                    <div class="col-xl-5 col-lg-7 col-md-10 col-sm-12">
                                        <div class="img-holder">
                                            <img src="images/team/team-2.png" alt="Awesome Image">
                                            <ul class="team-social-links">
                                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>    
                                    </div>
                                </div>   
                              
                            </div>
                        </li>
                    </ul>
                    <div class="slider-pager float-right">
                        <ul class="thumb-box style2">
                            <li>
                                <a class="active" data-slide-index="0" href="#">
                                    <div class="img-holder">
                                        <img src="images/team/team-thumb-1.jpg" alt="Awesome Image">    
                                    </div>
                                    <div class="text-holder">
                                        <h6>Dr. Daryl Cornelius</h6>
                                        <span>Implantologist</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a data-slide-index="1" href="#">
                                    <div class="img-holder">
                                        <img src="images/team/team-thumb-2.jpg" alt="Awesome Image">    
                                    </div>
                                    <div class="text-holder">
                                        <h6>Dr. Robert B. Moreau</h6>
                                        <span>Prosthodontist</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="slider-pager arrow-button">
                        <div class="center">
                            <ul class="nav-link list-inline">
                                <li id="slider-prev"></li>
                                <li id="slider-next"></li>
                            </ul>  
                        </div>
                    </div>    
                </div>
            </div>
        </div>
    </div>
</section>
<!--End team area v2-->

<!--Start works area-->
<section class="works-area">
    <div class="container wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
        <div class="sec-title-box text-center">
            <h3>We promised to take care our patients…<br> and we delivered.</h3>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="works-content">
                    <div class="works-tab-box">
                        <div class="tabmenu-box text-center">
                            <ul class="tab-btns tab-buttons">
                                <li class="p-tab-btn active-btn" data-tab="#p-tab-1"><span>Implants</span></li>
                                <li class="p-tab-btn" data-tab="#p-tab-2"><span>Thereaphy</span></li>
                                <li class="p-tab-btn" data-tab="#p-tab-3"><span>surgery</span></li>
                                <li class="p-tab-btn" data-tab="#p-tab-4"><span>Braces</span></li>
                                <li class="p-tab-btn" data-tab="#p-tab-5"><span>Cleaning</span></li>
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
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                </div>
                            </div>
                            
                            <div class="single-tab-content" id="p-tab-2">
                                <div class="tab-content-carousel owl-carousel owl-theme">
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                </div>
                            </div>
                            
                            <div class="single-tab-content" id="p-tab-3">
                                <div class="tab-content-carousel owl-carousel owl-theme">
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                </div>
                            </div>
                            
                            <div class="single-tab-content" id="p-tab-4">
                                <div class="tab-content-carousel owl-carousel owl-theme">
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                </div>
                            </div>
                            
                            <div class="single-tab-content" id="p-tab-5">
                                <div class="tab-content-carousel owl-carousel owl-theme">
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Single Item-->
                                    <!--Start Single Item-->
                                    <div class="single-item">
                                        <div class="row mar0">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-before-1.jpg" alt="Awesome Image">
                                                    <div class="before">
                                                        <a href="#">Before</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 pd0">
                                                <div class="img-holder">
                                                    <img src="images/resources/teeth-after-1.jpg" alt="Awesome Image">
                                                    <div class="after">
                                                        <a href="#">After</a>
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

<!--Start Testimonial area-->
<section class="testimonial-area">
    <div class="container inner-content">
        <div class="row">
            <div class="col-xl-12">
                <div class="sec-title float-left">
                    <h3>Feedback</h3>
                    <h1>What Our Customers Say?</h1>
                </div> 
                <div class="button float-right">
                    <a class="btn-one" href="#">Read More</a>
                </div>   
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="testimonial-carousel owl-carousel owl-theme">
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-item text-center">
                        <div class="text-holder">
                            <p>It was an experience of lifetime with you guys….it is definitely the best dental clinic I have ever visited.</p>
                            <div class="img-holder">
                                <img src="images/testimonial/1.png" alt="Awesome Image">
                            </div>
                        </div>
                        <div class="name">
                            <h3>Erick Frederick</h3>
                            <span>Denver</span>
                        </div>    
                    </div>    
                    <!--End Single Testimonial Item-->
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-item text-center">
                        <div class="text-holder">
                            <p>Now I’ve got my tooth back, I can eat anything I like again.  I would recommend dento centre to everyone.</p>
                            <div class="img-holder">
                                <img src="images/testimonial/2.png" alt="Awesome Image">
                            </div>
                        </div>
                        <div class="name">
                            <h3>Evelynne Celie</h3>
                            <span>Houston</span>
                        </div>    
                    </div>    
                    <!--End Single Testimonial Item-->
                    
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-item text-center">
                        <div class="text-holder">
                            <p>It was an experience of lifetime with you guys….it is definitely the best dental clinic I have ever visited.</p>
                            <div class="img-holder">
                                <img src="images/testimonial/1.png" alt="Awesome Image">
                            </div>
                        </div>
                        <div class="name">
                            <h3>Erick Frederick</h3>
                            <span>Denver</span>
                        </div>    
                    </div>    
                    <!--End Single Testimonial Item-->
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-item text-center">
                        <div class="text-holder">
                            <p>Now I’ve got my tooth back, I can eat anything I like again.  I would recommend dento centre to everyone.</p>
                            <div class="img-holder">
                                <img src="images/testimonial/2.png" alt="Awesome Image">
                            </div>
                        </div>
                        <div class="name">
                            <h3>Evelynne Celie</h3>
                            <span>Houston</span>
                        </div>    
                    </div>    
                    <!--End Single Testimonial Item-->
                    
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-item text-center">
                        <div class="text-holder">
                            <p>It was an experience of lifetime with you guys….it is definitely the best dental clinic I have ever visited.</p>
                            <div class="img-holder">
                                <img src="images/testimonial/1.png" alt="Awesome Image">
                            </div>
                        </div>
                        <div class="name">
                            <h3>Erick Frederick</h3>
                            <span>Denver</span>
                        </div>    
                    </div>    
                    <!--End Single Testimonial Item-->
                    <!--Start Single Testimonial Item-->
                    <div class="single-testimonial-item text-center">
                        <div class="text-holder">
                            <p>Now I’ve got my tooth back, I can eat anything I like again.  I would recommend dento centre to everyone.</p>
                            <div class="img-holder">
                                <img src="images/testimonial/2.png" alt="Awesome Image">
                            </div>
                        </div>
                        <div class="name">
                            <h3>Evelynne Celie</h3>
                            <span>Houston</span>
                        </div>    
                    </div>    
                    <!--End Single Testimonial Item-->   
                </div> 
            </div>
        </div>  
    </div>    
</section>
<!--End Testimonial area-->

<!--Start latest blog area-->
<section class="latest-blog-area sec-pd1">
    <div class="container inner-content">
        <div class="sec-title max-width text-center">
            <h3>News & Tips</h3>
            <h1>Latest From Our Blog</h1>
            <p>Your teeth play an important part in your daily life. It not only helps you to chew and eat your food, but frames your face. Any missing tooth can have a major impact on your quality of life.</p>
        </div>
        <div class="row">
            <!--Start single blog post-->
            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                <div class="single-blog-post">
                    <div class="img-holder">
                        <img src="images/blog/lat-blog-1.jpg" alt="Awesome Image">
                        <div class="categorie-button">
                            <a class="btn-one" href="#">Healthy Teeth</a>    
                        </div>
                    </div>
                    <div class="text-holder">
                        <div class="meta-box">
                            <div class="author-thumb">
                                <img src="images/blog/author-1.png" alt="Image">
                            </div>
                            <ul class="meta-info">
                                <li><a href="#">By Megan Clarks</a></li>
                                <li><a href="#">Nov 14, 2018</a></li>
                            </ul>    
                        </div>
                        <h3 class="blog-title"><a href="blog-single.html">A guide for dentists and patients</a></h3> 
                        <div class="text-box">
                            <p>No one rejects, dislikes our avoids pleasures itself, because it is all pleasure, but because those who do not know.</p>
                        </div>
                        <div class="readmore-button">
                            <a class="btn-two" href="#"><span class="flaticon-next"></span>Continue REading</a>
                        </div>  
                    </div>
                </div>
            </div>
            <!--End single blog post-->
            <!--Start single blog post-->
            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                <div class="single-blog-post">
                    <div class="img-holder">
                        <img src="images/blog/lat-blog-2.jpg" alt="Awesome Image">
                        <div class="categorie-button">
                            <a class="btn-one" href="#">Technology</a>    
                        </div>
                    </div>
                    <div class="text-holder">
                        <div class="meta-box">
                            <div class="author-thumb">
                                <img src="images/blog/author-2.png" alt="Image">
                            </div>
                            <ul class="meta-info">
                                <li><a href="#">By Megan Clarks</a></li>
                                <li><a href="#">Nov 14, 2018</a></li>
                            </ul>    
                        </div>
                        <h3 class="blog-title"><a href="blog-single.html">Should i go for a smile design?</a></h3> 
                        <div class="text-box">
                            <p>Nor again is there anyone who love pursues or desires to obtain pain of itself, bepain, but occasionally circumstances.</p>
                        </div>
                        <div class="readmore-button">
                            <a class="btn-two" href="#"><span class="flaticon-next"></span>Continue REading</a>
                        </div>  
                    </div>
                </div>
            </div>
            <!--End single blog post-->
            <!--Start single blog post-->
            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                <div class="single-blog-post">
                    <div class="img-holder">
                        <img src="images/blog/lat-blog-3.jpg" alt="Awesome Image">
                        <div class="categorie-button">
                            <a class="btn-one" href="#">Dental Care</a>    
                        </div>
                    </div>
                    <div class="text-holder">
                        <div class="meta-box">
                            <div class="author-thumb">
                                <img src="images/blog/author-3.png" alt="Image">
                            </div>
                            <ul class="meta-info">
                                <li><a href="#">By Megan Clarks</a></li>
                                <li><a href="#">Nov 14, 2018</a></li>
                            </ul>    
                        </div>
                        <h3 class="blog-title"><a href="blog-single.html">What you need to know teeth?</a></h3> 
                        <div class="text-box">
                            <p>It not only helps you to chew and eat your food frames your faceany missing tooth can major impact your quality of life.</p>
                        </div>
                        <div class="readmore-button">
                            <a class="btn-two" href="#"><span class="flaticon-next"></span>Continue REading</a>
                        </div>  
                    </div>
                </div>
            </div>
            <!--End single blog post-->
        </div>
    </div>
</section>
<!--End latest blog area--> 

<!--Start newsletter area-->
<section class="newsletter-area">
    <div class="container">
        <div class="newsletter-title text-center">
            <h3>Newsletter Subscription</h3>
            <span>Subscribe us and get latest news, updates and offers in your inbox.</span>
        </div>
        <form class="newsletter-form" action="#">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-12">
                    <input type="text" name="fname" placeholder="First Name">    
                </div>
                <div class="col-xl-3 col-lg-3 col-md-12">
                    <input type="text" name="lname" placeholder="Last Name">      
                </div>
                <div class="col-xl-3 col-lg-3 col-md-12">
                    <input type="email" name="email" placeholder="Email">    
                </div>
                <div class="col-xl-3 col-lg-3 col-md-12">
                    <button class="btn-one" type="submit">Subscribe</button> 
                </div>
            </div>
        </form>
    </div>
</section>
<!--End newsletter area-->
 
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
                        <h3>Our Location</h3>
                        <p>44 Shirley Ave. West Chicago, IL 60185, USA</p>
                        <a class="btn-two" href="#">Find Our Location</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="single-footer-contact-box right-box wow fadeInUp" data-wow-delay="100ms">
                    <div class="icon-holder">
                        <span class="icon-calendar"></span>
                    </div>
                    <div class="text-holder">
                        <h3>Appointment</h3>
                        <p>Make your appointment through online now.</p>
                        <a class="btn-two" href="#">Book for Appointment</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> 
<!--End Footer Contact Info Area--> 
  
<!--Start footer area-->  
<footer class="footer-area">
    <div class="container">
        <div class="row">
           
            <!--Start single footer widget-->
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12">
                <div class="single-footer-widget marbtm50">
                    <div class="about-us">
                        <div class="footer-logo fix">
                            <a href="index-2.html">
                                <img src="images/resources/logo-2.png" alt="Awesome Logo">
                            </a>
                        </div>  
                        <div class="text-box fix">
                            <p>Dento was started in the year 1995 as a small private dental clinic in Binghamton, NY, USA. Looking for affordable dental care?</p>
                            <p class="bottom-text">To take a trivial example, which of us ever undertakes laborious physical 
                            exercise, except to obtain.</p>
                        </div>
                        <div class="button fix">
                            <a class="btn-one" href="#">Read More</a>
                        </div>   
                    </div>
                </div>
            </div>
            <!--End single footer widget-->
            
            <!--Start single footer widget-->
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12">
                <div class="single-footer-widget martop6 marbtm50">
                    <div class="title">
                        <h3>Specialities</h3>
                    </div>
                    <ul class="specialities">
                        <li><a href="#">Dental Implants</a></li>
                        <li><a href="#">Laser Dentistry</a></li>
                        <li><a href="#">Cosmetic Dentistry</a></li>
                        <li><a href="#">Orthodontics</a></li>
                        <li><a href="#">Pedodontics</a></li>
                        <li><a href="#">Prosthodontics</a></li>
                        <li><a href="#">Oral & Maxsillosacial</a></li>
                    </ul>
                </div>
            </div>
            <!--End single footer widget-->
            
            <!--Start single footer widget-->
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12">
                <div class="single-footer-widget martop6 pdbtm50">
                    <div class="title">
                        <h3>Facilities</h3>
                    </div>
                    <ul class="facilities">
                        <li><a href="#">Individual Tooth X-Ray</a></li>
                        <li><a href="#">Intensive Care Unit</a></li>
                        <li><a href="#">Blood Bank</a></li>
                        <li><a href="#">Critical Care Areas</a></li>
                        <li><a href="#">Laboratories</a></li>
                        <li><a href="#">Scale and Clean</a></li>
                        <li><a href="#">Fissure Sealants</a></li>
                    </ul>
                </div>
            </div>
            <!--End single footer widget-->
            
            <!--Start single footer widget-->
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12">
                <div class="single-footer-widget martop6 pdtop-50">
                    <div class="title">
                        <h3>Opening Hours</h3>
                    </div>
                    <ul class="opening-hours">
                        <li>Monday <span class="float-right">8.30am–6.30pm</span></li>
                        <li>Tuesday <span class="float-right">10.00am–8.00pm</span></li>
                        <li>Wednesday <span class="float-right">8.30am–6.30pm</span></li>
                        <li>Thursday <span class="float-right">8.30am–7.00pm</span></li>
                        <li>Friday <span class="float-right">8.30am–3.00pm</span></li>
                        <li>Saturday <span class="float-right">8.30am–2.00pm</span></li>
                        <li>Sunday <span class="float-right clr-green">Closed</span></li>
                    </ul>   
                </div>
            </div>
            <!--End single footer widget-->
            
        </div>
    </div>
</footer>   
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
                        <p>© <a href="#">Dento</a> 2018, All Rights Reserved.</p>
                    </div>
                    <ul class="footer-menu float-right">
                        <li><a href="#">Terms & Condition</a></li>
                        <li><a href="#">Privacy Policy</a></li>
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
            <span class="palate default-color active" data-theme-file="${base }/user/css/color-themes/default-theme.css"></span>
            <span class="palate teal-color" data-theme-file="${base }/user/css/color-themes/teal-theme.css"></span>
            <span class="palate navy-color" data-theme-file="${base }/user/css/color-themes/navy-theme.css"></span>
            <span class="palate yellow-color" data-theme-file="${base }/user/css/color-themes/yellow-theme.css"></span>
            <span class="palate blue-color" data-theme-file="${base }/user/css/color-themes/blue-theme.css"></span>
            <span class="palate purple-color" data-theme-file="${base }/user/css/color-themes/purple-theme.css"></span>
            <span class="palate olive-color" data-theme-file="${base }/user/css/color-themes/olive-theme.css"></span>
            <span class="palate red-color" data-theme-file="${base }/user/css/color-themes/red-theme.css"></span>
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