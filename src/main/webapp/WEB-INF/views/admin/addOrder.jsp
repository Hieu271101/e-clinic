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
								<div class="ibox-title">Thêm hóa đơn</div>
								
								<div class="ibox-tools">
									<a class="ibox-collapse"><i class="fa fa-minus"></i></a> <a
										class="fullscreen-link"><i class="fa fa-expand"></i></a>
								</div>
								
							</div>
							<div class="ibox-body">
							<c:if test="${not empty WarningNotification}">
							<div class="alert alert-danger">
									<strong>${WarningNotification }</strong>                               
		                        </div>
							</c:if>
							

								<form action="/admin/order/save" method="post" id="form-sample-1"> 
								   <div class="row">
										<div class="col-md-6">
												<div class="row">

			                                        <div class="col-sm-12 form-group">
			                                            <label><h4>Thông tin bệnh nhân</h4></label>
			                                          
			                                        </div>
			                                        
			                                    </div>
			                                 
			                                    <div class="row">
   													<input hidden=""  value="${user.id }" name="idCus" class="form-control" type="text" placeholder="First Name"> 
			                                        <div class="col-sm-12 form-group">
			                                            <label>Họ và Tên: ${user.name }</label>
			                                            <input hidden="true" value="${user.name }" name="name" class="form-control" type="text" placeholder="First Name"> 
			                                        </div>
			                                        
			                                    </div>
			                                   <div class="row">
				                                    <div class="col-sm-12 form-group">
				                                        <label>Email: ${user.email }</label>
				                                    	<input hidden="true" value="${user.email }" name="email" class="form-control" type="text" placeholder="Email address"> 
				                                    </div>
			                                   </div>
			                                    <div class="row">
				                                    <div class="col-sm-12 form-group">
				                                        <label>Số điệnt thoại: ${user.phone }</label>
				                               		   <input hidden="true" value="${user.phone }" name="phone" class="form-control" type="text" placeholder="Password"> 
				                                    </div>
			                                   </div>
			                                   <div class="row">
				                                    <div class="col-sm-12 form-group">
				                                        <label>Địa chỉ: ${user.address }</label>
				                               		   <input hidden="true" value="${user.address }" name="address" class="form-control" type="text" placeholder="Nhập địa chỉ"> 
				                                    </div>
			                                   </div>
			                                   <div class="row">
				                                    <div class="col-sm-12 form-group">
				                                        <label>Giới tính: ${user.gender }</label>
				                                     <input hidden="true" value="${user.gender }" name="gender" class="form-control" type="text" placeholder="Password"> 
				                                    </div>
			                                   </div>
			                                   <div class="row">
				                                    <div class="col-sm-12 form-group">
				                                        <label>Ngày sinh(yyyy/mm/dd):   ${user.dob }</label>
				                                     <input hidden="true" value="${user.dob }" name="dob" class="form-control" type="text" placeholder="Password"> 
				                                    </div>
			                                   </div>
			                                   
			                                    <hr>
			                                    <!-- <div class="row">
				                                    <div class="col-sm-6 form-group">
				                                        
				                                       
					                                        <div class="m-b-10">
					                                        	  <div class="form-group">
								                                        <label>Mạch</label>
								                                        <select class="form-control">
								                                            <option value="">Phù</option>
								                                            <option value="">Trung</option>
								                                            <option value="">Trầm</option>
								                                            <option value="">Thượng</option>
								                                            <option value="">Hạ</option>
								                                            <option value="">Tả</option>
								                                            <option value="">Hữu</option>
								                                        </select>
								                                    </div>
					                                            
					                                        </div>
					                                    
				                                      
				                                    </div>
				                                    <div class="col-sm-6 form-group">
				                                       
				                                       
					                                        <div class="m-b-10">
					                                        	  <div class="form-group">
								                                        <label>Chỉ số</label>
								                                        <select class="form-control">
								                                            <option value="">Tăng</option>
								                                            <option value="">Giảm</option>
								                                            <option value="">Nguyên</option>
								                                           
								                                        </select>
								                                    </div>
					                                            
					                                        </div>
					                                    
				                                      
				                                    </div>
			                                   </div> -->
			                             
			                                  <div class="row">
				                                    <div class="col-sm-12 form-group">
				                                     <label>Mô tả: </label>
				                                     <textarea name="description" class="form-control" ></textarea> 
				                                    </div>
			                                   </div>
			                                   
			                                   
			                                   
		                                   </div>
                       
                                   
	                                   <div class="col-md-6" >
		                                   <div class="row">
		                                    <div class="col-sm-12 form-group">
		                                       <div>
		                                       <label><h4>Thang thuốc</h4></label>
		                                       <table>
										        <thead>
										            <tr>
										                <th>Tên thuốc</th>
										                <th>Số lượng(gam)</th>
										                <th>Giá(vnđ)</th>
										                <th>Tổng(vnđ)</th>
										                <th>Chức năng</th>
										            </tr>
										        </thead>
										        <tbody>
										        	
										           <c:forEach items="${cart.cartItems }" var="ci">
											            <tr data-product-id="${ci.productId }">
												                <td>${ci.productName }</td>
												                <td>
												                	<%-- <button class="plus"
																	onclick="UpdateQuanlityCart('${base }', ${ci.productId}, 1)"
																	value="+">+</button> --%>
																	
												                    <input type="number" step="any" min="0" value="${ci.quanlity }" class="quantity-input">
												                	
												                	<%-- <button class="mute"
																	onclick="UpdateQuanlityCart('${base }', ${ci.productId}, -1)"
																	value="-">-</button> --%>
												                </td>
												                <td>	
												                		<fmt:setLocale value="vi_VN" />
												                		<span class="text-muted text-decoration-line-through">
																			<fmt:formatNumber  value="${ci.priceUnit}" type="currency" />
																			
																		</span>
																		
																</td>
												                <td class="total">$${ci.toltalPriceItem }</td>
												                <td>
												                   <button type="button" onclick="DeleteItemCart('${base }', ${ci.productId}, -1)" class="remove-product"><i 
																		class="fa fa-trash "  aria-hidden="true"></i>
																	</button>
												                </td>
											            </tr>
										           </c:forEach>
										        </tbody>
										        <tfoot>
										        	<tr>
										        		<th colspan="5">Số thang: <input name="coefficient" type="number" step="any" min="0" value="${cart.coefficient }" class="total_ladder" ></td>
										        	</tr>
										        </tfoot>
										    </table>
										<%--     <hr>
										    <div class="row">
				                                    <div class="col-sm-12 form-group">
				                                        <label><h4>Trị liệu: </h4></label>
				                                       
					                                        <div class="m-b-10">
					                                            <label class="ui-checkbox ui-checkbox-inline">
															        <input type="checkbox" name="bamhuyet">
															        <span class="input-span"></span>Bấm Huyệt
															    </label>
															    <label class="ui-checkbox ui-checkbox-inline">
															        <input type="checkbox" name="xoabop">
															        <span class="input-span"></span>Xoa bóp
															    </label>
															    <label class="ui-checkbox ui-checkbox-inline">
															        <input type="checkbox" name="chamcuu">
															        <span class="input-span"></span>Châm cứu
															    </label>
															    <label class="ui-checkbox ui-checkbox-inline">
															        <input type="checkbox" name="khac">
															        <span class="input-span"></span>Khác
															    </label>
					                                        </div>
					                                    
				                                        <input name="surcharge" class="form-control" id="surcharge" type="number" value="${cart.surcharge }" placeholder="Nhập Số tiền trị liệu">
				                                    </div>
			                                   </div>
			                                   <hr> --%>
			                                     <div class="row">
			                                     	 <div class="col-sm-12 form-group">
						                                    <label>Phụ phí:</label>
						                                    <input name="surcharge" value=0 class="form-control" id="surcharge" type="number" value="${cart.surcharge }" placeholder="Nhập Số tiền phụ phí">
	                     							</div>
	                     						</div>
	                     			<div class="list_product_cart">

													
												<div class="total_price">
													<span>Tổng tiền: </span> <span value="tongTien()"
														id="cart-total" 
														class="cart-total" 
														<!-- class="totalPrice" -->
														$${cart.totalPrice } </span>
												</div>


									</div>
									
	                              
                                </div>
	                                    </div>
	                                   </div>
	                                   
	                                   </div>
                                   </div>
                                    <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <button class="btn btn-primary" type="submit">Lưu</button>
                                         <a class="btn btn-warning" href="${base }/admin/order/cancel">Hủy</a>
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
												<button	type="button"
													class="btn btn-info"
													onclick="save(${medicine.id},1)"
													id="show-emp" 
													> Thêm vào đơn
												</button>
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
    <jsp:include page="/WEB-INF/views/admin/core/themeConfig.jsp"></jsp:include>
    <!-- END THEME CONFIG PANEL-->
    <!-- BEGIN PAGA BACKDROPS-->
    <div class="sidenav-backdrop backdrop"></div>
   
    <!-- END PAGA BACKDROPS-->
    <!-- CORE PLUGINS-->
    <jsp:include page="/WEB-INF/views/admin/core/corePlugin.jsp"></jsp:include>
   
    <!-- PAGE LEVEL PLUGINS-->
   
    <!-- CORE SCRIPTS-->
    <script src="assets/js/app.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL SCRIPTS-->
   
    <script type="text/javascript">
    
    
    $("#form-sample-1").validate({
		rules : {
			
			coefficient :{
				required : !0
			},
			surcharge:{
				required : !0
			},
			
		},
		errorClass : "help-block error",
		highlight : function(e) {
			$(e).closest(".form-group.row").addClass("has-error")
		},
		unhighlight : function(e) {
			$(e).closest(".form-group.row").removeClass("has-error")
		},
	});
    
   
    /* Udate surcharge  */
    const surcharge = $('#surcharge');
    function updateSurcharge() {
    	let cartTotal = 0;
	    totalElements.each((index, totalElement) => {
	      const price = parseInt($(totalElement).prev().text().trim().slice(1));
	      const quantity = parseInt($(quantityInputs[index]).val());
	      const total = price * quantity;
	      $(totalElement).text('$' + total+"");
	      cartTotal += total;
	      const productId = $(totalElement).parent().data('product-id');
	     /*  UpdateSurchargeCart('${base }',ladder, surchargePrice); */
	    });
    	
    	const ladder = $(totalLadders).val();
		const surchargePrice =  $(surcharge).val();  
    	const totalPriceCaculated = ladder * cartTotal + parseInt(surchargePrice);
    	UpdateSurchargeAndCoefficentCart('${base }',ladder, surchargePrice);
    	cartTotalElement.text('$' + totalPriceCaculated);
    }
    surcharge.on('input',updateSurcharge);
    /* /ajax/updateCoefficentCart */
    function UpdateSurchargeAndCoefficentCart(baseUrl, coefficient, surcharge) {
    	
    	// javascript object.  data la du lieu ma day len action cua controller
    	let data = {
    			coefficient: coefficient, 	
    			surcharge: surcharge
    	};
    	
    	// $ === jQuery
    	// json == javascript object
    	jQuery.ajax({
    		url: baseUrl + "/ajax/updateCoefficentCart ", //->action
    		type: "post",
    		contentType: "application/json",
    		data: JSON.stringify(data),

    		dataType: "json", // kieu du lieu tra ve tu controller la json
    		success: function(jsonResult) {
    			// tăng số lượng sản phẩm trong giỏ hàng trong icon
    			$( "#quanlity_" + productId ).html(jsonResult.currentProductQuality);
    			$( ".totalPrice" ).html(jsonResult.totalPrice);
    			$("#totalPriceItem_"+productId).html("Price:$"+jsonResult.currentPriceItem)+"";
    			$( "#tamTinh" ).html(jsonResult.totalPrice);
    		},
    		error: function(jqXhr, textStatus, errorMessage) {
    			
    		}
    	});
    }
    /*End */
    
    /* Udate total ladders  */
   	const totalLadders = $('.total_ladder');
    function updateLadders() {
    	let cartTotal = 0;
	    totalElements.each((index, totalElement) => {
	      const price = parseInt($(totalElement).prev().text().trim().slice(1));
	      const quantity = parseInt($(quantityInputs[index]).val());
	      const total = price * quantity;
	      $(totalElement).text('$' + total+"");
	      cartTotal += total;
	      const productId = $(totalElement).parent().data('product-id');
	     
	    });
    	
	    const ladder = $(totalLadders).val();
		const surchargePrice =  $(surcharge).val();  
    	const totalPriceCaculated = ladder * cartTotal + parseInt(surchargePrice);
    	UpdateSurchargeAndCoefficentCart('${base }',ladder, surchargePrice);
    	cartTotalElement.text('$' + totalPriceCaculated);
    }
    totalLadders.on('input',updateLadders);
    /* End  */
    
    /* Update quantity of item in cart */
   	  const quantityInputs = $('.quantity-input');
	  const totalElements = $('.total');
	  const cartTotalElement = $('#cart-total');
	
	  function updateTotal() {
	    let cartTotal = 0;
	    totalElements.each((index, totalElement) => {
	      const price = parseInt($(totalElement).prev().text().trim().slice(1));
	      const quantity = parseInt($(quantityInputs[index]).val());
	      /* console.log($(totalElement).prev().text().trim().slice(1));  */
	      const total = price * quantity;
	      $(totalElement).text('$' + total+"");
	      cartTotal += total;
	      const productId = $(totalElement).parent().data('product-id');
	      UpdateQuanlityCart('${base }',productId, quantity);
	    });
	   /*  cartTotalElement.text('$' + cartTotal); */
	
    	
    	const ladder = $(totalLadders).val();
		const surchargePrice =  $(surcharge).val();  
    	const totalPriceCaculated = ladder * cartTotal + parseInt(surchargePrice);
		
    	cartTotalElement.text('$' + totalPriceCaculated);
	  }
	  quantityInputs.on('input', updateTotal);
    
	  save = function(productId, quanlity) {
    	
		let data = {
				productId:productId,
				quanlity:quanlity,
				
				
			};
			
			// $ === jQuery
			// json == javascript object
			jQuery.ajax({
				url : "/addMedicineToOrder/{productId}",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),
				
				
				dataType : "json", // kieu du lieu tra ve tu controller la json
				success : function(jsonResult) {
					let totalItems=jsonResult.totalItems;
				
					$("#totalCartItemId").html(totalItems);
					
					location.reload(); 
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 
					alert("error");
				}
			});
		}
    function UpdateQuanlityCart(baseUrl, productId, quanlity) {
    	
    	// javascript object.  data la du lieu ma day len action cua controller
    	let data = {
    		productId: productId, // lay theo id	
    		quanlity: quanlity
    	};
    	
    	// $ === jQuery
    	// json == javascript object
    	jQuery.ajax({
    		url: baseUrl + "/ajax/updateQuanlityCart", //->action
    		type: "post",
    		contentType: "application/json",
    		data: JSON.stringify(data),

    		dataType: "json", // kieu du lieu tra ve tu controller la json
    		success: function(jsonResult) {
    			// tăng số lượng sản phẩm trong giỏ hàng trong icon
    			$( "#quanlity_" + productId ).html(jsonResult.currentProductQuality);
    			$( ".totalPrice" ).html(jsonResult.totalPrice);
    			$("#totalPriceItem_"+productId).html("Price:$"+jsonResult.currentPriceItem)+"đ";
    			$( "#tamTinh" ).html(jsonResult.totalPrice);
    		},
    		error: function(jqXhr, textStatus, errorMessage) {
    			
    		}
    	});
    }

    	
    function DeleteItemCart(baseUrl, productId, quanlity) {
    	
    	// javascript object.  data la du lieu ma day len action cua controller
    	let data = {
    		productId: productId, // lay theo id	
    		quanlity: quanlity
    	};
    	
    	// $ === jQuery
    	// json == javascript object
    	jQuery.ajax({
    		url: baseUrl + "/ajax/deleteItemCart", //->action
    		type: "post",
    		contentType: "application/json",
    		data: JSON.stringify(data),

    		dataType: "json", // kieu du lieu tra ve tu controller la json
    		success: function(jsonResult) {
    			// tăng số lượng sản phẩm trong giỏ hàng trong icon
    			$( "#quanlity_" + productId ).html(jsonResult.currentProductQuality);
    			$( ".totalPrice" ).html(jsonResult.totalPrice);
    			
    			$( "#tamTinh" ).html(jsonResult.totalPrice);
    		 location.reload();  
    		},
    		error: function(jqXhr, textStatus, errorMessage) {
    			
    		}
    	});
    }
    /*End */
    
    
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
<style>
body {
  font-family: Arial, sans-serif;
}

h1 {

  margin-bottom: 24px;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th {

  text-align: left;
  padding: 12px;
  border-bottom: 2px solid #ddd;
}

td {

  text-align: left;
  padding: 12px;
  border-bottom: 1px solid #ddd;
}

td input {
  width: 80px;


  text-align: center;
}

button {  
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #3e8e41;
}

form {

}

label {
  
  margin-right: 12px;
}

input[type="text"],
input[type="number"] {
 
 
  border: 1px solid #ddd;
  border-radius: 4px;
  margin-right: 12px;
}

input[type="submit"] {
  padding: 6px 12px;
  
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

p {
  
  margin-top: 24px;
}
.total_ladder{
	 text-align: center;
	 width: 80%;
}

</style>
</html>