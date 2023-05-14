package edu.hanu.clinicManagementSystem.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.hanu.clinicManagementSystem.controllers.BaseController;

@Controller
public class HomePageController extends BaseController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		
		return "index";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "user/login";
	}
	@RequestMapping(value = "/appoinment", method = RequestMethod.GET)
	public String appoinment() {
		
		return "user/appoinment";
	}
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		
		return "user/contact";
	}
	@RequestMapping(value = "/doctor", method = RequestMethod.GET)
	public String doctor() {
		
		return "user/doctor";
	}
	@RequestMapping(value = "/specialize", method = RequestMethod.GET)
	public String specialize() {
		
		return "user/specialize";
	}
	@RequestMapping(value = "/timeTable", method = RequestMethod.GET)
	public String timeTable() {
		
		return "user/timeTable";
	}
}
