package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Join;

public class joinCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("id");
		String mem_pw = request.getParameter("pw");
		// 비밀번호 재확인, 이름
		String mem_birthdate = request.getParameter("birth");
		String mem_gender = request.getParameter("gender");
	
		Join mst = new Join();
		mst.setMem_id(mem_id);
		mst.setMem_pw(mem_pw);
		mst.setMem_birthdate(mem_birthdate);
		mst.setMem_gender(mem_gender);
		
		
		
		
		return "main";
	}

}
