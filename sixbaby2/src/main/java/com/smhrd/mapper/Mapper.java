package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface Mapper {
	
	//1. ȸ������, ȸ������, ȸ��Ż��
	public void memberInsert(MemberVO vo);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	//2. �α���
	public MemberVO login(MemberVO vo);
	
	//3. Ŀ�´�Ƽ(��ü, ����, �ۼ�, ����, ����)
	public List<BoardsVO> boardList();// select~ SQL
	public List<BoardsVO> itemList();// select~ SQL
	public List<BoardsVO> helpList();// select~ SQL
	public List<BoardsVO> tipList();// select~ SQL
	public BoardsVO boardContent(int board_no); // select~where~ SQL
	public void boardInsert(BoardsVO vo); // insert~ SQL	
	public void boardUpdate(BoardsVO vo); // update~ SQL
	public void boardDelete(int board_no);
	
	//4. ���(����, �ۼ�, ����, ����)
	public List<CommentsVO> commentList();
	public void commentInsert(CommentsVO vo);
	public void commentUpdate(CommentsVO vo);
	public void commentDelete(int comment_no);
	
	//5. �����ϱ�
	public List<DiaryVO> diaryContent(DiaryVO vo);
	public DiaryVO diaryDetail(int diary_no);
	public void diaryInsert(DiaryVO vo);
	public void diaryUpdate(DiaryVO vo);
}
