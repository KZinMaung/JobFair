package com.project.jobfair.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.jobfair.dao.registrationDao;
import com.project.jobfair.model.Admin;

@Controller
public class registrationController {
	private registrationDao regDAO = new registrationDao();
	
	
	
	@RequestMapping(value="/adminRegistration", method=RequestMethod.GET)
	public String addNewAdmin(@Valid @ModelAttribute("admin")Admin admin, 
		      BindingResult result) {
		
		regDAO.adminRegister(admin);
	
		return "redirect:/admin-page/#addNewAdmin";
	}

	
	
}
