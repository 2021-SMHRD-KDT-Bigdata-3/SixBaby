package com.smhrd.mapper;

import java.util.List;

public interface Mapper {
	
	//1. 회원가입,수정,탈퇴
	public void memberInsert(MemberVO vo);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(MemberVO vo);
	
	//2. 로그인
	public void login(MemberVO vo);
}
