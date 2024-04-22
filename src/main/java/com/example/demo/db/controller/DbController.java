package com.example.demo.db.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.db.service.DbService;

@RestController
public class DbController {
	
	@Autowired
	private DbService dbservice;
	
	
	@GetMapping("/mysql")
	public String mysql_connection() throws Exception{
		String resultString = "";
		try {
			System.out.println("controller 실행");
			resultString = dbservice.selectTestTB();
			System.out.println(resultString);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultString;
	}
}
