package com.smhrd.mapper;

import lombok.Data;

@Data
public class DiaryVO {
	private String id;
	private int diary_no;
	private int baby_no;
	private String title;
	private String contents;
	private String diary_data;
	private String picture;
}
