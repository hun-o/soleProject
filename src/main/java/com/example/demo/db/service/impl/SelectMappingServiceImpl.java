package com.example.demo.db.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.db.mapper.SelectMappingMapper;
import com.example.demo.db.service.SelectMappingService;

@Service
public class SelectMappingServiceImpl implements SelectMappingService {
	
	@Autowired
	private SelectMappingMapper selectMappingMapper;

	@Override
	public String selectMappingPageUrl(String seq) throws Exception {
		
		String resultString = selectMappingMapper.selectMappingPageUrl(seq);
		
		return resultString;
	}

}
