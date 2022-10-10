package com.smhrd.model;

public class MypageDTO {
	// table에 있는 column명이랑 동일해야 mybatis가 찾을 수 있다.
		// el에서 사용할 때도 오타 주의할 것!!!!!!!
	private String MYPAGE_SEQ;
	private String  mypage_id;
	private String  shop_id;
	private String  shop_img;
	private String  shop_name;
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	
	
	public String getMYPAGE_SEQ() {
		return MYPAGE_SEQ;
	}
	public void setMYPAGE_SEQ(String mYPAGE_SEQ) {
		MYPAGE_SEQ = mYPAGE_SEQ;
	}
	public String getMypage_id() {
		return mypage_id;
	}
	public void setMypage_id(String mypage_id) {
		this.mypage_id = mypage_id;
	}
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getShop_img() {
		return shop_img;
	}
	public void setShop_img(String shop_img) {
		this.shop_img = shop_img;
	}
	
	
	
	
}
