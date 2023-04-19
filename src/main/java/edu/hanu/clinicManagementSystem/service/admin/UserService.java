//this class is UserService
package edu.hanu.clinicManagementSystem.service.admin;

import java.io.File; 
import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;


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
	public User add(User p, MultipartFile productAvatar, MultipartFile[] productPictures) throws IllegalStateException, IOException {
	    // Check if an avatar was uploaded
	    if (!isEmptyUploadFile(productAvatar)) {
	        String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());
	        // Specify the path to the folder where the avatar will be saved
	        String pathToAvatar = "C:/upload/product/avatar/" + fileName;

	        // Check if the folder exists, and create it if it doesn't
	        File folder = new File("C:/upload/product/avatar/");
	        if (!folder.exists()) {
	            folder.mkdirs();
	        }

	        // Save the avatar to the specified path
	        productAvatar.transferTo(new File(pathToAvatar));
	        p.setImg("product/avatar/" + fileName);
	    }
	    // Save the user to the database
	    return super.saveOrUpdate(p);
	}


	@Transactional
	public User update(User p, MultipartFile productAvatar, MultipartFile[] productPictures) throws IllegalStateException, IOException {
	    UserImagesService productImagesService = new UserImagesService();

	    // lấy thông tin cũ của product theo id
	    User productInDb = super.getById(p.getId());

	    // có đẩy avartar ??? => xóa avatar cũ đi và thêm avatar mới
	    if (!isEmptyUploadFile(productAvatar)) {
	        // xóa avatar trong folder lên
	        new File("C:/upload/" + productInDb.getImg()).delete();

	        // update avatar mới
	        String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());

	        // Tạo thư mục lưu trữ nếu nó không tồn tại
	        File folder = new File("C:/upload/product/avatar/");
	        if (!folder.exists()) {
	            folder.mkdirs();
	        }

	        // Lưu avatar vào thư mục lưu trữ
	        productAvatar.transferTo(new File("C:/upload/product/avatar/" + fileName));
	        p.setImg("product/avatar/" + fileName);
	    } else {
	        // sử dụng lại avartar cũ
	        p.setImg(productInDb.getImg());
	    }

	    return super.saveOrUpdate(p);
	}


	
//	@Transactional
//	public User add(User p) throws IllegalStateException, IOException {
//
//		return super.saveOrUpdate(p);
//
//	}
//
//	@Transactional
//	public User update(User p) throws IllegalStateException, IOException {
//
//		return super.saveOrUpdate(p);
//	}
	
	/**
	 * dùng để kiểm tra xem admin có upload ảnh product hay không
	 * 
	 * @param image
	 * @return
	 */
	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}

	private String getUniqueUploadFileName(String fileName) {
		String[] splitFileName = fileName.split("\\.");
		return splitFileName[0] + System.currentTimeMillis() + "." + splitFileName[1];
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
