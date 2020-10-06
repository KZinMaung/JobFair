package com.project.jobfair.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobfair.dao.ApplyedStudentsDao;
import com.project.jobfair.dao.companyDao;
import com.project.jobfair.model.company;
import com.project.jobfair.model.student;

@Controller
public class ApplyedStudentsController {
	private companyDao cdao=new companyDao();
	private ApplyedStudentsDao appliedStds=new ApplyedStudentsDao();
	
	@RequestMapping(value ="/ApplyedStudents",method=RequestMethod.GET)
	public ModelAndView displayCompanyNames() {
		
		List<company> c = cdao.readCompanies();
		System.out.println(c);
		ModelAndView modelAndView = new ModelAndView("selectComForAppliedStds");
		modelAndView.addObject("companies", c);
		return modelAndView;
	}
	
	
	
	@RequestMapping(value ="/viewAppliedStds",method=RequestMethod.GET)
	public ModelAndView displayAppliedStds(company com) {
		List<student> appliedStudents=appliedStds.readAppliedStudents(com);
		ModelAndView modelAndView = new ModelAndView("appliedStudents");
		modelAndView.addObject("appliedStudents", appliedStudents);
		return modelAndView;
		
	}
	
}
