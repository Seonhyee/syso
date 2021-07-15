package com.itwillbs.domain;

public class ShopReviewBean {
	
	private int shopReview_idx;
	private String shop_member;
	private String shopReview_id;
	private int shopReview_star;
	private String shopReview_content;
	
	public int getShopReview_idx() {
		return shopReview_idx;
	}
	public void setShopReview_idx(int shopReview_idx) {
		this.shopReview_idx = shopReview_idx;
	}
	public String getShop_member() {
		return shop_member;
	}
	public void setShop_member(String shop_member) {
		this.shop_member = shop_member;
	}
	public String getShopReview_id() {
		return shopReview_id;
	}
	public void setShopReview_id(String shopReview_id) {
		this.shopReview_id = shopReview_id;
	}
	public int getShopReview_star() {
		return shopReview_star;
	}
	public void setShopReview_star(int shopReview_star) {
		this.shopReview_star = shopReview_star;
	}
	public String getShopReview_content() {
		return shopReview_content;
	}
	public void setShopReview_content(String shopReview_content) {
		this.shopReview_content = shopReview_content;
	}

}
