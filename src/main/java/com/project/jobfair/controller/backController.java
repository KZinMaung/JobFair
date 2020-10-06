package com.project.jobfair.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class backController {
	@RequestMapping("/back")
	public String toAdminPage() {
		return "adminPage";
	}
}
