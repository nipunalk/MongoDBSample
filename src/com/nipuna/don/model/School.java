package com.nipuna.don.model;


import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class School {

	@Id
	private String id;	
	private SchoolDetails school;
	private String subject;
	private Double latestY3;
	private Double latestY5;
	private Double latestY7;
	private Double latestY9;
	private Double rawGainY3Y5;
	private Double factoredGainY3Y5;
	private Double glgY3Y5;
	private Double latestGainInGainY3Y5;
	
		
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	public SchoolDetails getSchool() {
		return school;
	}
	public void setSchool(SchoolDetails school) {
		this.school = school;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Double getLatestY3() {
		return latestY3;
	}
	public void setLatestY3(Double latestY3) {
		this.latestY3 = latestY3;
	}
	public Double getLatestY5() {
		return latestY5;
	}
	public void setLatestY5(Double latestY5) {
		this.latestY5 = latestY5;
	}
	public Double getLatestY7() {
		return latestY7;
	}
	public void setLatestY7(Double latestY7) {
		this.latestY7 = latestY7;
	}
	public Double getLatestY9() {
		return latestY9;
	}
	public void setLatestY9(Double latestY9) {
		this.latestY9 = latestY9;
	}
	public Double getRawGainY3Y5() {
		return rawGainY3Y5;
	}
	public void setRawGainY3Y5(Double rawGainY3Y5) {
		this.rawGainY3Y5 = rawGainY3Y5;
	}
	public Double getFactoredGainY3Y5() {
		return factoredGainY3Y5;
	}
	public void setFactoredGainY3Y5(Double factoredGainY3Y5) {
		this.factoredGainY3Y5 = factoredGainY3Y5;
	}
	public Double getGlgY3Y5() {
		return glgY3Y5;
	}
	public void setGlgY3Y5(Double glgY3Y5) {
		this.glgY3Y5 = glgY3Y5;
	}
	public Double getLatestGainInGainY3Y5() {
		return latestGainInGainY3Y5;
	}
	public void setLatestGainInGainY3Y5(Double latestGainInGainY3Y5) {
		this.latestGainInGainY3Y5 = latestGainInGainY3Y5;
	}
	@Override
	public String toString() {
		return "{\"school\":" + school + ", \"subject\":\""
				+ subject + "\", \"latestY3\":" + latestY3 + ", \"latestY5\":" + latestY5
				+ ", \"latestY7\":" + latestY7 + ", \"latestY9\":" + latestY9
				+ ", \"rawGainY3Y5\":" + rawGainY3Y5 + ", \"factoredGainY3Y5\":"
				+ factoredGainY3Y5 + ", \"glgY3Y5\":" + glgY3Y5
				+ ", \"latestGainInGainY3Y5\":" + latestGainInGainY3Y5 + "}";
	}
	
	
}

  
