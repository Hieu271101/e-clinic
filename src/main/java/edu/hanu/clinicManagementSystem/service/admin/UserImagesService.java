package edu.hanu.clinicManagementSystem.service.admin;

import org.springframework.stereotype.Service;

import edu.hanu.clinicManagementSystem.entities.admin.UserImages;
import edu.hanu.clinicManagementSystem.service.BaseService;


@Service
public class UserImagesService extends BaseService<UserImages> {
	@Override
	protected Class<UserImages> clazz() {
		// TODO Auto-generated method stub
		return UserImages.class;
	}
}
