package com.project.jobfair.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobfair.dao.companyDao;
import com.project.jobfair.model.company;

@Controller
public class adTotalComMemController {
	private companyDao cdao=new companyDao();
	@RequestMapping(value ="/totalComMembers",method=RequestMethod.GET)
	public ModelAndView displayCompanies() {
		
		List<company> c = cdao.readCompanies();
		System.out.println(c);
		ModelAndView modelAndView = new ModelAndView("totalComMembers1");
		modelAndView.addObject("companies", c);
		return modelAndView;
	}

}
