// this is AdminManagerUser class
package edu.hanu.clinicManagementSystem.controllers.admin;

public class AdminManageUser {
    @Autowired
    private UserService userService;


    @RequestMapping(value = "/admin/manageUser", method = RequestMethod.GET)
    public String manageUser(Model model, HttpServletRequest request, HttpServletResponse response) {
//        model.addAttribute("user", new User());
        return "admin/manageUser";
    }
}