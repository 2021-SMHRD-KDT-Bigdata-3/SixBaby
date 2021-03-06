package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface Mapper {
	
	//1. 회원가입, 회원수정, 회원탈퇴
	public void memberInsert(MemberVO vo);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	// 1-1. 아기 추가, 확인
	public void babyInsert(BabyVO vo);
	public List<BabyVO> babyView(String id);
		
	//2. 로그인
	public MemberVO login(MemberVO vo);
	
	//3. 커뮤니티(전체, 열람, 작성, 수정, 삭제)
	public List<BoardsVO> boardList();// select~ SQL
	public List<BoardsVO> itemList();// select~ SQL
	public List<BoardsVO> helpList();// select~ SQL
	public List<BoardsVO> tipList();// select~ SQL
	public BoardsVO boardContent(int board_no); // select~where~ SQL
	public void boardInsert(BoardsVO vo); // insert~ SQL	
	public void boardUpdate(BoardsVO vo); // update~ SQL
	public void boardDelete(int board_no);
	
	//4. 댓글(열람, 작성, 삭제)
	public List<CommentsVO> commentList(int board_no);
	public void commentInsert(CommentsVO vo);
	public void commentDelete(int comment_no);
	
	//5. 육아일기
	public List<DiaryVO> diaryContent(DiaryVO vo);
	public DiaryVO diaryDetail(int diary_no);
	public void diaryInsert(DiaryVO vo);
	public void diaryUpdate(DiaryVO vo);
	
	//6. 울음소리 분석(아기상태 삽입, 확인, 해결책 확인)
	public void babyconditionCheck(BabyconditionVO vo);
	public SolutionVO cryAnalysis();
}
