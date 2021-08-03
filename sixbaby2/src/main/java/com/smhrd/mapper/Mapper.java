package com.smhrd.mapper;

import java.util.List;

public interface Mapper {
	
	//1. ȸ������,����,Ż��
	public void memberInsert(MemberVO vo);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	//2. �α���
	public void login(MemberVO vo);
	
	//3. Ŀ�´�Ƽ
	public List<BoardsVO> boardList();// select~ SQL
	public void boardInsert(BoardsVO vo); // insert~ SQL	
	public BoardsVO boardContent(int board_no); // select~where~ SQL
	public void boardUpdate(BoardsVO vo); // update~ SQL
	public void boardDelete(int board_no);
}
