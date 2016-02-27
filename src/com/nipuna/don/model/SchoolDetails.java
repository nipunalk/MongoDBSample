package com.nipuna.don.model;


import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class SchoolDetails {	
	private String schoolName;
	
	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	@Override
	public String toString() {
		return "{\"schoolName\":\"" + schoolName + "\"}";
	}

	
}
