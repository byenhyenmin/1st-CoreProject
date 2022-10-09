package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;
import com.smhrd.model.MypageDAO;
import com.smhrd.model.MypageDTO;

public class MypageCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		MypageDAO dao = new MypageDAO();
		ArrayList<MypageDTO> list = dao.MypageSelectAll();
		
		
		request.setAttribute("list",list);
		
		return "mypage_bookmark";
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
