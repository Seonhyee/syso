package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberVO;



@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace ="com.itwillbs.itemMapper";


	@Override
	public void memberJoin(MemberVO vo) {
		System.out.println("멤퍼 dao");
			sqlSession.insert(namespace+".join",vo);
	}


	@Override
	public void updateAuthkey(MemberVO vo) {
		
		System.out.println("맵퍼 인증키 업데이트");
		sqlSession.update(namespace+".authkey", vo);
	}


	@Override
	public void updateAuthstatus(MemberVO vo) {
		System.out.println("맵퍼 인증 완료 업데이트");
		sqlSession.update(namespace+".authstatus", vo);

	}

}
