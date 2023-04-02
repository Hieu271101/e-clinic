package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.admin.UserService;

@Controller
public class AdminManageUserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value= {"/admin/user"}, method =RequestMethod.GET )
	public String userManage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
		List<User> users = userService.findAllActive();		
		model.addAttribute("users",users);
		return "/admin/ManageUser";
	}
	
	@RequestMapping(value= {"/admin/user/a"}, method =RequestMethod.GET )
	public String profileUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
//		List<Medicine> medicines = medicineService.findAllActive();		
//		model.addAttribute("medicines",medicines);
		return "/user/UserProfile";
	}
	@RequestMapping(value= {"/admin/addUser"}, method =RequestMethod.GET )
	public String addUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
//		List<User> users = userService.findAllActive();		
		model.addAttribute("newUser",new User());
		return "/admin/AddUser";
	}
	
	@RequestMapping(value= {"/admin/addUser"}, method =RequestMethod.POST )
	public String addUserPOST(final ModelMap model, final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("newUser") User user) throws IOException{		
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
		if (user.getId() == null || user.getId() <= 0) {
			userService.add(user);
		}
		// chỉnh sửa
		else
		{ 
			userService.update(user);
		}
	
		return "/admin/AddUser";
	}
	
	
}
