package com.example.demo.db.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DbMapper {
	
	public String selectTestTB() throws Exception;
	
}
