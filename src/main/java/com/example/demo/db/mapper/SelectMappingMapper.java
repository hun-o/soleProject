package com.example.demo.db.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SelectMappingMapper {
	public String selectMappingPageUrl(String seq) throws Exception;
}
