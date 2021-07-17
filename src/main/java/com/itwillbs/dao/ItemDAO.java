package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.ItemVO;

public interface ItemDAO {
	
	public List<ItemVO> getItem() throws Exception;

	public List<ItemVO> infiniteScrollDown(ItemVO itemVO);
	
}
