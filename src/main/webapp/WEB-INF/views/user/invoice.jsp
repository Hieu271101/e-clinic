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
<title>Hóa đơn</title>
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
                <div class="ibox invoice">
                    <div class="invoice-header">
                        <div class="row">
                            <div class="col-6">
                                <div class="invoice-logo">
                                    <img src="" height="65px" />
                                </div>
                                <div>
                                    <div class="m-b-5 font-bold">Bệnh nhân</div>
                                    <div>${saleOrder.customerName }</div>
                                    <ul class="list-unstyled m-t-10">
                                        <li class="m-b-5">${saleOrder.customerAddress }</li>
                                        <li class="m-b-5">${saleOrder.customerEmail }</li>
                                        <li>${saleOrder.customerPhone }</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-6 text-right">
                                <div class="clf" style="margin-bottom:30px;">
                                    <dl class="row pull-right" style="width:250px;"><dt class="col-sm-6">Hóa Đơn Ngày</dt>
                                        
                                        <dd class="col-sm-6">${saleOrder.createdDate }</dd><dt class="col-sm-6">Mã Hóa Đơn</dt>
                                        <dd class="col-sm-6">${saleOrder.code }</dd>
                                    </dl>
                                </div>
                                <div>
                                	<div class="m-b-5 font-bold">Người kê đơn</div>
                                    <div>Hoàng Huy Trường</div>
                                    <ul class="list-unstyled m-t-10">
                                        <li class="m-b-5">
                                            <span class="font-strong">A:</span> Thôn Ngọc Chi</li>
                                        <li class="m-b-5">
                                            <span class="font-strong">W:</span> adminca@exmail.com</li>
                                        <li>
                                            <span class="font-strong">P:</span> (123) 456-2112</li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                            <div class="col-6">
                                
                                <div>
                                    <div class="m-b-5 font-bold">Mô tả</div>
                                    <div>${saleOrder.description }</div>
                                    <ul class="list-unstyled m-t-10">
                                        <li class="m-b-5">${saleOrder.service }</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-6 text-right">
                                
                                
                            </div>
                    </div>
                    <hr>
                    <table class="table table-striped no-margin table-invoice">
                        <thead>
                            <tr>
                                <th>Tên thuốc</th>
                                <th>Số lượng(gam)</th>
                                <th>Đơn giá</th>
                                <th class="text-right">Tổng</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="saleOrderProduct" items="${saleOrder.saleOrderProducts }">
	                        	<tr>
	                                <td>
	                                    <div><strong>${saleOrderProduct.products.name }</strong></div><small>${saleOrderProduct.products.description }.</small></td>
	                                <td>${saleOrderProduct.quanlity }</td>
	                                <td>${saleOrderProduct.products.price }</td>
	                                <td>${saleOrderProduct.totalPrice }</td>
	                            </tr>
                        	</c:forEach>
                            
                            
                        </tbody>
                        <tfoot>
                        	
                        </tfoot>
                        
                    </table>
                    <hr>
                      <div class="row">
                            <div class="col-6">
                                
                                <div>
                                    <div class="m-b-5 font-bold">Dịch vụ Trị liệu</div>
                                    <div>${saleOrder.service }</div>
                                    
                                </div>
                            </div>
                            <div class="col-6 text-right">
                                
                                
                            </div>
                    </div>
                    <table class="table no-border">
                        <thead>
                            <tr>
                                <th></th>
                                <th width="15%"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="text-right">
                                <td>Tiền thuốc/Thang:</td>
                                <td>${saleOrder.totalItemPrice }</td>
                            </tr>
                            <tr class="text-right">
                                <td>x Số thang: </td>
                                <td>${saleOrder.coefficient }</td>
                            </tr>
                            <tr class="text-right">
                                <td>+ Tiền Trị liệu: </td>
                                <td>${saleOrder.surcharge }</td>
                            </tr>
                            
                            <tr class="text-right">
                                <td class="font-bold font-18">Tổng:</td>
                                <td class="font-bold font-18">${saleOrder.total } VNĐ</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="text-right">
                        <button class="btn btn-info" type="button" onclick="javascript:window.print();"><i class="fa fa-print"></i> Print</button>
                    </div>
                </div>
                <style>
                    .invoice {
                        padding: 20px
                    }

                    .invoice-header {
                        margin-bottom: 50px
                    }

                    .invoice-logo {
                        margin-bottom: 50px;
                    }

                    .table-invoice tr td:last-child {
                        text-align: right;
                    }
                </style>
                
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
	

	<!-- CORE PLUGINS-->
	
	<jsp:include page="/WEB-INF/views/admin/core/corePlugin.jsp"></jsp:include>
	
	<script type="text/javascript">
		$("#form-sample-1").validate({
			rules : {
				
				name : {
					minlength : 2,
					required : !0
				},
				quantity : {
					 required : !0,
					 min: 0
				},
				price : {
					 required : !0,
					 min: 0
				},
				cost : {
					required : !0,
					 min: 0
				}
				
				
			},
			messages: {
				name : {
					minlength : 2,
					required : "Tên thuốc không được để trống"
				},
				quantity : {
					 required : "Số lượng không được để trống",
					 min: "Số lượng không thể âm"
				},
				price : {
					 required : "Giá không được trống",
					 min: "Giá không được âm"
				},
				cost : {
					required : "Giá không được trống",
					 min: "Giá không được âm"
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
</body>
</html>