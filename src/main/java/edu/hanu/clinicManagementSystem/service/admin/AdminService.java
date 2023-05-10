package edu.hanu.clinicManagementSystem.service.admin;

import org.springframework.stereotype.Service;



import edu.hanu.clinicManagementSystem.entities.admin.Admin;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.service.BaseService;

@Service
public class AdminService extends BaseService<Admin> {
	@Override
	protected Class<Admin> clazz() {
		// TODO Auto-generated method stub
		return Admin.class;
	}
	
	public Admin loadUserByUsername(String userName) {
		String sql = "select * from admin u where u.username = '" + userName + "' and status = 1";
		return this.getEntityByNativeSQL(sql);
	}
}
