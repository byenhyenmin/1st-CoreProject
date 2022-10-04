package com.smhrd.model;

public class Join {

	private String mem_id;
	private String mem_pw;
	private String mem_birthdate;
	private String mem_gender;
	private String mem_joindate;
	private String mem_type;
	
	public Join() {
		
	}

	public Join(String mem_id, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_birthdate() {
		return mem_birthdate;
	}
	public void setMem_birthdate(String mem_birthdate) {
		this.mem_birthdate = mem_birthdate;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_joindate() {
		return mem_joindate;
	}
	public void setMem_joindate(String mem_joindate) {
		this.mem_joindate = mem_joindate;
	}
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	

	
	
	
	
	
	
	
}
