package com.project.jobfair.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.project.jobfair.dao.totalRegisteredStdsDao;
import com.project.jobfair.model.student;
@Controller
public class totalRegisteredStdsController {
	private totalRegisteredStdsDao stdDao=new totalRegisteredStdsDao();
	@RequestMapping(value ="/RegisteredStudents",method=RequestMethod.GET)
	public ModelAndView displayRegisteredStds() {
		
		List<student> registeredStds = stdDao.readRegisteredStds() ;
		System.out.println(registeredStds);
		ModelAndView modelAndView = new ModelAndView("totalRegisteredStds");
		modelAndView.addObject("registeredStds", registeredStds);
		return modelAndView;
	}

}
