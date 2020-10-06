package com.project.jobfair.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobfair.dao.companyDao;
import com.project.jobfair.db.comp;
import com.project.jobfair.model.company;

@Controller
public class approveCompaniesController {
	private companyDao cdao=new companyDao();
	@RequestMapping(value ="/approveCompanies",method=RequestMethod.GET)
	public ModelAndView displayCompaniesToApprove() {
		
		List<company> c = cdao.readCompaniesToApprove();
		System.out.println(c);
		ModelAndView modelAndView = new ModelAndView("CompaniesToApprove");
		modelAndView.addObject("companiesToApprove", c);
		return modelAndView;
	}
	
	@RequestMapping(value="/approveCompany/{comid}", method=RequestMethod.GET)
	public String approveCompany(@PathVariable("comid")Integer comId) {
		
		boolean approvedStatus=cdao.approveCompany(comId);
		System.out.println(approvedStatus);
		return "forward:/approveCompanies";
		//return "redirect:/CompaniesToApprove/";
		
	}
	
	
}
