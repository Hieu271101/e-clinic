package edu.hanu.clinicManagementSystem.service.admin;

import java.io.File;
import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.service.BaseService;

@Service
public class MedicineService  extends BaseService<Medicine>{

	@Override
	protected Class<Medicine> clazz() {
		// TODO Auto-generated method stub
		return Medicine.class;
	}
	
	@Transactional
	public Medicine add(Medicine p)
			throws IllegalStateException, IOException {

		return super.saveOrUpdate(p);
		
	}
	
	@Transactional
	public Medicine update(Medicine p)
			throws IllegalStateException, IOException {
		
		
		return super.saveOrUpdate(p);
	}

}
