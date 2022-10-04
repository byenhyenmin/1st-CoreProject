package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Join;
import com.smhrd.model.JoinDAO;

public class main_loginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("id");
		String mem_pw = request.getParameter("pw");
		
		JoinDAO dao = new JoinDAO();
		Join dto = new Join(mem_id, mem_pw);
		Join loginDto = dao.login(dto);
		
		if(loginDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginDto", loginDto);
			return "main_login";
			
		}else {
			return "main";
			
		}
					
	}
	

}
