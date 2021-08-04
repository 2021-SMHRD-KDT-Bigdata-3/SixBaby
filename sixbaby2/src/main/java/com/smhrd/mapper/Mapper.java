package com.smhrd.mapper;

import java.util.List;

public interface Mapper {
	
	//1. È¸¿ø°¡ÀÔ,¼öÁ¤,Å»Åð
	//public void memberInsert(MemberVO vo1, BabyVO vo2);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	//2. ·Î±×ÀÎ
	public void login(MemberVO vo);
	
	//3. Ä¿¹Â´ÏÆ¼
	public List<BoardsVO> boardList();// select~ SQL
	public void boardInsert(BoardsVO vo); // insert~ SQL	
	public BoardsVO boardContent(int board_no); // select~where~ SQL
	public void boardUpdate(BoardsVO vo); // update~ SQL
	public void boardDelete(int board_no);
	
	//4. ´ñ±Û
	public List<CommentsVO> commentList();
	public void commentInsert(CommentsVO vo);
	public void commentUpdate(CommentsVO vo);
	public void commentDelete(int comment_no);
	
	//5. À°¾ÆÀÏ±â
	public DiaryVO diaryContent(int diary_no);
	public void diaryInsert(DiaryVO vo);
	public void diaryUpdate(DiaryVO vo);
}
