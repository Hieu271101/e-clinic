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
    <title>Admincast bootstrap 4 &amp; angular 5 admin template, Шаблон админки | DataTables</title>
    <!-- GLOBAL MAINLY STYLES-->
    <jsp:include page="/WEB-INF/views/admin/core/mainlyStyle.jsp"></jsp:include>
</head>

<body class="fixed-navbar">
    <div class="page-wrapper">
        <!-- START HEADER-->
        <jsp:include page="/WEB-INF/views/admin/core/header.jsp"></jsp:include>
        <!-- END SIDEBAR-->
        <div class="content-wrapper">
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
								<form> 
								   <div class="row">
										<div class="col-md-6">
		                                    <div class="row">
		                                   
		                                        <div class="col-sm-6 form-group">
		                                            <label>First Name</label>
		                                            <input class="form-control" type="text" placeholder="First Name">
		                                        </div>
		                                        <div class="col-sm-6 form-group">
		                                            <label>Last Name</label>
		                                            <input class="form-control" type="text" placeholder="First Name">
		                                        </div>
		                                    </div>
		                                   <div class="row">
		                                    <div class="col-sm-12 form-group">
		                                        <label>Email</label>
		                                        <input class="form-control" type="text" placeholder="Email address">
		                                    </div>
		                                   </div>
		                                    <div class="row">
		                                    <div class="col-sm-12 form-group">
		                                        <label>Password</label>
		                                        <input class="form-control" type="password" placeholder="Password">
		                                    </div>
		                                   </div>
		                                   </div>
                                   
	                                   <div class="col-md-6">
	                                   <div class="row">
	                                    <div class="col-sm-12 form-group">
	                                       <div>
                                    <a class="list-group-item">
                                        <div class="media">
                                            <div class="media-img">
                                                <img src="./assets/img/users/u1.jpg" />
                                            </div>
                                            <div class="media-body">
                                                <div class="font-strong"> </div>Jeanne Gonzalez<small class="text-muted float-right">Just now</small>
                                                <div class="font-13">Your proposal interested me.</div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="list-group-item">
                                        <div class="media">
                                            <div class="media-img">
                                                <img src="./assets/img/users/u2.jpg" />
                                            </div>
                                            <div class="media-body">
                                                <div class="font-strong"></div>Becky Brooks<small class="text-muted float-right">18 mins</small>
                                                <div class="font-13">Lorem Ipsum is simply.</div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="list-group-item">
                                        <div class="media">
                                            <div class="media-img">
                                                <img src="./assets/img/users/u3.jpg" />
                                            </div>
                                            <div class="media-body">
                                                <div class="font-strong"></div>${user.name }<small class="text-muted float-right">18 mins</small>
                                                <div class="font-13">Lorem Ipsum is simply.</div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="list-group-item">
                                        <div class="media">
                                            <div class="media-img">
                                                <img src="./assets/img/users/u4.jpg" />
                                            </div>
                                            <div class="media-body">
                                                <div class="font-strong"></div>Rose Pearson<small class="text-muted float-right">3 hrs</small>
                                                <div class="font-13">Lorem Ipsum is simply.</div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
	                                    </div>
	                                   </div>
	                                   
	                                   </div>
                                   </div>
                                    <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <button class="btn btn-default" type="submit">Submit</button>
                                    </div>
                                    </div>
                                </form>
							</div>
						</div>
					</div>

				</div>

			</div>
            <!-- START PAGE CONTENT-->
            
            <div class="page-content fade-in-up">
                <div class="ibox">
                    <div class="ibox-head">
                        <div class="ibox-title">Danh sách thuốc</div>
                    </div>
                    <div class="ibox-body">
                        <table class="table table-striped table-bordered table-hover" id="example-table" cellspacing="0" width="100%">
                            <thead>
								<tr>
									<th>Id</th>
									<th>Tên sản phẩm</th>
									<th>Số lượng</th>
									<th>Giá bán</th>
									<th>Giá gốc</th>
									<th>Hạn sử dụng</th>

									<th>Nhà cung cấp</th>
									<th>Mô tả</th>
									<th>Chức năng</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Id</th>
									<th>Tên sản phẩm</th>
									<th>Số lượng</th>
									<th>Giá bán</th>
									<th>Giá gốc</th>
									<th>Hạn sử dụng</th>

									<th>Nhà cung cấp</th>
									<th>Mô tả</th>
									<th>Chức năng</th>
								</tr>
							</tfoot>
                            <tbody>
								<c:forEach var="medicine" items="${medicines }">
									<tr>
										<td>${medicine.id }</td>
										<td>${medicine.name }</td>
										<td>${medicine.quantity }</td>
										<td>${medicine.price }</td>
										<td>${medicine.cost }</td>
										<td>${medicine.exp }</td>
										<td>${medicine.supplier }</td>
										<td>${medicine.description }</td>
										<td>
											<div class="row">
												
												 <div class="col-sm-2">
												<a
													class="btn btn-info"
													href="${base }/admin/addmedicine/${medicine.id}"
													id="show-emp" 
													> Thêm vào đơn
												</a>
												 </div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
                        </table>
                    </div>
                </div>
                
            </div>
            <!-- END PAGE CONTENT-->
            <jsp:include page="/WEB-INF/views/admin/core/footer.jsp"></jsp:include>
        </div>
    </div>
    <!-- BEGIN THEME CONFIG PANEL-->
    <div class="theme-config">
        <div class="theme-config-toggle"><i class="fa fa-cog theme-config-show"></i><i class="ti-close theme-config-close"></i></div>
        <div class="theme-config-box">
            <div class="text-center font-18 m-b-20">SETTINGS</div>
            <div class="font-strong">LAYOUT OPTIONS</div>
            <div class="check-list m-b-20 m-t-10">
                <label class="ui-checkbox ui-checkbox-gray">
                    <input id="_fixedNavbar" type="checkbox" checked>
                    <span class="input-span"></span>Fixed navbar</label>
                <label class="ui-checkbox ui-checkbox-gray">
                    <input id="_fixedlayout" type="checkbox">
                    <span class="input-span"></span>Fixed layout</label>
                <label class="ui-checkbox ui-checkbox-gray">
                    <input class="js-sidebar-toggler" type="checkbox">
                    <span class="input-span"></span>Collapse sidebar</label>
            </div>
            <div class="font-strong">LAYOUT STYLE</div>
            <div class="m-t-10">
                <label class="ui-radio ui-radio-gray m-r-10">
                    <input type="radio" name="layout-style" value="" checked="">
                    <span class="input-span"></span>Fluid</label>
                <label class="ui-radio ui-radio-gray">
                    <input type="radio" name="layout-style" value="1">
                    <span class="input-span"></span>Boxed</label>
            </div>
            <div class="m-t-10 m-b-10 font-strong">THEME COLORS</div>
            <div class="d-flex m-b-20">
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Default">
                    <label>
                        <input type="radio" name="setting-theme" value="default" checked="">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-white"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Blue">
                    <label>
                        <input type="radio" name="setting-theme" value="blue">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-blue"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Green">
                    <label>
                        <input type="radio" name="setting-theme" value="green">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-green"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Purple">
                    <label>
                        <input type="radio" name="setting-theme" value="purple">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-purple"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Orange">
                    <label>
                        <input type="radio" name="setting-theme" value="orange">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-orange"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Pink">
                    <label>
                        <input type="radio" name="setting-theme" value="pink">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-pink"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
            </div>
            <div class="d-flex">
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="White">
                    <label>
                        <input type="radio" name="setting-theme" value="white">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Blue light">
                    <label>
                        <input type="radio" name="setting-theme" value="blue-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-blue"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Green light">
                    <label>
                        <input type="radio" name="setting-theme" value="green-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-green"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Purple light">
                    <label>
                        <input type="radio" name="setting-theme" value="purple-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-purple"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Orange light">
                    <label>
                        <input type="radio" name="setting-theme" value="orange-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-orange"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Pink light">
                    <label>
                        <input type="radio" name="setting-theme" value="pink-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
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
   
    <!-- END PAGA BACKDROPS-->
    <!-- CORE PLUGINS-->
    <script src="${base}/admin/assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="${base}/admin/assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
    <script src="${base}/admin/assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${base}/admin/assets/vendors/metisMenu/dist/metisMenu.min.js" type="text/javascript"></script>
    <script src="${base}/admin/assets/vendors/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL PLUGINS-->
    <script src="${base}/admin/assets/vendors/DataTables/datatables.min.js" type="text/javascript"></script>
    <!-- CORE SCRIPTS-->
    <script src="assets/js/app.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL SCRIPTS-->
    <script type="text/javascript">
        $(function() {
            $('#example-table').DataTable({
                pageLength: 10,
                //"ajax": './assets/demo/data/table_data.json',
                /*"columns": [
                    { "data": "name" },
                    { "data": "office" },
                    { "data": "extn" },
                    { "data": "start_date" },
                    { "data": "salary" }
                ]*/
            });
        })
    </script>
</body>
</html>