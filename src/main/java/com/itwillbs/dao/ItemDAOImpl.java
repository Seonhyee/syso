package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ItemVO;

@Repository
public class ItemDAOImpl implements ItemDAO {
	
	private static final String namespace ="com.itwillbs.itemMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<ItemVO> getItem() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace +".getItem");
	}

	@Override
	public List<ItemVO> infiniteScrollDown(ItemVO itemVO) {
		
		return sqlSession.selectList(namespace+".infinite",itemVO);
	}

}
