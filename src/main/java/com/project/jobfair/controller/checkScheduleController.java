package com.project.jobfair.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class checkScheduleController {
	@RequestMapping("/checkSchedule")
	public String toAdminPage() {
		return "checkSchedule";
	}
}
