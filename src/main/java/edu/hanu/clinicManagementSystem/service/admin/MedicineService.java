package edu.hanu.clinicManagementSystem.service.admin;

import java.io.File; 
import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import edu.hanu.clinicManagementSystem.dto.admin.MedicineSearchModel;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.service.BaseService;
import edu.hanu.clinicManagementSystem.service.PagerData;

@Service
public class MedicineService  extends BaseService<Medicine>{

	@Override
	protected Class<Medicine> clazz() {
		// TODO Auto-generated method stub
		return Medicine.class;
	}
	
	@Transactional
	public Medicine add(Medicine p)
			throws IllegalStateException, IOException {

		return super.saveOrUpdate(p);
		
	}
	
	@Transactional
	public Medicine update(Medicine p)
			throws IllegalStateException, IOException {
		
		
		return super.saveOrUpdate(p);
	}
	
	public PagerData<Medicine> search(MedicineSearchModel searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM medicine  p WHERE 1=1";

		if (searchModel != null) {

			// tìm kiếm theo category
//			if (searchModel.getCategoryId() != null && searchModel.getCategoryId() > 0) {
//				sql += " and category_id = " + searchModel.getCategoryId();
//			}

			// tìm theo seo
//					if (!StringUtils.isEmpty(searchModel.seo)) {
//						sql += " and p.seo = '" + searchModel.seo + "'";
//					}

			// tìm kiếm sản phẩm hot
//					if (searchModel.isHot != null) {
//						sql += " and p.is_hot = '" + searchModel.seo + "'";
//					}

			// tìm kiếm theo title và description
//			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
//				sql += " and (p.title like '%" + searchModel.getKeyword() + "%'" + 
//						     " or p.detail_description like '%" + searchModel.getKeyword() + "%'" + 
//						     " or p.short_description like '%" + searchModel.getKeyword() + "%')";
//			}

			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
				sql += " and (p.name like '%" + searchModel.getKeyword() + "%'" + " or p.description like '%"
						+ searchModel.getKeyword() + "%'" + ")";

//						     " or p.description like '%" + searchModel.getKeyword() + "%'" + "%') "
				;
			}

		}

		// chi lay san pham chua xoa
//						sql += " and p.status=1 ";

		return getEntitiesByNativeSQL(sql, searchModel.getPage());
	}
	
}
