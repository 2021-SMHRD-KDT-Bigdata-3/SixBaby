package com.smhrd.mapper;

import java.util.List;

public interface Mapper {
	
	//1. ȸ������,����,Ż��
	public void memberInsert(MemberVO vo);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	//2. �α���
	public void login(MemberVO vo);
}
