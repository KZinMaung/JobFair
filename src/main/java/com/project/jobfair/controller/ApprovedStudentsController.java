package com.project.jobfair.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobfair.dao.ApplyedStudentsDao;
import com.project.jobfair.dao.companyDao;
import com.project.jobfair.model.company;
import com.project.jobfair.model.student;

@Controller
public class ApprovedStudentsController {
	private companyDao cdao=new companyDao();
	private ApplyedStudentsDao approvedStdDao=new ApplyedStudentsDao();
	
	@RequestMapping(value ="/ApprovedStudents",method=RequestMethod.GET)
	public ModelAndView displayCompanyNames() {
		
		List<company> c = cdao.readCompanies();
		System.out.println(c);
		ModelAndView modelAndView = new ModelAndView("selectComForApprovedStds");
		modelAndView.addObject("companies", c);
		return modelAndView;
	}
	
	
	
	@RequestMapping(value ="/viewApprovedStds",method=RequestMethod.GET)
	public ModelAndView displayAppliedStds(company com) {
		List<student> approvedStudents=approvedStdDao.readApprovedStudents(com);
		ModelAndView modelAndView = new ModelAndView("approvedStds");
		modelAndView.addObject("approvedStds", approvedStudents);
		return modelAndView;
		
	}
}
