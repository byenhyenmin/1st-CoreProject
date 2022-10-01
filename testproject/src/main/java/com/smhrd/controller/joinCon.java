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
		
		String mem_id = request.getParameter("userId");
		String mem_pw = request.getParameter("userPW");
		// 비밀번호 재확인, 이름
		String mem_birthdate = request.getParameter("birth");
		String mem_gender = request.getParameter("gender1");
	
		Join mst = new Join();
		mst.setMem_id(mem_id);
		mst.setMem_pw(mem_pw);
		mst.setMem_birthdate(mem_birthdate);
		mst.setMem_gender(mem_gender);
		
		
		System.out.println(mst.getMem_id()+"아이디");
		System.out.println(mst.getMem_birthdate()+"생일");
		System.out.println(mst.getMem_joindate()+"가입날짜");
		
		System.out.println("회원가입성공");
		
		
		return "main";
	}

}
