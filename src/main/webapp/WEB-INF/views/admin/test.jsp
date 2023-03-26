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
<div class="form-group">
										<label>Tên thuốc</label> <input path="name" class="form-control"
											type="text" placeholder="Điền Thông tin tại đây">
									</div>
									<div class="form-group">
										<label>Số lượng</label> <input path="quantity" class="form-control"
											type="number" placeholder="Điền Thông tin tại đây">
									</div>
									<div class="form-group">
										<label>Giá bán</label> <input path="price" class="form-control"
											type="number" placeholder="Điền Thông tin tại đây">
									</div>
									<div class="form-group">
										<label>Giá gốc</label> <input path="cost" class="form-control"
											type="number" placeholder="Điền Thông tin tại đây">
									</div>
									<div class="form-group">
										<label>Hạn sử dụng( tháng/ngày/năm)</label> <input path="exp"
											class="form-control" type="date" id="date" name="date"
											value="2023-03-26">
									</div>
									<div class="form-group">
										<label>Nhà cung cấp</label> <input class="form-control" path="supplier"
											type="text" placeholder="Điền Thông tin tại đây">
									</div>

									<div class="form-group">
										<label>Mô tả</label>
										<sf:textarea class="form-control" path="description" id="summernote" name="message" path="description"
											rows="3"></sf:textarea>
									</div>

									<div class="form-group row">
										<div class="col-sm-12 ml-sm-auto">
											<button class="btn btn-info" type="submit">Submit</button>
										</div>
									</div>

</body>
</html>