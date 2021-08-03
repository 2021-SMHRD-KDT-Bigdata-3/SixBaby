package com.smhrd.mapper;

import lombok.Data;

@Data
public class CommentsVO {
	private int comment_no;
	private String category;
	private String nickname;
	private String comments;
	private String likes;
	
}
