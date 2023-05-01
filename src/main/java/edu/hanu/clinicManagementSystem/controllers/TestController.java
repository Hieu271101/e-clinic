package edu.hanu.clinicManagementSystem.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.test.Cart;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;

@Controller
public class TestController extends BaseController{
	@Autowired
	private MedicineService medicineService;
	
	
	@RequestMapping(value= {"/test"}, method =RequestMethod.GET )
	public String addUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
		List<Medicine> medicines = medicineService.findAllActive();		
		model.addAttribute("medicines",medicines);
		return "/admin/test";
	}
	@RequestMapping(value= {"/header"}, method =RequestMethod.GET )
	public String header(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
//		List<Medicine> medicines = medicineService.findAllActive();		
//		model.addAttribute("medicines",medicines);
		return "/admin/header";
	}
//	@Controller
//	public class CartController {
//
//	    private Cart cart = new Cart();
//
//	    @PostMapping("/cart/add")
//	    public String addItemToCart(@RequestParam String itemName, @RequestParam int quantity) {
//	        cart.addItemToCart(itemName, quantity);
//	        return "redirect:/cart";
//	    }
//	}
	

}
