package com.smhrd.model;

public class BoardDTO {
	// table에 있는 column명이랑 동일해야 mybatis가 찾을 수 있다.
	// el에서 사용할 때도 오타 주의할 것!!!!!!!
	private String board_title;
	private String board_content;
	private String board_mem_id;
	private String board_wd;
	private String board_num;
	private String board_image;
	
	
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_mem_id() {
		return board_mem_id;
	}
	public void setBoard_mem_id(String board_mem_id) {
		this.board_mem_id = board_mem_id;
	}
	public String getBoard_wd() {
		return board_wd;
	}
	public void setBoard_wd(String board_wd) {
		this.board_wd = board_wd;
	}
	public String getBoard_num() {
		return board_num;
	}
	public void setBoard_num(String board_num) {
		this.board_num = board_num;
	}
	public String getBoard_image() {
		return board_image;
	}
	public void setBoard_image(String board_image) {
		this.board_image = board_image;
	}
	
	
	
}
