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
    <title>Admincast | Dashboard</title>
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
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="ibox bg-success color-white widget-stat">
                            <div class="ibox-body">
                                <h2 class="m-b-5 font-strong">${numberOrder }</h2>
                                <div class="m-b-5">Số đơn mới</div><i class="ti-shopping-cart widget-stat-icon"></i>
                               <!--  <div><i class="fa fa-level-up m-r-5"></i><small>25% higher</small></div> -->
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6">
                        <div class="ibox bg-warning color-white widget-stat">
                            <div class="ibox-body">
                                <h2 class="m-b-5 font-strong">${revenue } vnđ</h2>
                                <div class="m-b-5">Doanh Thu</div><i class="fa fa-money widget-stat-icon"></i>
                                <!-- <div><i class="fa fa-level-up m-r-5"></i><small>22% higher</small></div> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="ibox bg-danger color-white widget-stat">
                            <div class="ibox-body">
                                <h2 class="m-b-5 font-strong">${newUser }</h2>
                                <div class="m-b-5">Khách hàng mới</div><i class="ti-user widget-stat-icon"></i>
                                <!-- <div><i class="fa fa-level-down m-r-5"></i><small>-12% Lower</small></div> -->
                            </div>
                        </div>
                    </div>
                </div>
	            <div class="row">
	            	 <div class="col-lg-12" style="display:flex; margin:0px 10px 10px 0px;justify-content:space-around;">
	            	  <a href="${base }/admin/">	<button class="btn btn-primary btn-lg" > Biểu đồ theo ngày</button></a>
	            	  <a href="${base }/admin/month"> <button class="btn btn-success btn-lg" > Biểu đồ theo tháng</button></a>
	            	  <a href="${base }/admin/year"> 	<button class="btn btn-info btn-lg" > Biểu đồ năm</button></a>
		            	
		            	
		            	<style>
								.btn-lg{
									cursor: pointer;
								}
						</style>
	            	 </div>
	            </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-body">
                                <div class="flexbox mb-4">
                                    <div>
                                        <h3 class="m-0">Doanh số</h3>
                                        <div>Tổng doanh số(vnđ)</div>
                                    </div>
                                    <!-- <div class="d-inline-flex">
                                        <div class="px-3" style="border-right: 1px solid rgba(0,0,0,.1);">
                                            <div class="text-muted">WEEKLY INCOME</div>
                                            <div>
                                                <span class="h2 m-0">$850</span>
                                                <span class="text-success ml-2"><i class="fa fa-level-up"></i> +25%</span>
                                            </div>
                                        </div>
                                        <div class="px-3">
                                            <div class="text-muted">WEEKLY SALES</div>
                                            <div>
                                                <span class="h2 m-0">240</span>
                                                <span class="text-warning ml-2"><i class="fa fa-level-down"></i> -12%</span>
                                            </div>
                                        </div>
                                    </div> -->
                                </div>
                                
			                        <div class="ibox-body">
		                                <div id="flot_bar_chart" style="height:280px;"></div>
		                            </div>
			                   
                              
                            </div>
                        </div>
                    </div>
                    <%-- <div class="col-lg-4">
                        <div class="ibox">
                            <div class="ibox-head">
                                <div class="ibox-title">Doanh thu Dịch vụ và Thuốc</div>
                            </div>
                            <div class="ibox-body">
                                <div class="row align-items-center">
                                    <div class="col-md-6">
                                        <canvas id="doughnut_chart" style="height:160px;"></canvas>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="m-b-20 text-success"><i class="fa fa-circle-o m-r-10"></i>Bênh nhân cũ 52%</div>
                                        <div class="m-b-20 text-info"><i class="fa fa-circle-o m-r-10"></i>Bênh nhân mới 27%</div>
                                        
                                    </div>
                                </div>
                                <!-- <ul class="list-group list-group-divider list-group-full">
                                    <li class="list-group-item">Bênh nhân cũ 
                                        <span class="float-right text-success"><i class="fa fa-caret-up"></i> 24%</span>
                                    </li>
                                    <li class="list-group-item">Bênh nhân mới
                                        <span class="float-right text-success"><i class="fa fa-caret-up"></i> 12%</span>
                                    </li>
                                    
                                </ul> -->
                            </div>
                        </div>
                    </div> --%>
                </div>
                <%-- <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-head">
                                <div class="ibox-title">Hóa đơn trong ngày</div>
                                <div class="ibox-tools">
                                    <a class="ibox-collapse"><i class="fa fa-minus"></i></a>
                                    <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item">option 1</a>
                                        <a class="dropdown-item">option 2</a>
                                    </div>
                                </div>
                            </div>
                            <div class="ibox-body">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Tên BN</th>
                                            <th>Tổng Bill</th>
                                            
                                            <th width="91px">Thời gian</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${newOrder }" var="newOrder">
                                    		<tr>
	                                            <td>
	                                                <a href="invoice.html">${newOrder.code }</a>
	                                            </td>
	                                            <td>${newOrder.customerName }</td>
	                                            <td>${newOrder.total }</td>
	                                          
	                                            <td>${newOrder.createdDate }</td>
                                        	</tr>
                                    	</c:forEach>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                </div> --%>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-head">
                                <div class="ibox-title">Hóa đơn trong ngày</div>
                                <div class="ibox-tools">
                                    <a class="ibox-collapse"><i class="fa fa-minus"></i></a>
                                    <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item">option 1</a>
                                        <a class="dropdown-item">option 2</a>
                                    </div>
                                </div>
                            </div>
                            <div class="ibox-body">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Tên BN</th>
                                            <th>Tổng Bill</th>
                                            
                                            <th width="91px">Thời gian</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${newOrder }" var="newOrder">
                                    		<tr>
	                                            <td>
	                                                <a href="invoice.html">${newOrder.code }</a>
	                                            </td>
	                                            <td>${newOrder.customerName }</td>
	                                            <td>${newOrder.total }</td>
	                                          
	                                            <td>${newOrder.createdDate }</td>
                                        	</tr>
                                    	</c:forEach>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <style>
                    .visitors-table tbody tr td:last-child {
                        display: flex;
                        align-items: center;
                    }

                    .visitors-table .progress {
                        flex: 1;
                    }

                    .visitors-table .progress-parcent {
                        text-align: right;
                        margin-left: 10px;
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
     <div class="preloader-backdrop">
        <div class="page-preloader">Loading</div>
    </div> 
    <!-- END PAGA BACKDROPS-->
    <!-- CORE PLUGINS-->
    <jsp:include page="/WEB-INF/views/admin/core/corePlugin.jsp"></jsp:include>
    <script src="${base }/admin/assets/vendors/Flot/jquery.flot.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/Flot/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/Flot/jquery.flot.pie.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/Flot/jquery.flot.time.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/flot.tooltip/js/jquery.flot.tooltip.min.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/Flot/jquery.flot.categories.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/Flot/jquery.flot.stack.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/Flot/jquery.flot.selection.js" type="text/javascript"></script>
    <script src="${base }/assets/vendors/flot-orderBars/js/jquery.flot.orderBars.js" type="text/javascript"></script>
   <script type="text/javascript">
   
 //Flot Bar Chart
   $(function() {
	   

	   
    var barOptions = {
        series: {
            bars: {
                show: true,
                barWidth: 0.2,
                align   : 'center',
                fillColor: {
                    colors: [{
                        opacity: 0.6
                    }, {
                        opacity: 0.6
                    }]
                }
            }
        },
        xaxis: {
            tickDecimals: 0,
            mode: 'categories',
            ticks: ${ticks},
        },
        colors: ["#3498db"],
        grid: {
            color: "#999999",
            hoverable: true,
            clickable: true,
            tickColor: '#DADDE0',
            borderWidth:0
        },
        legend: {
            show: false
        },
        tooltip: true,
        tooltipOpts: {
            content: "x: %x, y: %y"
        }
    };
    var barData = {
        label: "bar",
        data: ${data},
    };
    $.plot($("#flot_bar_chart"), [barData], barOptions);
});

  
   </script>
</body>

</html>