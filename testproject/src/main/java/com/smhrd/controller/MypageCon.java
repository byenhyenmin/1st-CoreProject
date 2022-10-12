package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.smhrd.model.MypageDAO;
import com.smhrd.model.MypageDTO;

public class MypageCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		MypageDAO dao = new MypageDAO();
		String mypage_id =  request.getParameter("mem_id");
		
		
		ArrayList<MypageDTO> list = dao.MypageSelectAll(mypage_id);
		
	
		request.setAttribute("mylist",list);
		
		return "mypage_bookmark";
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
