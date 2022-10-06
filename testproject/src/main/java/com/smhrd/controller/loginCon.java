package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDTO;
import com.smhrd.model.MemberDAO;

public class loginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("id");
		String mem_pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(mem_id, mem_pw);
		MemberDTO loginDto = dao.login(dto);
		
		if(loginDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginDto", loginDto);
			return "main";
			
		}else {
			return "main";
			
		}
					
	}
	

}
