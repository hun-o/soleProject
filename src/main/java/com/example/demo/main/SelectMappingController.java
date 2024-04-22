package com.example.demo.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/select")
public class SelectMappingController {

	@GetMapping("/list.do")
	public String root_select(Model model) throws Exception {
		System.out.println("list.do");
		return "select/select";
	}
	
	@GetMapping("/detail.do")
	public String detail_page(@RequestParam("seq") String seq) throws Exception {
		System.out.println("detail.do");
//		return "select/detail.do?seq="+ seq;
		return "select/detail";
	}
	
	@GetMapping("/map.do")
	public String map(Model model) throws Exception {
		System.out.println("map");
		return "select/map";
	}
}
