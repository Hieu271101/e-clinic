//this class is UserService
package edu.hanu.clinicManagementSystem.service.admin;

import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import edu.hanu.clinicManagementSystem.dto.admin.MedicineSearchModel;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.BaseService;
import edu.hanu.clinicManagementSystem.service.PagerData;

@Service
public class UserService extends BaseService<User> {

	@Override
	protected Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}

	@Transactional
	public User add(User p) throws IllegalStateException, IOException {

		return super.saveOrUpdate(p);

	}

	@Transactional
	public User update(User p) throws IllegalStateException, IOException {

		return super.saveOrUpdate(p);
	}

	public PagerData<User> search(MedicineSearchModel searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM user  p WHERE 1=1";

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
		//	sql += " and p.status=1 ";

		return getEntitiesByNativeSQL(sql, searchModel.getPage());
	}

}
