package edu.hanu.clinicManagementSystem.service.user;


import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.hanu.clinicManagementSystem.service.admin.AdminService;
import edu.hanu.clinicManagementSystem.service.admin.UserService;

//import com.home.shop3.entities.user.UserEntity;
//import com.home.shop3.service.BaseService;
@Service
public  class AccountDetailServiceImpl implements UserDetailsService {
	@Autowired
	private AdminService adminService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// connect tới db và lấy user theo username
		
		
		return adminService.loadUserByUsername(username);
	}
}
