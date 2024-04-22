package com.example.demo.db.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.db.mapper.SelectMapper;
import com.example.demo.db.service.SelectService;
import com.example.demo.db.vo.SelectVO;

@Service
public class SelectServiceImpl implements SelectService {

	@Autowired
	private SelectMapper selectMapper;
	
	@Override
	public List<SelectVO> selectContentList(SelectVO selectVO) throws Exception {
		
		List<SelectVO> resultList = selectMapper.selectContentList(selectVO);
		
		return resultList;
	}
	
	@Override
	public List<SelectVO> selectDetailList(SelectVO selectVO) throws Exception {
		
		List<SelectVO> resultList = selectMapper.selectDetailList(selectVO);
		
		return resultList;
	}

}
