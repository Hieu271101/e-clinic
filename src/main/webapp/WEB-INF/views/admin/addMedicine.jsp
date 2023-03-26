<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="/WEB-INF/views/variables.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<title>Admincast bootstrap 4 &amp; angular 5 admin template,
	Шаблон админки | Form</title>
<!-- GLOBAL MAINLY STYLES-->
<link href="${base}/admin/assets/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${base}/admin/assets/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="${base}/admin/assets/vendors/themify-icons/css/themify-icons.css"
	rel="stylesheet" />
<link href="${base}/admin/assets/vendors/summernote/dist/summernote.css"
	rel="stylesheet" />
<!-- PLUGINS STYLES-->
<!-- THEME STYLES-->
<link href="${base}/admin/assets/css/main.min.css" rel="stylesheet" />
<!-- PAGE LEVEL STYLES-->
</head>

<body class="fixed-navbar">
	<div class="page-wrapper">
		<!-- START HEADER-->
		<header class="header">
			<div class="page-brand">
				<a class="link" href="index.html"> <span class="brand">Admin
						<span class="brand-tip">CAST</span>
				</span> <span class="brand-mini">AC</span>
				</a>
			</div>
			<div class="flexbox flex-1">
				<!-- START TOP-LEFT TOOLBAR-->
				<ul class="nav navbar-toolbar">
					<li><a class="nav-link sidebar-toggler js-sidebar-toggler"><i
							class="ti-menu"></i></a></li>
					<li>
						<form class="navbar-search" action="javascript:;">
							<div class="rel">
								<span class="search-icon"><i class="ti-search"></i></span> <input
									class="form-control" placeholder="Search here...">
							</div>
						</form>
					</li>
				</ul>
				<!-- END TOP-LEFT TOOLBAR-->
				<!-- START TOP-RIGHT TOOLBAR-->
				<ul class="nav navbar-toolbar">
					<li class="dropdown dropdown-inbox"><a
						class="nav-link dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-envelope-o"></i> <span
							class="badge badge-primary envelope-badge">9</span> </a>
						<ul class="dropdown-menu dropdown-menu-right dropdown-menu-media">
							<li class="dropdown-menu-header">
								<div>
									<span><strong>9 New</strong> Messages</span> <a
										class="pull-right" href="mailbox.html">view all</a>
								</div>
							</li>
							<li class="list-group list-group-divider scroller"
								data-height="240px" data-color="#71808f">
								<div>
									<a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<img src="./assets/img/users/u1.jpg" />
											</div>
											<div class="media-body">
												<div class="font-strong"></div>
												Jeanne Gonzalez<small class="text-muted float-right">Just
													now</small>
												<div class="font-13">Your proposal interested me.</div>
											</div>
										</div>
									</a> <a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<img src="./assets/img/users/u2.jpg" />
											</div>
											<div class="media-body">
												<div class="font-strong"></div>
												Becky Brooks<small class="text-muted float-right">18
													mins</small>
												<div class="font-13">Lorem Ipsum is simply.</div>
											</div>
										</div>
									</a> <a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<img src="./assets/img/users/u3.jpg" />
											</div>
											<div class="media-body">
												<div class="font-strong"></div>
												Frank Cruz<small class="text-muted float-right">18
													mins</small>
												<div class="font-13">Lorem Ipsum is simply.</div>
											</div>
										</div>
									</a> <a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<img src="./assets/img/users/u4.jpg" />
											</div>
											<div class="media-body">
												<div class="font-strong"></div>
												Rose Pearson<small class="text-muted float-right">3
													hrs</small>
												<div class="font-13">Lorem Ipsum is simply.</div>
											</div>
										</div>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown dropdown-notification"><a
						class="nav-link dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-bell-o rel"><span class="notify-signal"></span></i></a>
						<ul class="dropdown-menu dropdown-menu-right dropdown-menu-media">
							<li class="dropdown-menu-header">
								<div>
									<span><strong>5 New</strong> Notifications</span> <a
										class="pull-right" href="javascript:;">view all</a>
								</div>
							</li>
							<li class="list-group list-group-divider scroller"
								data-height="240px" data-color="#71808f">
								<div>
									<a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<span class="badge badge-success badge-big"><i
													class="fa fa-check"></i></span>
											</div>
											<div class="media-body">
												<div class="font-13">4 task compiled</div>
												<small class="text-muted">22 mins</small>
											</div>
										</div>
									</a> <a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<span class="badge badge-default badge-big"><i
													class="fa fa-shopping-basket"></i></span>
											</div>
											<div class="media-body">
												<div class="font-13">You have 12 new orders</div>
												<small class="text-muted">40 mins</small>
											</div>
										</div>
									</a> <a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<span class="badge badge-danger badge-big"><i
													class="fa fa-bolt"></i></span>
											</div>
											<div class="media-body">
												<div class="font-13">Server #7 rebooted</div>
												<small class="text-muted">2 hrs</small>
											</div>
										</div>
									</a> <a class="list-group-item">
										<div class="media">
											<div class="media-img">
												<span class="badge badge-success badge-big"><i
													class="fa fa-user"></i></span>
											</div>
											<div class="media-body">
												<div class="font-13">New user registered</div>
												<small class="text-muted">2 hrs</small>
											</div>
										</div>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown dropdown-user"><a
						class="nav-link dropdown-toggle link" data-toggle="dropdown">
							<img src="./assets/img/admin-avatar.png" /> <span></span>Admin<i
							class="fa fa-angle-down m-l-5"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<a class="dropdown-item" href="profile.html"><i
								class="fa fa-user"></i>Profile</a>
							<a class="dropdown-item" href="profile.html"><i
								class="fa fa-cog"></i>Settings</a>
							<a class="dropdown-item" href="javascript:;"><i
								class="fa fa-support"></i>Support</a>
							<li class="dropdown-divider"></li>
							<a class="dropdown-item" href="login.html"><i
								class="fa fa-power-off"></i>Logout</a>
						</ul></li>
				</ul>
				<!-- END TOP-RIGHT TOOLBAR-->
			</div>
		</header>
		<!-- END HEADER-->
		<!-- START SIDEBAR-->
		<nav class="page-sidebar" id="sidebar">
			<div id="sidebar-collapse">
				<div class="admin-block d-flex">
					<div>
						<img src="./assets/img/admin-avatar.png" width="45px" />
					</div>
					<div class="admin-info">
						<div class="font-strong">James Brown</div>
						<small>Administrator</small>
					</div>
				</div>
				<ul class="side-menu metismenu">
					<li><a href="index.html"><i
							class="sidebar-item-icon fa fa-th-large"></i> <span
							class="nav-label">Dashboard</span> </a></li>
					<li class="heading">FEATURES</li>
					<li><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-bookmark"></i> <span
							class="nav-label">Basic UI</span><i
							class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse">
							<li><a href="colors.html">Colors</a></li>
							<li><a href="typography.html">Typography</a></li>
							<li><a href="panels.html">Panels</a></li>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="tabs.html">Tabs</a></li>
							<li><a href="alerts_tooltips.html">Alerts &amp; Tooltips</a>
							</li>
							<li><a href="badges_progress.html">Badges &amp; Progress</a>
							</li>
							<li><a href="lists.html">List</a></li>
							<li><a href="cards.html">Card</a></li>
						</ul></li>
					<li class="active"><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-edit"></i> <span class="nav-label">Forms</span><i
							class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse in">
							<li><a class="active" href="form_basic.html">Basic Forms</a>
							</li>
							<li><a href="form_advanced.html">Advanced Plugins</a></li>
							<li><a href="form_masks.html">Form input masks</a></li>
							<li><a href="form_validation.html">Form Validation</a></li>
							<li><a href="text_editors.html">Text Editors</a></li>
						</ul></li>
					<li><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-table"></i> <span
							class="nav-label">Tables</span><i class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse">
							<li><a href="table_basic.html">Basic Tables</a></li>
							<li><a href="datatables.html">Datatables</a></li>
						</ul></li>
					<li><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-bar-chart"></i> <span
							class="nav-label">Charts</span><i class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse">
							<li><a href="charts_flot.html">Flot Charts</a></li>
							<li><a href="charts_morris.html">Morris Charts</a></li>
							<li><a href="chartjs.html">Chart.js</a></li>
							<li><a href="charts_sparkline.html">Sparkline Charts</a></li>
						</ul></li>
					<li><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-map"></i> <span class="nav-label">Maps</span><i
							class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse">
							<li><a href="maps_vector.html">Vector maps</a></li>
						</ul></li>
					<li><a href="icons.html"><i
							class="sidebar-item-icon fa fa-smile-o"></i> <span
							class="nav-label">Icons</span> </a></li>
					<li class="heading">PAGES</li>
					<li><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-envelope"></i> <span
							class="nav-label">Mailbox</span><i class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse">
							<li><a href="mailbox.html">Inbox</a></li>
							<li><a href="mail_view.html">Mail view</a></li>
							<li><a href="mail_compose.html">Compose mail</a></li>
						</ul></li>
					<li><a href="calendar.html"><i
							class="sidebar-item-icon fa fa-calendar"></i> <span
							class="nav-label">Calendar</span> </a></li>
					<li><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-file-text"></i> <span
							class="nav-label">Pages</span><i class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse">
							<li><a href="invoice.html">Invoice</a></li>
							<li><a href="profile.html">Profile</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="register.html">Register</a></li>
							<li><a href="lockscreen.html">Lockscreen</a></li>
							<li><a href="forgot_password.html">Forgot password</a></li>
							<li><a href="error_404.html">404 error</a></li>
							<li><a href="error_500.html">500 error</a></li>
						</ul></li>
					<li><a href="javascript:;"><i
							class="sidebar-item-icon fa fa-sitemap"></i> <span
							class="nav-label">Menu Levels</span><i
							class="fa fa-angle-left arrow"></i></a>
						<ul class="nav-2-level collapse">
							<li><a href="javascript:;">Level 2</a></li>
							<li><a href="javascript:;"> <span class="nav-label">Level
										2</span><i class="fa fa-angle-left arrow"></i></a>
								<ul class="nav-3-level collapse">
									<li><a href="javascript:;">Level 3</a></li>
									<li><a href="javascript:;">Level 3</a></li>
								</ul></li>
						</ul></li>
				</ul>
			</div>
		</nav>
		<!-- END SIDEBAR-->
		<div class="content-wrapper">
			<!-- START PAGE CONTENT-->
			
			<div class="page-content fade-in-up">
				<div class="row"></div>

				<div class="row">
					<div class="col-md-12">
						<div class="ibox">
							<div class="ibox-head">
								<div class="ibox-title">Thêm thuốc</div>
								<div class="ibox-tools">
									<a class="ibox-collapse"><i class="fa fa-minus"></i></a> <a
										class="fullscreen-link"><i class="fa fa-expand"></i></a>
								</div>
							</div>
							<div class="ibox-body">
								<sf:form modelAttribute="newMedicine" method="post" >
									<div class="form-group">
										<%-- <label>Id</label> <sf:hidden path="id" class="form-control" placeholder="Điền Thông tin tại đây" /> --%>
									</div>
									<div class="form-group">
										<label>Tên thuốc</label> <sf:input path="name" class="form-control" type="text"
											placeholder="Điền tên thuốc tại đây" />
									</div>
									<div class="form-group">
										<label>Số lượng</label> <sf:input path="quantity" class="form-control" type="number"
											placeholder="Nhập số lượng thuốc" />
									</div>
									<div class="form-group">
										<label>Giá bán</label> <sf:input path="price" class="form-control" type="number"
											placeholder="Nhập số tiền bán" />
									</div>
									<div class="form-group">
										<label>Giá vốn</label> <sf:input path="cost" class="form-control" type="number"
											placeholder="Nhập số tiền vốn" />
									</div>
									<div class="form-group">
										<label>Hạn sử dụng( tháng/ngày/năm)</label> <sf:input path="exp"
											class="form-control" type="date" id="date" name="date"
											value="2023-03-26"/>
									</div>
									<div class="form-group">
										<label>Nhà cung cấp</label> <sf:input class="form-control" path="supplier"
											type="text" placeholder="Điền Thông tin tại đây"/>
									</div>
									<div class="form-group">
										<label>Mô tả</label>
										<sf:textarea class="form-control" path="description" id="summernote" name="message" 
											rows="3"></sf:textarea>
									</div>

									<div class="form-group row">
										<div class="col-sm-12 ml-sm-auto">
											<button class="btn btn-info" type="submit">Submit</button>
										</div>
									</div>

								</sf:form>
							</div>
						</div>
					</div>

				</div>

			</div>
			<!-- END PAGE CONTENT-->
			<footer class="page-footer">
				<div class="font-13">
					2018 © <b>AdminCAST</b> - All rights reserved.
				</div>
				<a class="px-4"
					href="http://themeforest.net/item/adminca-responsive-bootstrap-4-3-angular-4-admin-dashboard-template/20912589"
					target="_blank">BUY PREMIUM</a>
				<div class="to-top">
					<i class="fa fa-angle-double-up"></i>
				</div>
			</footer>
		</div>
	</div>
	<!-- BEGIN THEME CONFIG PANEL-->
	<div class="theme-config">
		<div class="theme-config-toggle">
			<i class="fa fa-cog theme-config-show"></i><i
				class="ti-close theme-config-close"></i>
		</div>
		<div class="theme-config-box">
			<div class="text-center font-18 m-b-20">SETTINGS</div>
			<div class="font-strong">LAYOUT OPTIONS</div>
			<div class="check-list m-b-20 m-t-10">
				<label class="ui-checkbox ui-checkbox-gray"> <input
					id="_fixedNavbar" type="checkbox" checked> <span
					class="input-span"></span>Fixed navbar
				</label> <label class="ui-checkbox ui-checkbox-gray"> <input
					id="_fixedlayout" type="checkbox"> <span class="input-span"></span>Fixed
					layout
				</label> <label class="ui-checkbox ui-checkbox-gray"> <input
					class="js-sidebar-toggler" type="checkbox"> <span
					class="input-span"></span>Collapse sidebar
				</label>
			</div>
			<div class="font-strong">LAYOUT STYLE</div>
			<div class="m-t-10">
				<label class="ui-radio ui-radio-gray m-r-10"> <input
					type="radio" name="layout-style" value="" checked=""> <span
					class="input-span"></span>Fluid
				</label> <label class="ui-radio ui-radio-gray"> <input type="radio"
					name="layout-style" value="1"> <span class="input-span"></span>Boxed
				</label>
			</div>
			<div class="m-t-10 m-b-10 font-strong">THEME COLORS</div>
			<div class="d-flex m-b-20">
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Default">
					<label> <input type="radio" name="setting-theme"
						value="default" checked=""> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-white"></div>
						<div class="color-small bg-ebony"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Blue">
					<label> <input type="radio" name="setting-theme"
						value="blue"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-blue"></div>
						<div class="color-small bg-ebony"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Green">
					<label> <input type="radio" name="setting-theme"
						value="green"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-green"></div>
						<div class="color-small bg-ebony"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Purple">
					<label> <input type="radio" name="setting-theme"
						value="purple"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-purple"></div>
						<div class="color-small bg-ebony"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Orange">
					<label> <input type="radio" name="setting-theme"
						value="orange"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-orange"></div>
						<div class="color-small bg-ebony"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Pink">
					<label> <input type="radio" name="setting-theme"
						value="pink"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-pink"></div>
						<div class="color-small bg-ebony"></div>
					</label>
				</div>
			</div>
			<div class="d-flex">
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="White">
					<label> <input type="radio" name="setting-theme"
						value="white"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color"></div>
						<div class="color-small bg-silver-100"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Blue light">
					<label> <input type="radio" name="setting-theme"
						value="blue-light"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-blue"></div>
						<div class="color-small bg-silver-100"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Green light">
					<label> <input type="radio" name="setting-theme"
						value="green-light"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-green"></div>
						<div class="color-small bg-silver-100"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Purple light">
					<label> <input type="radio" name="setting-theme"
						value="purple-light"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-purple"></div>
						<div class="color-small bg-silver-100"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Orange light">
					<label> <input type="radio" name="setting-theme"
						value="orange-light"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-orange"></div>
						<div class="color-small bg-silver-100"></div>
					</label>
				</div>
				<div class="color-skin-box" data-toggle="tooltip"
					data-original-title="Pink light">
					<label> <input type="radio" name="setting-theme"
						value="pink-light"> <span class="color-check-icon"><i
							class="fa fa-check"></i></span>
						<div class="color bg-pink"></div>
						<div class="color-small bg-silver-100"></div>
					</label>
				</div>
			</div>
		</div>
	</div>
	<!-- END THEME CONFIG PANEL-->
	<!-- BEGIN PAGA BACKDROPS-->
	<div class="sidenav-backdrop backdrop"></div>
	<!-- <div class="preloader-backdrop">
		<div class="page-preloader">Loading</div>
	</div> -->
	<!-- END PAGA BACKDROPS-->
	<!-- CORE PLUGINS-->
	<script
		src="${base }/admin/assets/vendors/summernote/dist/summernote.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$('#summernote').summernote();
			$('.note-popover').css({
				'display' : 'none'
			});
		})
	</script>
	<script src="./assets/vendors/jquery/dist/jquery.min.js"
		type="text/javascript"></script>
	<script src="./assets/vendors/popper.js/dist/umd/popper.min.js"
		type="text/javascript"></script>
	<script src="./assets/vendors/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="./assets/vendors/metisMenu/dist/metisMenu.min.js"
		type="text/javascript"></script>
	<script
		src="./assets/vendors/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- PAGE LEVEL PLUGINS-->
	<!-- CORE SCRIPTS-->
	<script src="assets/js/app.min.js" type="text/javascript"></script>
	<!-- PAGE LEVEL SCRIPTS-->
</body>
</html>