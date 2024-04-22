package com.example.demo.db.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.db.mapper.DbMapper;
import com.example.demo.db.service.DbService;

@Service
public class DbServiceImpl implements DbService {
	
	@Autowired
	private DbMapper dbmapper;
	
	@Override
	public String selectTestTB() throws Exception {
		String resultString = dbmapper.selectTestTB();
		return resultString;
	}
	
}
