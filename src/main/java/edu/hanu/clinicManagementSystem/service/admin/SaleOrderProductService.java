package edu.hanu.clinicManagementSystem.service.admin;

import org.springframework.stereotype.Service;

import edu.hanu.clinicManagementSystem.dto.user.SaleOrderProduct;
import edu.hanu.clinicManagementSystem.service.BaseService; 



@Service
public class SaleOrderProductService extends BaseService<SaleOrderProduct> {

	@Override
	protected Class<SaleOrderProduct> clazz() {
		// TODO Auto-generated method stub
		return SaleOrderProduct.class;
	}

}
