//package edu.hanu.clinicManagementSystem.controllers.admin.RestController;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
//import edu.hanu.clinicManagementSystem.service.admin.MedicineService;
//
//@RestController
//public class MedicineRestController {
//	@Autowired
//	MedicineService medicineService;
//	
//	@RequestMapping
//	@GetMapping("/data/medicine")
//	public List<Medicine> getMedicine(@RequestParam(name = "start", defaultValue = "0") int start,
//	                       @RequestParam(name = "length", defaultValue = "10") int length,
//	                       Model model) {
//		List<Medicine> pagedUsers = medicineService.findAllActive();
//
//	    // Add the paged list of users to the model
//	    model.addAttribute("users", pagedUsers);
//
//	    // Return the view to display the table
//	    return pagedUsers;
//	
//	}
//}
