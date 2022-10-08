package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.MemberDAO;

public class joinCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("userId");
		String mem_pw = request.getParameter("userPw");
		String mem_birthdate = request.getParameter("birth");
		String mem_gender = request.getParameter("gender");
	
		MemberDTO join = new MemberDTO();
		join.setMem_id(mem_id);
		join.setMem_pw(mem_pw);
		join.setMem_birthdate(mem_birthdate);
		join.setMem_gender(mem_gender);
		
		MemberDAO dao = new MemberDAO();
		int row = dao.insert(join);
	
		
		if(row > 0) {
			return "main";
			
		}else {
			System.out.println("회원가입실패");
			return "redirect:/joinCon.do";
		}
		
		
		
	}

}
