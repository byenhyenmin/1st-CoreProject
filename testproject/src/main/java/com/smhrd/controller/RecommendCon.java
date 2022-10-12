package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.RecommendDAO;
import com.smhrd.model.RecommendDTO;

public class RecommendCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("mem_id");
		
		RecommendDAO dao = new RecommendDAO();
		RecommendDTO list = dao.selectOne(mem_id);
		
		request.setAttribute("recommend", list);
		
		
		return "main";
	}

}
