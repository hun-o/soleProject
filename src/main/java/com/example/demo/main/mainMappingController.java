package com.example.demo.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class mainMappingController {
	@GetMapping("/")
	public String main_root(Model model) throws Exception {
		return "redirect:/main.do";
	}

	@GetMapping("/main.do")
	public String root_test(Model model) throws Exception {
		System.out.println("메인화면");
		return "index";
	}

	@GetMapping("/demo")
	public String demo_test() throws Exception {
		return "demo test";
	}
	  
}
