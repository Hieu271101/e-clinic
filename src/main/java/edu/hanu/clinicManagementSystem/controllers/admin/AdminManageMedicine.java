package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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



import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;

@Controller
public class AdminManageMedicine {

	@Autowired
	private MedicineService medicineService;
	
	@RequestMapping(value= {"/admin/medicine"}, method =RequestMethod.GET )
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
		List<Medicine> medicines = medicineService.findAllActive();		
		model.addAttribute("medicines",medicines);
		return "/admin/manageMedicine";
	}
	
	@RequestMapping(value= {"/admin/addmedicine"}, method = RequestMethod.GET )
	public String addMedicine(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
		model.addAttribute("newMedicine", new Medicine());
		return "/admin/addMedicine";
	}
	
	@RequestMapping(value="/admin/addmedicine",method=RequestMethod.POST)
	public String adminProductAddOrUpdate(final Model model, 
										  final HttpServletRequest request,
										  final HttpServletResponse response, 
										  @ModelAttribute("newMedicine") Medicine medicine

//										  ,@RequestParam("productAvatar") MultipartFile productAvatar
//										  ,@RequestParam("productPictures") MultipartFile[] productPictures
	) throws Exception {
		
		if (medicine.getId() == null || medicine.getId() <= 0) {
			medicineService.add(medicine);
		}
		// chỉnh sửa
		else
		{ 
			medicineService.update(medicine);
		}
	
		return "redirect:medicine";

	}
	@RequestMapping(value= {"/admin/addmedicine/{id}"}, method = RequestMethod.GET )
	public String adminProductDetail(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("id") int id
								   ) throws IOException {

		// lấy product trong db theo ID
		Medicine medicineInDb = medicineService.getById(id);
		model.addAttribute("newMedicine", medicineInDb);
		
		return "/admin/addMedicine";
		
	}
	
	@RequestMapping(value = { "/admin/ajax/delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteProduct(final Model model, 
															final HttpServletRequest request,
															final HttpServletResponse response, 
															final @RequestBody Medicine product) {
//		System.out.println(product.getName());
		
		Medicine productInDbs=medicineService.getById(product.getId());
		productInDbs.setStatus(false);
		medicineService.saveOrUpdate(productInDbs);
		
//		System.out.println(contact.getMail());
		
		Map<String, Object> jsonResult = new HashMap<String, Object> ();
		jsonResult.put("statusCode", 200); // status code ví dụ: 200: Success, 500: Error, 404: NotFound
		jsonResult.put("statusMessage", "Cảm ơn bạn "  + ", Chúng tôi sẽ liên hệ sớm nhất!");
		return ResponseEntity.ok(jsonResult);
	}
	
}
