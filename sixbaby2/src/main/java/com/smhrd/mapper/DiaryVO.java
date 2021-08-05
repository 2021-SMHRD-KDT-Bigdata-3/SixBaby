package com.smhrd.mapper;

import lombok.Data;

@Data
public class DiaryVO {
	private int diary_no;
	private int baby_no;
	private String title;
	private String contents;
	private String diary_date;
	private String picture;
}
