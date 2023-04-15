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
	public User add(User p, MultipartFile productAvatar, MultipartFile[] productPictures)
			throws IllegalStateException, IOException {
//
//		// kiểm tra xem admin có đẩy avatar lên không ???
		if (!isEmptyUploadFile(productAvatar)) { // có đẩy avatar lên.

			String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());

			// tạo đường dẫn tới folder chứa avatar
			String pathToAvatar = "C:/upload/product/avatar/" + fileName;

			// lưu avatar vào đường dẫn trên
			productAvatar.transferTo(new File(pathToAvatar));

			p.setImg("product/avatar/" + fileName);
		}

		// có đẩy pictures(product_images) ???
//		if (!isEmptyUploadFile(productPictures)) { // có đẩy pictures lên.
//
//			// nếu admin đẩy lên thì duyệt tất cả file đẩy lên và lưu trên server
//			for (MultipartFile pic : productPictures) {
//				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());
//
//				// lưu ảnh admin đẩy lên vào server
//				pic.transferTo(new File("C:/upload/product/pictures/" + fileName));
//
//				// tạo mới 1 bản ghi product_images
//				ProductImages pi = new ProductImages();
//				pi.setPath("product/pictures/" + fileName);
//
//				pi.setTitle(fileName);
//				p.addProductImages(pi);
//			}
//		}

		// tạo seo: bổ sung thêm thời gian tính bằng miliseconds để tránh trùng seo
//		p.setSeo(new Slugify().slugify(p.getTitle() + "-" + System.currentTimeMillis()));

		// lưu vào database
		return super.saveOrUpdate(p);

	}

	@Transactional
	public User update(User p, MultipartFile productAvatar, MultipartFile[] productPictures)
			throws IllegalStateException, IOException {

		UserImagesService productImagesService = new UserImagesService();

		// lấy thông tin cũ của product theo id
		User productInDb = super.getById(p.getId());

		// có đẩy avartar ??? => xóa avatar cũ đi và thêm avatar mới
		if (!isEmptyUploadFile(productAvatar)) {
			// xóa avatar trong folder lên
			new File("C:/upload/" + productInDb.getImg()).delete();

			// update avatar mới
			String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());
			productAvatar.transferTo(new File("C:/upload/product/avatar/" + fileName));
//			p.setAvatar("product/avatar/" + fileName);
			p.setImg("product/avatar/" + fileName);
		} else {
			// sử dụng lại avartar cũ
			p.setImg(productInDb.getImg());
		}

		// có đẩy pictures ???
//		if (!isEmptyUploadFile(productPictures)) {
//
//			// xóa pictures cũ
//			if (productInDb.getImgs() != null && productInDb.getImgs().size() > 0) {
//				for (ProductImages opi : productInDb.getImgs()) {
//					// xóa avatar trong folder lên
//					new File("C:/upload/" + opi.getPath()).delete();
//
//					// xóa dữ liệu trong database
//					productImagesService.delete(opi);
//				}
//			}
//
//			// update pictures mới
//			for (MultipartFile pic : productPictures) {
//				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());
//
//				pic.transferTo(new File("C:/upload/product/pictures/" + fileName));
//
//				ProductImages pi = new ProductImages();
//				pi.setPath("product/pictures/" + fileName);
//				pi.setTitle(fileName);
//
//				p.addProductImages(pi);
//			}
//		}
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
