package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;



public class selectOneCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String board_num = request.getParameter("boardnum");
		
		BoardDAO dao = new BoardDAO();
		
		BoardDTO board = dao.selectOne(board_num);
		
		request.setAttribute("board", board);
		
		return "comm_update";
	}

}
