package com.smhrd.mapper;

import java.util.List;

public interface Mapper {
	
	//1. 회원가입, 회원수정, 회원탈퇴
	public void memberInsert(MemberVO vo);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	//2. 로그인
	public void login(MemberVO vo);
	
	//3. 커뮤니티(전체, 열람, 작성, 수정, 삭제)
	public List<BoardsVO> boardList();// select~ SQL
	public BoardsVO boardContent(int board_no); // select~where~ SQL
	public void boardInsert(BoardsVO vo); // insert~ SQL	
	public void boardUpdate(BoardsVO vo); // update~ SQL
	public void boardDelete(int board_no);
	
	//4. 댓글(열람, 작성, 수정, 삭제)
	public List<CommentsVO> commentList();
	public void commentInsert(CommentsVO vo);
	public void commentUpdate(CommentsVO vo);
	public void commentDelete(int comment_no);
	
	//5. 육아일기
	public DiaryVO diaryContent(int diary_no);
	public void diaryInsert(DiaryVO vo);
	public void diaryUpdate(DiaryVO vo);
}
