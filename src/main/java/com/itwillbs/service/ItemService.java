package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.ItemVO;

public interface ItemService {
	public List<ItemVO> getItem() throws Exception;

	public List<ItemVO> infiniteScrollDown(ItemVO itemVO);
}
