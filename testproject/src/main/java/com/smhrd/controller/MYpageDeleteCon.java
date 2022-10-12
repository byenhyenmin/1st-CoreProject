package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MypageDAO;
import com.smhrd.model.MypageDTO;

public class MYpageDeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("delete 넘어오니?");
		String MYPAGE_SEQ = request.getParameter("MYPAGE_SEQ");
		String mypage_id = request.getParameter("mypage_id");



		
		
		
		MypageDAO dao = new MypageDAO();
		MypageDTO dto = new MypageDTO();
		
		
		int result = dao.delete(MYPAGE_SEQ);
		
		
		
		
		
		
		
		
		
		return "redirect:/MypageCon.do?mem_id="+mypage_id;
	}

}
