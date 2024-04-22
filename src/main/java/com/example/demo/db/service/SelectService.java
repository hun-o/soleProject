package com.example.demo.db.service;

import java.util.List;

import com.example.demo.db.vo.SelectVO;

public interface SelectService {
	
	public List<SelectVO> selectContentList(SelectVO selectVO) throws Exception;
	public List<SelectVO> selectDetailList(SelectVO selectVO) throws Exception;
}
