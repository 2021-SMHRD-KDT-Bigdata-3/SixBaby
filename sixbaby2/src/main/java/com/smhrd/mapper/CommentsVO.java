package com.smhrd.mapper;

import lombok.Data;

@Data
public class CommentsVO {
	private int comment_no;
	private String board_no;
	private String nickname;
	private String contents;
	private String likes;
	
}
