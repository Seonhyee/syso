package com.itwillbs.dao;

import com.itwillbs.domain.MemberVO;

public interface MemberDAO {

	public void memberJoin(MemberVO vo);

	public void updateAuthkey(MemberVO vo);

	public void updateAuthstatus(MemberVO vo);
}
