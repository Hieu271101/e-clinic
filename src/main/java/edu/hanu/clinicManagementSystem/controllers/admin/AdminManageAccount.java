package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException; 
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.Null;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.hanu.clinicManagementSystem.controllers.BaseController;
import edu.hanu.clinicManagementSystem.dto.user.SaleOrder;
import edu.hanu.clinicManagementSystem.entities.admin.Admin;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.admin.AdminService;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;
import javassist.expr.NewArray;

@Controller
public class AdminManageAccount  extends BaseController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private final PasswordEncoder passwordEncoder;
	
    @Autowired
    public AdminManageAccount(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }
    @RequestMapping(value= {"/admin/profile"}, method = RequestMethod.GET )
	public String adminProfile(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response 
								   
								   ) throws IOException {

    	  Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
          String currentUsername = authentication.getName();
          
       
          // Perform password change logic here
          Admin adminInDbs = adminService.loadUserByUsername(currentUsername);
          model.addAttribute("user",adminInDbs);
        
  			model.addAttribute("userOrders", "");
		return "/user/UserProfile";
		
	}
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

										  ,@RequestParam("productAvatar") MultipartFile productAvatar
										  ,@RequestParam("productPictures") MultipartFile[] productAvatars
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
			adminService.add(admin, productAvatar, productAvatars);
			
			
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
	@RequestMapping(value = "/admin/changePassword", method = RequestMethod.GET)
	public String changePassword(final Model model, final HttpServletRequest request, final HttpServletResponse response) {
			
		return "/user/changePassword";
	}
	@RequestMapping(value = "/admin/changePassword", method = RequestMethod.POST)
	public String changePassword(
            @RequestParam("oldPassword") String oldPassword,
            @RequestParam("newPassword") String newPassword,
            @RequestParam("confirmPassword") String confirmPassword,
            Model model
    ) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentUsername = authentication.getName();
        
     
        // Perform password change logic here
        Admin adminInDbs = adminService.loadUserByUsername(currentUsername);
       
        if(passwordEncoder.matches(oldPassword, adminInDbs.getPassword() )) {
        	 adminInDbs.setPassword(new BCryptPasswordEncoder(4).encode(newPassword));
        	 adminService.saveOrUpdate(adminInDbs);
        	 model.addAttribute("message", "Đã đổi mật khẩu");
        	
        }else {
			adminInDbs.setPassword(new BCryptPasswordEncoder(4).encode(newPassword));
			
			 model.addAttribute("message", "Sai mật khẩu hiện tại");
		}

        return "/user/changePassword";
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
	
	@RequestMapping(value= {"/admin/settings"}, method = RequestMethod.GET )
	public String editUser(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response
								  
								   ) throws IOException {

		// lấy product trong db theo ID
		 Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
         String currentUsername = authentication.getName();
         
      
         // Perform password change logic here
         Admin adminInDbs = adminService.loadUserByUsername(currentUsername);
		model.addAttribute("newUser", adminInDbs);
		
		return "admin/editAdminProfile";
		
	}
	
	@RequestMapping(value= {"/admin/settings"}, method =RequestMethod.POST )
	public String editUserPOST(final ModelMap model, final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("newUser") Admin admin,		
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures,
			@ModelAttribute("userLogined") Admin userLogined) throws IOException{		
			
			
		  Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
          String currentUsername = authentication.getName();
          
       
          // Perform password change logic here
          Admin adminInDbs = adminService.loadUserByUsername(currentUsername);
          adminInDbs.setName(admin.getName());
          adminInDbs.setEmail(admin.getEmail());
          adminInDbs.setPhone(admin.getPhone());
          adminInDbs.setGender(admin.getGender());
          adminInDbs.setDob(admin.getDob());
          adminInDbs.setAddress(admin.getAddress());
          adminService.update(adminInDbs, productAvatar, productPictures);
          	
          String fileName = productAvatar.getOriginalFilename();
          adminInDbs.setImg("admin/avatar/" + fileName);
        
          model.addAttribute("userLogined", adminInDbs);
		return "redirect:";
	}
	
}
