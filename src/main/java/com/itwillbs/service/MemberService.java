package com.itwillbs.service;

import com.itwillbs.domain.MemberVO;

public interface MemberService {
	
	public void memberJoinProcess(MemberVO vo);

	public void updateAuthstatus(MemberVO vo);
}
