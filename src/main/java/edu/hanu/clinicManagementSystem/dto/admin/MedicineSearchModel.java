package edu.hanu.clinicManagementSystem.dto.admin;

import edu.hanu.clinicManagementSystem.dto.BaseSearchModel;

public class MedicineSearchModel  extends BaseSearchModel{
	private String keyword;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
}
