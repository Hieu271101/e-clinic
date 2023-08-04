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
<title>Thông tin bệnh nhân</title>
<!-- GLOBAL MAINLY STYLES-->
<jsp:include page="/WEB-INF/views/admin/core/mainlyStyle.jsp"></jsp:include>
<!-- PAGE LEVEL STYLES-->
</head>

<body class="fixed-navbar">
	<div class="page-wrapper">
		<!-- START HEADER-->
		 <jsp:include page="/WEB-INF/views/admin/core/header.jsp"></jsp:include>
		<!-- END SIDEBAR-->
		<div class="content-wrapper">
			<!-- START PAGE CONTENT-->
			
			<div class="page-content fade-in-up">

				<div class="ibox">
					<div class="ibox-head">
						<div class="ibox-title">Thêm User</div>
							
								<div class="ibox-tools">
									<a class="ibox-collapse"><i class="fa fa-minus"></i></a> <a
										class="fullscreen-link"><i class="fa fa-expand"></i></a>
								</div>
					</div>
					<div class="ibox-body">
						<sf:form modelAttribute="newUser" action="${base }/admin/addUser"
							method="post" class="form-horizontal" id="form-sample-1"
							novalidate="novalidate"
							enctype="multipart/form-data"
							>
							
                             <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Họ và tên</label>
                                <div class="col-sm-10">
                                    <sf:input class="form-control" type="text" name="name" path="name" placeholder="Nhập họ và tên"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <sf:input class="form-control" type="text" name="email" path="email" placeholder="Nhập email"/>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Số điện thoại</label>
                                <div class="col-sm-10">
                                    <sf:input class="form-control" name="phone" id="ex-phone2" type="text" path="phone" placeholder="Nhập số điện thoại"/>
                                    <span class="help-block">Data format +84 000 000 000</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Giới tính</label>
                                        <div class="col-sm-10">
                                        <sf:select class="form-control" path="gender">
                                            <sf:option value="Nam">Nam</sf:option>
                                            <sf:option value="Nữ">Nữ</sf:option>
                                            <sf:option value="Chuyển giới Nam">Chuyển giới Nam</sf:option>
                                            <sf:option value="Chuyển giới Nữ">Chuyển giới Nữ</sf:option>
                                            
                                        </sf:select>
                                        </div>
                            </div>
                           <div class="form-group row">
										<label class="col-sm-2 col-form-label">Ngày sinh</label>
                           				  <div class="col-sm-10">
										 <sf:input path="dob"
											class="form-control" type="date" id="date" name="date"
											value="1960-03-26"/>
										</div>
							</div>
                             <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Địa chỉ</label>
                                <div class="col-sm-10">
                                    <sf:input class="form-control" type="text" name="address" path="address" placeholder="Nhập địa chỉ"/>
                                </div>
                            </div>
                          
                      
                             <div class="form-group row">
                                <div class="col-sm-12 ml-sm-auto">
                                    <button class="btn btn-info" type="submit">Lưu</button>
                                </div>
                            </div>
						</sf:form>
					</div>
				</div>

			</div>
			<!-- END PAGE CONTENT-->
			 <jsp:include page="/WEB-INF/views/admin/core/footer.jsp"></jsp:include>
		</div>
	</div>
	<!-- BEGIN THEME CONFIG PANEL-->
	<jsp:include page="/WEB-INF/views/admin/core/themeConfig.jsp"></jsp:include>
	<!-- END THEME CONFIG PANEL-->
	<!-- BEGIN PAGA BACKDROPS-->
	<div class="sidenav-backdrop backdrop"></div>
	
	<!-- END PAGA BACKDROPS-->
	<!-- CORE PLUGINS-->
	<script src="${base}/admin/assets/vendors/jquery/dist/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="${base}/admin/assets/vendors/popper.js/dist/umd/popper.min.js"
		type="text/javascript"></script>
	<script
		src="${base}/admin/assets/vendors/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="${base}/admin/assets/vendors/metisMenu/dist/metisMenu.min.js"
		type="text/javascript"></script>
	<script
		src="${base}/admin/assets/vendors/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- PAGE LEVEL PLUGINS-->
	<script
		src="${base}/admin/assets/vendors/jquery-validation/dist/jquery.validate.min.js"
		type="text/javascript"></script>
	<!-- CORE SCRIPTS-->
	<script src="${base}/admin/assets/js/app.min.js" type="text/javascript"></script>
	<script
		src="${base}/admin/assets/vendors/jquery.maskedinput/dist/jquery.maskedinput.min.js"
		type="text/javascript"></script>
	<!-- PAGE LEVEL SCRIPTS-->
	<script type="text/javascript">
		$.validator.addMethod("containsAlphabet", function(value, element) {
		  return /[a-zA-Z]/.test(value);
		}, "Please enter at least one alphabetical character.");

		$("#form-sample-1").validate({
			rules : {
				
				name : {
					minlength : 2,
					 containsAlphabet: true,
					required : !0
				},
				email : {
					
					email : !0
				},
				phone : {
					required : !0,
					
				},
				address : {
					required : !0,
					
				},
				number : {
					required : !0,
					number : !0
				},
				min : {
					required : !0,
					minlength : 3
				},
				max : {
					required : !0,
					maxlength : 4
				}
			},
			messages: {
				name : {
					minlength : 2,
					required : "Tên bệnh nhân không được để trống"
				},
				
				phone : {
					 required : "Số điện thoại không để trống",
					 
				},
				address : {
					required : "Địa chỉ không được để trống",
					 
				}
			},
			errorClass : "help-block error",
			highlight : function(e) {
				$(e).closest(".form-group.row").addClass("has-error")
			},
			unhighlight : function(e) {
				$(e).closest(".form-group.row").removeClass("has-error")
			},
		});
	</script>
	<script type="text/javascript">
		$(function() {

			$('#ex-phone2').mask('+84 999 999 999');

		})
	</script>
</body>
</html>