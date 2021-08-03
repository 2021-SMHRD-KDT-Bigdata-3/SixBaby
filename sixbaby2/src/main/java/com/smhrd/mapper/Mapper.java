package com.smhrd.mapper;

import java.util.List;

public interface Mapper {
	
	//1. 회원가입,수정,탈퇴
	public void memberInsert(MemberVO vo);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	//2. 로그인
	public void login(MemberVO vo);
	
	//3. 커뮤니티
	public List<BoardsVO> boardList();// select~ SQL
	public void boardInsert(BoardsVO vo); // insert~ SQL	
	public BoardsVO boardContent(int board_no); // select~where~ SQL
	public void boardUpdate(BoardsVO vo); // update~ SQL
	public void boardDelete(int board_no);
}
