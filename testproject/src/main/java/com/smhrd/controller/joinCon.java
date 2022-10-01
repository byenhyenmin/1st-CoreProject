package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Join;
import com.smhrd.model.JoinDAO;

public class joinCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("userId");
		String mem_pw = request.getParameter("userPW");
		// 비밀번호 재확인, 이름
		String mem_birthdate = request.getParameter("birth");
		String mem_gender = request.getParameter("gender1");
	
		Join join = new Join();
		join.setMem_id(mem_id);
		join.setMem_pw(mem_pw);
		join.setMem_birthdate(mem_birthdate);
		join.setMem_gender(mem_gender);
		
		JoinDAO dao = new JoinDAO();
		dao.insert(join);
	
		System.out.println(join.getMem_id()+"아이디");
		System.out.println(join.getMem_birthdate()+"생일");
		
		
		System.out.println("회원가입성공");
		
		
		return "main";
	}

}
