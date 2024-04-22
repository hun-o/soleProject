package com.example.demo.db.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.db.vo.SelectVO;

@Mapper
public interface SelectMapper {
	
	public List<SelectVO> selectContentList(SelectVO selectVO) throws Exception;
	public List<SelectVO> selectDetailList(SelectVO selectVO) throws Exception;
}
