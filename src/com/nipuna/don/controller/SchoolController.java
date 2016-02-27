package com.nipuna.don.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kapila.silwathge.service.SchoolService;
   
@Controller
@RequestMapping("api/schools")
public class SchoolController {  
   
	@Autowired
	private SchoolService schoolService;	
    @RequestMapping(value = "/{subject}", method = RequestMethod.GET)  
	public String getSchoolList(@PathVariable String subject,ModelMap model) { 
    	String searchtext= subject;
    	if(subject.equalsIgnoreCase("all")){
    		model.addAttribute("schoolList", schoolService.listSchoolAll());
    	}else{
    		model.addAttribute("schoolList", schoolService.listSchoolBySubject(subject));
    	}
        return "schoollist";  
    }  
    
}
