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
    <title>Admincast  | Quản lý bệnh nhân</title>
    <!-- GLOBAL MAINLY STYLES-->
    <jsp:include page="/WEB-INF/views/admin/core/mainlyStyle.jsp"></jsp:include>
</head>

<body class="fixed-navbar">
    <div class="page-wrapper">
        <!-- START HEADER-->
         <jsp:include page="/WEB-INF/views/admin/core/header.jsp"></jsp:include>
        <!-- END SIDEBAR-->
        <div class="content-wrapper">
            <!-- START PAGE CONTENT-->
            <div class="page-heading">
               
                
            </div>
            <div class="page-content fade-in-up">
                <div class="ibox">
                    <div class="ibox-head">
                       <div class="ibox-title">Quản lý bệnh nhân</div>
								<div class="ibox-tools">
									<a class="ibox-collapse"><i class="fa fa-minus"></i></a> <a
										class="fullscreen-link"><i class="fa fa-expand"></i></a>
								</div>
                    </div>
                    <div class="ibox-body">
                        <table class="table table-striped table-bordered table-hover" id="example-table" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>id</th>
                                   	<th>Tài khoản</th>
                                    <th>Họ và tên</th>
                                    <th>Email</th>
                                    <th>Số điện thoại</th>
                                   <th>Giới tính</th>
                                   <th>Ngày sinh</th>
                                  
                                   <th>Chức năng</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>id</th>
                                  	<th>Tài khoản</th>
                                    <th>Họ và tên</th>
                                    <th>Email</th>
                                    <th>Số điện thoại</th>
                                   <th>Giới tính</th>
                                   <th>Ngày sinh</th>
                                  
                                   <th>Chức năng</th>
                                </tr>
                            </tfoot>
                            <tbody>
                            
                               <c:forEach var="user" items="${newAccount }">
                                
                                <tr >
                                    <td>${user.id }</td>
                                  	<td>${user.username }</td>
                                    <td>${user.name }</td>
                                    <td>${user.email }</td>
                                    <td>${user.phone }</td>
                                    <td>${user.gender }</td>
                                    <td>${user.dob }</td>
                                 
                                    <td>
											<%-- <div class="row">
											<div class="col-sm-2">
												<a
													class="btn btn-dark"
													href="${base }/admin/user/${user.id }"
													id="show-emp" 
													> Chi tiết
												</a>
											</div>
													
											<div class="col-sm-2">
												<a
													class="btn btn-info"
													href="${base }/admin/account/${user.id }"
													id="show-emp" 
													> Sửa
												</a>
											</div>
											<div class="col-sm-2">
													<a  class="btn btn-warning"  role="button"
													onclick="DeleteProduct(${user.id });">Xóa</a>
											</div>
												
											</div> --%>
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
    <jsp:include page="/WEB-INF/views/admin/core/themeConfig.jsp"></jsp:include>
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
		function DeleteProduct(productId) {
				
				//with upload file
				// Get form
			    //var form = $('#fileUploadForm')[0];
			    //var data = new FormData(form);
				
				// javascript object.
				// data la du lieu ma day len action cua controller
				let data = {
					id:productId,
				};
				
				// $ === jQuery
				// json == javascript object
				if (confirm("Bạn có chắc chắn muốn xoác không?")) {
				  // user clicked OK
					jQuery.ajax({
						url : "/admin/ajax/deleteUser",
						type : "post",
						contentType : "application/json",
						data : JSON.stringify(data),
						
						
						dataType : "json", // kieu du lieu tra ve tu controller la json
						success : function(jsonResult) {
							
							alert("Đã xóa thành công!!!!! ");
							location.reload();
						},
						error : function(jqXhr, textStatus, errorMessage) { // error callback 
							alert("error");
						}
					});
				} else {
				  // user clicked Cancel
				  // do something else here
				}
				
			}	
    
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