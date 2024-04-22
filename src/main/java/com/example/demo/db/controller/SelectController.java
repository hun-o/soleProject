package com.example.demo.db.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.db.service.SelectService;
import com.example.demo.db.vo.SelectVO;

@RestController
@RequestMapping(value="/list")
public class SelectController {
	
	@Autowired
	private SelectService selectService;
	
	@RequestMapping(value = "/resultList.do", method = RequestMethod.GET)
	public HashMap<String, Object> selectContentList(SelectVO selectVO) throws Exception{
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<SelectVO> resultList = new ArrayList<SelectVO>();
		System.out.println("/list/resultList.do");
		resultList = selectService.selectContentList(selectVO);
		resultMap.put("success", resultList);
		return resultMap;
	}
	
	@RequestMapping(value = "/resultDetailList.do", method = RequestMethod.GET)
	public HashMap<String, Object> selectDetailList(@RequestParam("seq") String seq,SelectVO selectVO) throws Exception{
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<SelectVO> resultList = new ArrayList<SelectVO>();
		System.out.println("/list/resultDetailList.do");
		
		String seqValue = seq.split("=")[1];
		selectVO.setSeq(seqValue);
		
		resultList = selectService.selectDetailList(selectVO);
		resultMap.put("success", resultList);
		return resultMap;
	}
	
}
