package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;
import edu.hanu.clinicManagementSystem.service.admin.UserService;

@Controller
public class AdminManageOrderController {
	@Autowired
	private MedicineService medicineService;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value= {"/order"}, method =RequestMethod.GET )
	public String orderForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
		List<Medicine> medicines = medicineService.findAllActive();		
		model.addAttribute("medicines",medicines);
		return "/admin/addOrder";
	}
	@RequestMapping(value= {"/order/{id}"}, method = RequestMethod.GET )
	public String orderUser(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("id") int id
								   ) throws IOException {

		// lấy product trong db theo ID
		User userInDb = userService.getById(id);
		model.addAttribute("user", userInDb);
		
		return "/admin/addOrder";
		
	}
	
}
