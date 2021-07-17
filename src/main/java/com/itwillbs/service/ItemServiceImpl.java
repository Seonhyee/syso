package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ItemDAO;
import com.itwillbs.domain.ItemVO;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Inject
	private ItemDAO dao;

	@Override
	public List<ItemVO> getItem() throws Exception {
		return dao.getItem();
	}

	@Override
	public List<ItemVO> infiniteScrollDown(ItemVO itemVO) {
		return dao.infiniteScrollDown(itemVO);
	}

}
