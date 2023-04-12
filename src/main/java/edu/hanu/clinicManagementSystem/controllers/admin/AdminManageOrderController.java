package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;

@Controller
public class AdminManageOrderController {
	@Autowired
	private MedicineService medicineService;
	
	
	@RequestMapping(value= {"/order"}, method =RequestMethod.GET )
	public String orderForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
		List<Medicine> medicines = medicineService.findAllActive();		
		model.addAttribute("newMedicine",medicines);
		return "/admin/addOrder";
	}
}
