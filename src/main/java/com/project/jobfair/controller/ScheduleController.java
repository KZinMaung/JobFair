package com.project.jobfair.controller;

import java.sql.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.jobfair.dao.postJobDao;
import com.project.jobfair.dao.scheduleDao;
import com.project.jobfair.model.postJob;
import com.project.jobfair.model.schedule;
@Controller
public class ScheduleController {
	@RequestMapping(value = "/postSchedule", method = RequestMethod.POST)
	public String viewResult(Model m1, schedule schedule) {
		 //postJob pj=new postJob();
		scheduleDao dao=new scheduleDao();
		System.out.println(schedule.getSdate_time());
		System.out.println(schedule.getLocation());
	
		int pj = dao.postSchedule(schedule.getLocation(), schedule.getLocation());
		
		System.out.println(pj);
		// m1.addAttribute("pj", pj);
		
		System.out.println("OK ");
		return "redirect:/company-page";
	}

}
