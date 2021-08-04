package com.smhrd.mapper;

import lombok.Data;

@Data
public class BoardsVO {
	private int board_no;
	private String category;
	private String title;
	private String nickname;
	private String picture;
	private String contents;
	private String indate;
}
