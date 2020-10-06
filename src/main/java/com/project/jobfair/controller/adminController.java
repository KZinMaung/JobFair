package com.project.jobfair.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class adminController {
	@RequestMapping("/admin-page")
	public String toAdminPage() {
		return "adminPage";
	}
}
