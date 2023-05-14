package edu.hanu.clinicManagementSystem.controllers.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.hanu.clinicManagementSystem.controllers.BaseController;
import edu.hanu.clinicManagementSystem.entities.admin.Admin;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.admin.AdminService;
import edu.hanu.clinicManagementSystem.service.admin.UserService;

@Controller
public class UserController  extends BaseController{
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;
	
//	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
//	public String changePasswordPOST(final Model model, final HttpServletRequest request, final HttpServletResponse response) {
//		return "/user/changePassword";
//	}
	@RequestMapping(value= {"/changePassword/{id}"}, method = RequestMethod.GET )
	public String adminProductDetail(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("id") int id
								   ) throws IOException {
		Admin adminInDbs = adminService.getById(id); 
		model.addAttribute("user",adminInDbs);
		

		return "user/changePassword";
		
	}
	
	@RequestMapping(value= {"/changePassword"}, method =RequestMethod.POST )
	public String addUserPOST(final ModelMap model, final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("user") Admin user
			)	
			{		
//		System.out.println("----------------------------------------------------------------------");
//		System.out.println(user.getUserName());
//		System.out.println(user.getPassword());
//		System.out.println(user.getAddress());
//		System.out.println(user.getName());
//		System.out.println(user.getEmail());
//		System.out.println(user.getPhone());
//		System.out.println(user.getGender());
//		System.out.println(user.getDob());
//		System.out.println(user.getAddress());
////		System.out.println(user.getRoleId());
//		System.out.println(user.getImg());
//		System.out.println("----------------------------------------------------------------------");
//		List<Medicine> medicines = medicineService.findAllActive();		
//		model.addAttribute("medicines",medicines);
		User userInDbs = userService.getById(user.getId());
		
		if (user.getId() == null || user.getId() <= 0) {
			
//			userService.add(user, productAvatar, productPictures);

		}
		// chỉnh sửa
		else
		{ 	
//			userInDbs.setPassword(user.getPassword());
			userService.saveOrUpdate(userInDbs);

		}
	
		return "/user/changePassword";
	}
}
