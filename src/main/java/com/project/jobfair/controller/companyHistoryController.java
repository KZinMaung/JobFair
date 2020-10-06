package com.project.jobfair.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobfair.dao.companyDao;
import com.project.jobfair.model.company;

@Controller

public class companyHistoryController {
	private companyDao cdao=new companyDao();
	@RequestMapping(value ="/CompanyHistory",method=RequestMethod.GET)
	public ModelAndView displayCompanyHistory() {
		
		List<company> c = cdao.readCompanyHistory();
		System.out.println(c);
		ModelAndView modelAndView = new ModelAndView("companyHistory");
		modelAndView.addObject("companies", c);
		return modelAndView;
	}

}
