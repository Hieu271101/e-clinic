package edu.hanu.clinicManagementSystem.service.admin;

import java.io.File;
import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import edu.hanu.clinicManagementSystem.entities.admin.Admin;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.BaseService;

@Service
public class AdminService extends BaseService<Admin> {
	@Override
	protected Class<Admin> clazz() {
		// TODO Auto-generated method stub
		return Admin.class;
	}
	
	public Admin loadUserByUsername(String userName) {
		String sql = "select * from admin u where u.username = '" + userName + "' and status = 1";
		return this.getEntityByNativeSQL(sql);
	}
	
	@Transactional
	public Admin add(Admin p, MultipartFile productAvatar, MultipartFile[] productPictures) throws IllegalStateException, IOException {
	    // Check if an avatar was uploaded
	    if (!isEmptyUploadFile(productAvatar)) {
	        String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());
	        // Specify the path to the folder where the avatar will be saved
	        String pathToAvatar = "C:/upload/admin/avatar/" + fileName;

	        // Check if the folder exists, and create it if it doesn't
	        File folder = new File("C:/upload/admin/avatar/");
	        if (!folder.exists()) {
	            folder.mkdirs();
	        }

	        // Save the avatar to the specified path
	        productAvatar.transferTo(new File(pathToAvatar));
	        p.setImg("admin/avatar/" + fileName);
	    }
	    // Save the user to the database
	    return super.saveOrUpdate(p);
	}


	@Transactional
	public Admin update(Admin p, MultipartFile productAvatar, MultipartFile[] productPictures) throws IllegalStateException, IOException {
	    UserImagesService productImagesService = new UserImagesService();

	    // lấy thông tin cũ của product theo id
	    Admin productInDb = super.getById(p.getId());

	    // có đẩy avartar ??? => xóa avatar cũ đi và thêm avatar mới
	    if (!isEmptyUploadFile(productAvatar)) {
	        // xóa avatar trong folder lên
	        new File("C:/upload/" + productInDb.getImg()).delete();

	        // update avatar mới
	        String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());

	        // Tạo thư mục lưu trữ nếu nó không tồn tại
	        File folder = new File("C:/upload/admin/avatar/");
	        if (!folder.exists()) {
	            folder.mkdirs();
	        }

	        // Lưu avatar vào thư mục lưu trữ
	        productAvatar.transferTo(new File("C:/upload/admin/avatar/" + fileName));
	        p.setImg("admin/avatar/" + fileName);
	    } else {
	        // sử dụng lại avartar cũ
	        p.setImg(productInDb.getImg());
	    }

	    return super.saveOrUpdate(p);
	}

	
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
}
