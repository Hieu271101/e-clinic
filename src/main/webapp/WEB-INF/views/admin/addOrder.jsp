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
<title>Thêm lịch sử bênh án</title>
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
								<sf:form modelAttribute="newMedicine"  action="${base }/admin/addmedicine" method="post" >
									<div class="form-group">
										<%-- <label>Id</label> 	--%>
										<sf:hidden path="id" class="form-control" placeholder="Điền Thông tin tại đây" /> 
									
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
			 <jsp:include page="/WEB-INF/views/admin/core/footer.jsp"></jsp:include>
		</div>
	</div>
	<!-- BEGIN THEME CONFIG PANEL-->
	<jsp:include page="/WEB-INF/views/admin/core/themeConfig.jsp"></jsp:include>
	<!-- END THEME CONFIG PANEL-->
	<!-- BEGIN PAGA BACKDROPS-->
	<div class="sidenav-backdrop backdrop"></div>
	<!-- <div class="preloader-backdrop">
		<div class="page-preloader">Loading</div>
	</div> -->
	<!-- END PAGA BACKDROPS-->
	<script type="text/javascript">
		$(function() {
			$('#summernote').summernote();
			$('.note-popover').css({
				'display' : 'none'
			});
		})
	</script>
	<!-- CORE PLUGINS-->
	<script
		src="${base }/admin/assets/vendors/summernote/dist/summernote.min.js"
		type="text/javascript"></script>
	
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