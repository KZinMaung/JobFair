package com.project.jobfair.controller;

import org.springframework.stereotype.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.jobfair.dao.*;
import com.project.jobfair.model.postJob;

@Controller
public class JobController {
	
	@RequestMapping("/company-page")
	public String toCompanyPage() {
		return "companyPage";
	}
	
	@RequestMapping(value = "/postJob", method = RequestMethod.POST)
	public String viewResult(Model m1, postJob postJob) {
		 //postJob pj=new postJob();
		postJobDao dao = new postJobDao();
		System.out.println(postJob.getJobTitle());
		System.out.println(postJob.getNoOfOpening());
		System.out.println(postJob.getSalary());
		System.out.println(postJob.getRequirement());
		System.out.println(postJob.getDescription());
		int pj = dao.pJob(postJob.getJobTitle(), postJob.getNoOfOpening(), postJob.getSalary(),
				postJob.getRequirement(), postJob.getDescription());
		System.out.println(postJob);
		System.out.println(pj);
		// m1.addAttribute("pj", pj);
		
		System.out.println("OK ");
		return "redirect:/company-page";
	}

}
