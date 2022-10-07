package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class selectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("selectallcon");
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardDTO> list = dao.selectAll();
		
		
		request.setAttribute("list",list);
		
		return "community";
		
		
		
		
	}

}
