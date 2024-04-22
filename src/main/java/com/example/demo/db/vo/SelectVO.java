package com.example.demo.db.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SelectVO {
	private String seq;
	private String title;
	private String content;
	private String selectCount;
	private String insertDate;
	private String pageUrl;
	private String contentComment;
}
