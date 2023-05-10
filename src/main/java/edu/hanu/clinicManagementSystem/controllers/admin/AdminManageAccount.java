package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import edu.hanu.clinicManagementSystem.entities.admin.Admin;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.service.admin.AdminService;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;

@Controller
public class AdminManageAccount {
	@Autowired
	private MedicineService medicineService;
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value= {"/admin/account"}, method =RequestMethod.GET )
	public String account(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
//		List<Medicine> medicines = medicineService.findAllActive();		
//		model.addAttribute("medicines",medicines);
		List<Admin> admins = adminService.findAllActive();
		model.addAttribute("newAccount",admins);
		return "/admin/manageAccount";
	}
	@RequestMapping(value= {"/admin/addAccount"}, method =RequestMethod.GET )
	public String addAccount(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
		Admin admin = new Admin();
		model.addAttribute("newAccount",admin);
		
		return "/admin/addAccount";
	}
	@RequestMapping(value="/admin/addAccount",method=RequestMethod.POST)
	public String adminProductAddOrUpdate(final Model model, 
										  final HttpServletRequest request,
										  final HttpServletResponse response, 
										  @ModelAttribute("newAccount") Admin admin

//										  ,@RequestParam("productAvatar") MultipartFile productAvatar
//										  ,@RequestParam("productPictures") MultipartFile[] productPictures
	) throws Exception {
		
//		adminService.saveOrUpdate(admin);
		if(checkExistAccount(admin)) {
			model.addAttribute("WarningNotification","Tài khoản này đã tồn tại, Mời tạo tài khoản khác");
			
			return "/admin/addAccount";
		}else {
			Date date=new Date();
			date=java.util.Calendar.getInstance().getTime();
			admin.setCreatedDate(date);
			admin.setPassword(new BCryptPasswordEncoder(4).encode(admin.getPassword()));
			//add user vào database
			adminService.saveOrUpdate(admin);
			
			
//			User userInDbs=userService.getById(newAccount.getId());
//			Role role=roleService.getById(2);
//			userInDbs.addRoles(role);
			//add role
//			adminService.saveOrUpdate(admin);
		}
		
	
		return "redirect:";

	}
	


		private boolean checkExistAccount(Admin newUser){
		//	List<User>usersInDbs=userService.executeNativeSql("SELECT * FROM data.tbl_users;");
			
			for (Admin user : adminService.findAll()) {
				if(newUser.getUsername().equalsIgnoreCase(user.getUsername())) {
					return true;
				}
			}
			return false;
		}
	
	@RequestMapping(value= {"/admin/account/{id}"}, method = RequestMethod.GET )
	public String adminProductDetail(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("id") int id
								   ) throws IOException {

		// lấy product trong db theo ID
		Admin adminIndbs = adminService.getById(id);
		model.addAttribute("newUser", adminIndbs);
		
		return "admin/editUser";
		
	}
	@RequestMapping(value = { "/ajax/checkPassword" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteProduct(final Model model, 
															final HttpServletRequest request,
															final HttpServletResponse response, 
															final @RequestBody Admin admin) {
//		System.out.println(product.getName());
		System.out.println(admin.getId());
		System.out.println(admin.getPassword());
		Admin adminInDbs = adminService.getById(admin.getId());

		Map<String, Object> jsonResult = new HashMap<String, Object> ();
		System.out.println(adminInDbs.getPassword());
		System.out.println(admin.getPassword());
		System.out.println(adminInDbs.getPassword().equals(admin.getPassword()));
		if(adminInDbs.getPassword().equals(admin.getPassword())) {
			jsonResult.put("result", true); //
		}else {
			jsonResult.put("result", false);
		}
		
		return ResponseEntity.ok(jsonResult);
	}
	
}
