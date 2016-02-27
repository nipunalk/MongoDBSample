package com.nipuna.don.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.BasicQuery;
import org.springframework.stereotype.Repository;

import com.kapila.silwathge.model.School;

@Repository
public class SchoolService {
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "school";
	
	
	public List<School> listSchoolBySubject(String subject) {
			BasicQuery query = new BasicQuery("{ subject : '"+subject.trim()+"'}");			
			return mongoTemplate.find(query,School.class, COLLECTION_NAME);
	}
	public List<School> listSchoolAll() {				
		return mongoTemplate.findAll(School.class, COLLECTION_NAME);
	}
	
	
	
}
