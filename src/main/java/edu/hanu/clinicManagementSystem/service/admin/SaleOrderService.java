package edu.hanu.clinicManagementSystem.service.admin;

import org.springframework.stereotype.Service ;
import org.springframework.util.StringUtils;

import edu.hanu.clinicManagementSystem.dto.user.SaleOrder;
import edu.hanu.clinicManagementSystem.service.BaseService;



@Service
public class SaleOrderService extends BaseService<SaleOrder> {

	@Override
	protected Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}
//	public PagerData<SaleOrder> search(OrderSearchModel searchModel) {
//		// khởi tạo câu lệnh
//		String sql = "SELECT * FROM tbl_saleorder  p WHERE 1=1";
//
//		if (searchModel != null) {
//			
//			
//			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
//				sql += " and (p.customer_name like '%" + searchModel.getKeyword() + "%'"
//						+
//						" or p.customer_phone like '%" + searchModel.getKeyword() + "%'"
//						+
//						" or p.code like '%" + searchModel.getKeyword() + "%'" 
//						+
//						" or p.description like '%" + searchModel.getKeyword() + "%'" 
//						+
//						")";
//
////						     " or p.description like '%" + searchModel.getKeyword() + "%'" + "%') "
//						;
//			}
//			
//		}
//
//		// chi lay san pham chua xoa
////						sql += " and p.status=1 ";
//		
//		return getEntitiesByNativeSQL(sql, searchModel.getPage());
//		
//	}

}