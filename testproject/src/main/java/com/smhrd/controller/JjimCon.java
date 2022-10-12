package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.JjimDAO;
import com.smhrd.model.JjimDTO;
import com.smhrd.model.MypageDAO;
import com.smhrd.model.MypageDTO;

public class JjimCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("찜콘입니다^^");
		String mypage_id = request.getParameter("mem_id");
		String shop_id = request.getParameter("shop_cd");

		JjimDTO dto = new JjimDTO(mypage_id, shop_id);
		JjimDAO dao = new JjimDAO();
		
		dao.insert(dto);
		
		return "redirect:/MypageCon.do?mem_id="+mypage_id;
		
	}

}
