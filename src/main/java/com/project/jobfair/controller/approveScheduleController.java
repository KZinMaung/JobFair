package com.project.jobfair.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobfair.dao.eventDao;
import com.project.jobfair.model.Event;

@Controller
public class approveScheduleController {
	eventDao eventdao=new eventDao();
	@RequestMapping(value ="/approveSchedule",method=RequestMethod.GET)
	public ModelAndView displayRequestedSchedule() throws ParseException {
		
		List<Event> requestedSchedules = eventdao.readRequestedSchedule();
		System.out.println(requestedSchedules);
		ModelAndView modelAndView = new ModelAndView("requestedSchedules");
		modelAndView.addObject("requestedSchedules",requestedSchedules);
		return modelAndView;
}

	@RequestMapping(value="/approveSchedule/{scheduleid}", method=RequestMethod.GET)
	public String approveCompany(@PathVariable("scheduleid")Integer scheduleId) {
		
		boolean approvedStatus=eventdao.approveShedule(scheduleId);
		System.out.println(approvedStatus);
		return "forward:/approveSchedule";
		//return "redirect:/CompaniesToApprove/";
		
	}
	
	
	
}
