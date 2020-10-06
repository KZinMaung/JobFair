package com.project.jobfair.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobfair.dao.eventDao;
import com.project.jobfair.model.Event;

@Controller
public class EventController {
	@RequestMapping(value ="/Event",method=RequestMethod.GET)
	public ModelAndView displayEvents() throws ParseException {
		eventDao eventdao=new eventDao();
		List<Event> events = eventdao.readEvents();
		System.out.println(events);
		ModelAndView modelAndView = new ModelAndView("incomingEvents");
		modelAndView.addObject("events",events);
		return modelAndView;
}
	
	@RequestMapping(value ="/EventHistory",method=RequestMethod.GET)
	public ModelAndView displayEventHistory() throws ParseException {
		eventDao eventdao=new eventDao();
		List<Event> eventHistory = eventdao.readEventHistory();
		System.out.println(eventHistory);
		ModelAndView modelAndView = new ModelAndView("EventHistory");
		modelAndView.addObject("eventHistory",eventHistory);
		return modelAndView;
}	
	

}