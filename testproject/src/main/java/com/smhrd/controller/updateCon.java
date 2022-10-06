package com.smhrd.controller;

import java.util.stream.DoubleStream.DoubleMapMultiConsumer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class updateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String mem_id = request.getParameter("userId");
		String mem_pw = request.getParameter("userPw");
		
		MemberDTO dto = new MemberDTO(mem_id, mem_pw);
		
		MemberDAO dao = new MemberDAO();
		int row = dao.update(dto);
		
		if(row > 0) {
			System.out.println("비밀번호가 수정되었습니다.");
			return "redirect:/logout.do";
			
		}else {
			System.out.println("회원정보수정 오류!!");
			return "mypage_memberInfo";			
		}
	
		
		
	}

}
