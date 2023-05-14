package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.hanu.clinicManagementSystem.controllers.BaseController;
import edu.hanu.clinicManagementSystem.dto.user.SaleOrder;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.admin.SaleOrderService;
import edu.hanu.clinicManagementSystem.service.admin.UserService;



@Controller
public class DashBoardController extends BaseController {
	@Autowired
	private SaleOrderService saleOrderService;
	@Autowired
	private UserService userService;
	@RequestMapping(value= {"/admin"}, method =RequestMethod.GET )
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{
		model.addAttribute("ticks","[[1, \"Ngày hôm nay\"], [2, \"Ngày hôm qua\"], [3, \"Ngày hôm kia\"]]");
		
		List<SaleOrder> saleOrdersLastest1Day = saleOrderService.getAllOrderByTodayLatest(1);
		BigDecimal moneyLastestDay = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest1Day.size();i++) {	
			 moneyLastestDay = moneyLastestDay.add((saleOrdersLastest1Day.get(i).getTotal())); 
		}
		
		List<SaleOrder> saleOrdersLastest2Day = saleOrderService.getAllOrderByTodayLatest(2);
		BigDecimal moneyLastest2Day = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest2Day.size();i++) {	
			 moneyLastest2Day = moneyLastest2Day.add((saleOrdersLastest2Day.get(i).getTotal())); 
		}
		
		List<SaleOrder> saleOrdersLastest3Day = saleOrderService.getAllOrderByTodayLatest(3);
		BigDecimal moneyLastest3Day = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest3Day.size();i++) {	
			 moneyLastest3Day = moneyLastest3Day.add((saleOrdersLastest3Day.get(i).getTotal())); 
		}
		
		String data = "[\r\n"
				+ "            [1, "+ moneyLastestDay  + "],\r\n"
				+ "            [2, "+ moneyLastest2Day.subtract(moneyLastestDay) + " ],\r\n"
				+ "            [3, "+ moneyLastest3Day.subtract(moneyLastest2Day) + "]\r\n"
				+ "        ]";
		
		List<User> userLastest1Day = userService.getAllOrderByDayLatest(1);
		model.addAttribute("data",data);
		model.addAttribute("revenue",moneyLastestDay);
		model.addAttribute("numberOrder",saleOrdersLastest1Day.size());
		model.addAttribute("newOrder",saleOrdersLastest1Day);
		model.addAttribute("newUser",userLastest1Day.size());
		return "/admin/index";
	}
	
	@RequestMapping(value= {"/admin/month"}, method =RequestMethod.GET )
	public String indexMonth(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{
		model.addAttribute("ticks","[[1, \"Tháng hiện tại\"], [2, \"Tháng trước\"], [3, \"Tháng trước nữa\"]]");
		
		List<SaleOrder> saleOrdersLastest1Month = saleOrderService.getAllOrderByMonthLatest(1);
		BigDecimal moneyLastestMonth = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest1Month.size();i++) {	
			moneyLastestMonth = moneyLastestMonth.add((saleOrdersLastest1Month.get(i).getTotal())); 
		}
		
		List<SaleOrder> saleOrdersLastest2Month = saleOrderService.getAllOrderByMonthLatest(2);
		BigDecimal moneyLastest2Month = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest2Month.size();i++) {	
			moneyLastest2Month = moneyLastest2Month.add((saleOrdersLastest2Month.get(i).getTotal())); 
		}
		
		List<SaleOrder> saleOrdersLastest3Month = saleOrderService.getAllOrderByMonthLatest(3);
		BigDecimal moneyLastest3Month = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest3Month.size();i++) {	
			moneyLastest3Month = moneyLastest3Month.add((saleOrdersLastest3Month.get(i).getTotal())); 
		}
		
		String data = "[\r\n"
				+ "            [1, "+ moneyLastestMonth  + "],\r\n"
				+ "            [2, "+ moneyLastest2Month.subtract(moneyLastestMonth) + " ],\r\n"
				+ "            [3, "+ moneyLastest3Month.subtract(moneyLastest2Month) + "]\r\n"
				+ "        ]";
		
		
		model.addAttribute("data",data);
		model.addAttribute("revenue",moneyLastestMonth);
		model.addAttribute("numberOrder",saleOrdersLastest1Month.size());
		model.addAttribute("newOrder",saleOrdersLastest1Month);
		
		List<User> userLastest1Month = userService.getAllOrderByMonthLatest(1);
		model.addAttribute("newUser",userLastest1Month.size());
		return "/admin/index";
	}
	
	@RequestMapping(value= {"/admin/year"}, method =RequestMethod.GET )
	public String indexYear(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{
		model.addAttribute("ticks","[[1, \"Năm hiện tại\"], [2, \"Năm trước\"], [3, \"Năm trước nữa\"]]");
		
		List<SaleOrder> saleOrdersLastest1Month = saleOrderService.getAllOrderByYearLatest(1);
		BigDecimal moneyLastestMonth = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest1Month.size();i++) {	
			moneyLastestMonth = moneyLastestMonth.add((saleOrdersLastest1Month.get(i).getTotal())); 
		}
		
		List<SaleOrder> saleOrdersLastest2Month = saleOrderService.getAllOrderByYearLatest(2);
		BigDecimal moneyLastest2Month = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest2Month.size();i++) {	
			moneyLastest2Month = moneyLastest2Month.add((saleOrdersLastest2Month.get(i).getTotal())); 
		}
		
		List<SaleOrder> saleOrdersLastest3Month = saleOrderService.getAllOrderByYearLatest(3);
		BigDecimal moneyLastest3Month = BigDecimal.valueOf(0);
		for(int i = 0; i <saleOrdersLastest3Month.size();i++) {	
			moneyLastest3Month = moneyLastest3Month.add((saleOrdersLastest3Month.get(i).getTotal())); 
		}
		
		String data = "[\r\n"
				+ "            [1, "+ moneyLastestMonth  + "],\r\n"
				+ "            [2, "+ moneyLastest2Month.subtract(moneyLastestMonth) + " ],\r\n"
				+ "            [3, "+ moneyLastest3Month.subtract(moneyLastest2Month) + "]\r\n"
				+ "        ]";
		
		
		model.addAttribute("data",data);
		model.addAttribute("revenue",moneyLastestMonth);
		model.addAttribute("numberOrder",saleOrdersLastest1Month.size());
		model.addAttribute("newOrder",saleOrdersLastest1Month);
		
		List<User> userLastest1Month = userService.getAllOrderByMonthLatest(1);
		model.addAttribute("newUser",userLastest1Month.size());
		return "/admin/index";
	}
//	@RequestMapping(value = { "/admin/" }, method = RequestMethod.GET)
//	public String type(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//	        throws IOException {
//	    String categoryId = request.getParameter("dmy");
//	    System.out.println(categoryId);
//	  
//	    Integer category = getInteger(categoryId);
//	    if (category != null) {
//	        if (category == 1) {
//	            model.addAttribute("ticks", "[[1, \"Ngày hôm qua\"], [2, \"Ngày hôm kia\"], [3, \"Ngày hôm kìa\"]]");
//	        } else if (category == 2) {
//	            model.addAttribute("ticks", "[[1, \"Tháng hiện tại\"], [2, \"Tháng trước\"], [3, \"Tháng trước nữa\"]]");
//	        }
//	    }
//
//	    return "/admin/index";
//	}
//
//	public Integer getInteger(String value) {
//	    try {
//	        return Integer.parseInt(value);
//	    } catch (NumberFormatException e) {
//	        return null;
//	    }
//	}

}
