package edu.hanu.clinicManagementSystem.controllers.admin;

import java.io.IOException;  
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hanu.clinicManagementSystem.controllers.BaseController;
import edu.hanu.clinicManagementSystem.dto.user.CartItems;
import edu.hanu.clinicManagementSystem.dto.user.Carts;
import edu.hanu.clinicManagementSystem.dto.user.SaleOrder;
import edu.hanu.clinicManagementSystem.dto.user.SaleOrderProduct;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.user.User;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;
import edu.hanu.clinicManagementSystem.service.admin.SaleOrderService;
import edu.hanu.clinicManagementSystem.service.admin.UserService;

@Controller
public class AdminManageOrderController extends BaseController{
	@Autowired
	private MedicineService medicineService;
	@Autowired
	private UserService userService;
	@Autowired
	private SaleOrderService saleOrderService;
	
	@RequestMapping(value = { "/admin/order/cancel" }, method = RequestMethod.GET)
	public String cancelCart(final Model model, 
			   final HttpServletRequest request, 
			   final HttpServletResponse response
			   ) throws IOException {
		HttpSession session=request.getSession();
		session.setAttribute("cart", null);
		session.setAttribute("totalItems", 0);
		List<User> users = userService.findAllActive();
		
		model.addAttribute("users",users);
		return "admin/ManageUser";
	}
	
	@RequestMapping(value = { "admin/order/save" }, method = RequestMethod.POST)
	public String cartFinished(final Model model, 
								   final HttpServletRequest request, 
								   final HttpServletResponse response,RedirectAttributes redirectAttributes 
								   ) throws IOException {
		
		
		// Lấy thông tin khách hàng
	
		String customerId = request.getParameter("idCus");
		String customerFullName = request.getParameter("name");
		String customerEmail = request.getParameter("email");
		String customerPhone = request.getParameter("phone");
		String customerAddress = request.getParameter("address");
		String customerGender = request.getParameter("gender");
		String customerDob = request.getParameter("dob");
		String customerDescription = request.getParameter("description");
		
		
		String bamhuyet = request.getParameter("bamhuyet");
		String xoabop = request.getParameter("xoabop");
		String chamcuu = request.getParameter("chamcuu");
		String khac = request.getParameter("khac");
		
		String coefficient = request.getParameter("coefficient");
		String surcharge = request.getParameter("surcharge");

		// tạo hóa đơn + với thông tin khách hàng lấy được
		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setUserId(Integer.parseInt(customerId));
		saleOrder.setCustomerName(customerFullName);
		saleOrder.setCustomerEmail(customerEmail);
		saleOrder.setCustomerPhone(customerPhone);
		saleOrder.setCustomerAddress(customerAddress);
		saleOrder.setCustomerGender(customerGender);
		saleOrder.setCustomerDob(customerDob);
		saleOrder.setDescription(customerDescription);
		saleOrder.setCoefficient(Integer.parseInt(coefficient));
		saleOrder.setSurcharge(BigDecimal.valueOf(Integer.parseInt(surcharge)));
		
		saleOrder.setCode(String.valueOf(System.currentTimeMillis())); // mã hóa đơn

		// lấy giỏ hàng
		HttpSession session = request.getSession();
		Carts cart = (Carts) session.getAttribute("cart");
		// check xem sản phẩm còn trong tủ không
		for (CartItems cartItem : cart.getCartItems()) {
			
			Medicine medicineIndbs = medicineService.getById(cartItem.getProductId());
			if (medicineIndbs.getQuantity() .compareTo(BigDecimal.valueOf(cartItem.getQuanlity())
					.multiply(BigDecimal.valueOf(Integer.parseInt(coefficient)))) <0 ) {
//				model.addAttribute("WarningNotification","Sản phẩm: "+medicineIndbs.getName() +" không đủ");
				redirectAttributes.addFlashAttribute("WarningNotification","Sản phẩm: "+medicineIndbs.getName() +" không đủ");
				return "redirect:/admin/order/"+customerId;
				
			}
			
			
		}
//		double totalPriceOfCart=0;
		// lấy sản phẩm trong giỏ hàng
		double total = 0;
		for (CartItems cartItem : cart.getCartItems()) {
			SaleOrderProduct saleOrderProducts = new SaleOrderProduct();
			saleOrderProducts.setProducts(medicineService.getById(cartItem.getProductId()));
			saleOrderProducts.setQuanlity(cartItem.getQuanlity());
			saleOrderProducts.setTotalPrice(medicineService.getById(cartItem.getProductId()).getPrice().multiply(BigDecimal.valueOf(cartItem.getQuanlity())) );
			// sử dụng hàm tiện ích add hoặc remove đới với các quan hệ onetomany
			saleOrder.addSaleOrderProducts(saleOrderProducts);
			total = total+cartItem.getPriceUnit().doubleValue()*cartItem.getQuanlity();
			Medicine medicineIndbs = medicineService.getById(cartItem.getProductId());
//			medicineIndbs.setQuantity(medicineIndbs.getQuantity().subtract(BigDecimal.valueOf(cartItem.getQuanlity())));
			medicineIndbs.setQuantity(medicineIndbs.getQuantity()
										.subtract(BigDecimal.valueOf(cartItem.getQuanlity())
																		.multiply(BigDecimal.valueOf(Integer.parseInt(coefficient)))));
			
		}
		saleOrder.setTotalItemPrice(BigDecimal.valueOf(total));
		// mul to coefficient
		total =  total * Integer.parseInt(coefficient);
		//add surchagre to bill
		saleOrder.setTotal(BigDecimal.valueOf(total).add(BigDecimal.valueOf(Integer.parseInt(surcharge))));
		// lưu vào database
		saleOrderService.saveOrUpdate(saleOrder);
		
		// thực hiện reset lại giỏ hàng của Session hiện tại
		session.setAttribute("cart", null);
		session.setAttribute("totalItems", 0);
		redirectAttributes.addFlashAttribute("SuccessAlert","Đã lưu vào hồ sơ bệnh nhân");
		return "redirect:/admin/user"; // -> đường dẫn tới View.
		
	}
	
	@RequestMapping(value= {"admin/invoice/{id}"}, method =RequestMethod.GET )
	public String invoice(final ModelMap model, 
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("id")int id) throws IOException{		
		
		SaleOrder saleOrder = saleOrderService.getById(id);		
		model.addAttribute("saleOrder",saleOrder);
		return "/user/invoice";
	}
	
	@RequestMapping(value= {"/admin/order"}, method =RequestMethod.GET )
	public String orderForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
	
		List<Medicine> medicines = medicineService.findAllActive();		
		model.addAttribute("medicines",medicines);
		return "/admin/addOrder";
	}
	@RequestMapping(value= {"/admin/order/{id}"}, method = RequestMethod.GET )
	public String orderUser(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("id") int id
								   ) throws IOException {

		// lấy product trong db theo ID
		User userInDb = userService.getById(id);
		model.addAttribute("user", userInDb);
		
		List<Medicine> medicines = medicineService.findAllActive();		
		model.addAttribute("medicines",medicines);
		return "/admin/addOrder";
		
	}
	@RequestMapping(value = { "/addMedicineToOrder/{productId}" }, method = RequestMethod.GET)
	public String adminProductDetail(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("productId") int productId
								   ) throws IOException {
		HttpSession session=request.getSession();
		Carts cart=new Carts();
		session.setAttribute("cart",cart);
		// lấy product trong db theo ID
		Medicine productInDatabase = medicineService.getById(productId);
		model.addAttribute("Product", productInDatabase);
		session.setAttribute("totalItems", getTotalItems(request));
		session.setAttribute("totalPrice", formatCurrency(calculateTotalPrice(request)));

		return "common/user/detail_product";
		
	}
//	addMedicineToOrder
	@RequestMapping(value="/addMedicineToOrder/{productId}",method=RequestMethod.POST)
	public ResponseEntity< Map<String, Object>> addToCart(
															final Model model,
															final HttpServletRequest request, 
															final HttpServletResponse response,
															@ModelAttribute("Product") Medicine newProduct,
															@RequestBody CartItems newItem)throws IOException{
		model.addAttribute("Product", newProduct);
		
		HttpSession session=request.getSession();
		
		Carts cart=null;
		
		if(session.getAttribute("cart")!=null) {
			cart=(Carts)session.getAttribute("cart");
			
		}else {
			cart=new Carts();
			session.setAttribute("cart",cart);
		}
	
		List<CartItems> cartItems = cart.getCartItems();
		
//		BigDecimal total = BigDecimal.ZERO;
//		
//		for(CartItems ci : cartItems) {
//			total = total.add(ci.getPriceUnit().multiply(BigDecimal.valueOf(ci.getQuanlity()+1)));
//		}
//		cart.setTotalPrice(total);
		
		
		boolean isExist = false;
//		BigDecimal itemTotalPrice=BigDecimal.ZERO;
//		itemTotalPrice.add(itemTotalPrice)
		for(CartItems item:cartItems) {
			if(item.getProductId()==newItem.getProductId()) {
				isExist=true;
				item.setQuanlity(item.getQuanlity()+newItem.getQuanlity());
				
//				item.setToltalPriceItem(itemTotalPrice.add(BigDecimal.valueOf(item.getQuanlity()).multiply(newItem.getPriceUnit()))) ;
			}
		}
		for(CartItems ci:cartItems) {
			if(ci.getProductId()==newItem.getProductId()) {
				ci.setToltalPriceItem(ci.getPriceUnit().multiply(BigDecimal.valueOf(ci.getQuanlity())));
			}
		}
		
		if(!isExist) {
			Medicine productInDb=medicineService.getById(newItem.getProductId());
			
			newItem.setProductName(productInDb.getName());
			newItem.setPriceUnit(productInDb.getPrice());
//			newItem.setAvatar(productInDb.getAvatar());
//			newItem.setToltalPriceItem(BigDecimal.valueOf(cartItems.).multiply(newItem.getPriceUnit()));
			cart.getCartItems().add(newItem);
		}
		
		Map<String, Object>jsonResult=new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
		
	}
	@RequestMapping(value = { "/ajax/updateQuanlityCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_UpdateQuanlityCart(final Model model, 
																	   final HttpServletRequest request,
																	   final HttpServletResponse response, 
																	   final @RequestBody CartItems cartItem) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Carts cart = null;
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) {
			cart = (Carts) session.getAttribute("cart");
		} else {
			cart = new Carts();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItems> cartItems = cart.getCartItems();

		// kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		int currentProductQuality = 1;
//		System.out.println(cartItem.getProductId());
		for (CartItems item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				currentProductQuality =  cartItem.getQuanlity();
				if(currentProductQuality<0) {
					currentProductQuality=0;
				}
				item.setQuanlity(currentProductQuality);				
			}
		}
		//tính tổng tiền của một Item
		BigDecimal totalPriceItem=BigDecimal.ZERO;
		for (CartItems item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				totalPriceItem =totalPriceItem.add(BigDecimal.valueOf(item.getQuanlity()).multiply(item.getPriceUnit()));		
				item.setToltalPriceItem(totalPriceItem);
			}
		}
		
		// tính tổng tiền
		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("currentPriceItem",formatCurrency(totalPriceItem) ) ;
		jsonResult.put("currentProductQuality", currentProductQuality);
		jsonResult.put("totalPrice", formatCurrency(calculateTotalPrice(request)));
		
		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	@RequestMapping(value = { "/ajax/updateCoefficentCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_UpdateCoefficentCart(final Model model, 
																	   final HttpServletRequest request,
																	   final HttpServletResponse response, 
																	   final @RequestBody Carts cartRequest) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Carts cart = null;
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) {
			cart = (Carts) session.getAttribute("cart");
		} else {
			cart = new Carts();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItems> cartItems = cart.getCartItems();

		// kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		int currentProductQuality = 1;
		
		cart.setCoefficient(cartRequest.getCoefficient());
		cart.setSurcharge(cartRequest.getSurcharge());
			
		// tính tổng tiền
		BigDecimal totalPriceItem = this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("currentPriceItem",formatCurrency(totalPriceItem) ) ;
		jsonResult.put("currentProductQuality", currentProductQuality);
		jsonResult.put("totalPrice", formatCurrency(calculateTotalPrice(request)));
		
		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	@RequestMapping(value = { "/ajax/deleteItemCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_DeleteItemCart(final Model model, 
																	   final HttpServletRequest request,
																	   final HttpServletResponse response, 
																	   final @RequestBody CartItems cartItem) throws Exception {
//		System.out.println(cartItem.getProductId());
		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Carts cart = null;
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) {
			cart = (Carts) session.getAttribute("cart");
		} else {
			cart = new Carts();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItems> cartItems = cart.getCartItems();

		// kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		int count = 0;
//		System.out.println(cartItem.getProductId());
		try {
			for (CartItems item : cartItems) {
				if (item.getProductId() == cartItem.getProductId()) {
						cartItems.remove(count);
				}
				count=count++;
			}
			cart.setCartItems(cartItems);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
//		
		

		// tính tổng tiền
		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
//		jsonResult.put("currentProductQuality", currentProductQuality);
		jsonResult.put("totalPrice", formatCurrency(calculateTotalPrice(request)));

		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Carts cart = (Carts) httpSession.getAttribute("cart");
		List<CartItems> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItems item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}
	
	
	private String formatCurrency(BigDecimal value) {
		Locale loc = new Locale("vi", "VN");
	    NumberFormat nf = NumberFormat.getCurrencyInstance(loc);
	    return nf.format(value);
	}
	private BigDecimal calculateTotalPrice(final HttpServletRequest request) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Carts cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Carts) session.getAttribute("cart");
		} else {
			cart = new Carts();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItems> cartItems = cart.getCartItems();
		BigDecimal total = BigDecimal.ZERO;
		
		for(CartItems ci : cartItems) {
			total = total.add(ci.getPriceUnit().multiply(BigDecimal.valueOf(ci.getQuanlity())));
		}
		total = total.multiply(BigDecimal.valueOf(cart.getCoefficient()));
		total = total.add(cart.getSurcharge());
		
		
		cart.setTotalPrice(total);
		
		return total;
	}
	
	
}
